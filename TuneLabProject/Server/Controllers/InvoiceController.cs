using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TuneLabProject.Server.Models.DB;
using TuneLabProject.Shared.SharedModels;
using Newtonsoft.Json;
using System.Security.Claims;
using TuneLabProject.Server.Utilities;
using Microsoft.EntityFrameworkCore;

namespace TuneLabProject.Server.Controllers
{
    [Route("[controller]")]
    [ApiController]
    [Authorize]
    public class InvoiceController : ControllerBase
    {

        private readonly TuneLabContext _context;

        public InvoiceController(TuneLabContext context)
        {
            _context = context;
        }

        //SS 10/04 GET Method for returning an invoice by id
        [Route("GetInvoice")]
        public string GetInvoice([FromQuery]int invoiceId)
        {
            //Create response
            InvoiceResponse response = new InvoiceResponse();

            try
            {
                //Get the current user
                string id = User.FindFirstValue(ClaimTypes.NameIdentifier);

                List<Invoice> invoices = new List<Invoice>();

                //Try to find an invoice matching the user's id and the supplied invoice id
                Invoice invoice = _context.Invoice
                    .Include(i => i.InvoiceProduct)
                    .ThenInclude(ip => ip.Product)
                    .Where(i => i.InvoiceId == invoiceId && i.UserId.Equals(id))
                    .FirstOrDefault();

                //If invoice was found, add to the list in the response, otherwise set the error message
                if(invoice != null)
                {
                    invoices.Add(invoice);
                    response.Invoices = invoices;
                    response.Success = true;
                }
                else
                {
                    response.Success = false;
                    response.ErrorMessage = "This invoice does not exist!";
                }               

            }
            catch(Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                System.Diagnostics.Debug.WriteLine("ERROR: An error occurred in InvoiceController.cs\n" + e.Message);
            }

            //Serialize response and return
            return JsonConvert.SerializeObject(response, Formatting.Indented,
                                new JsonSerializerSettings()
                                {
                                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                                });

        }

        //SS 10/04 GET Method for returning a paginated list of a user's invoices
        [Route("GetAllInvoices")]
        public async Task<string> GetAllInvoicesPaginated([FromQuery]int pageNumber = 1, [FromQuery]int itemsPerPage = 6)
        {
            //Create a response
            InvoiceResponse response = new InvoiceResponse();

            try
            {
                //Get the current user
                string id = User.FindFirstValue(ClaimTypes.NameIdentifier);

                //Get all invoices ordered by date
                IQueryable<Invoice> invoicesQuery = _context.Invoice
                    .Where(i => i.UserId.Equals(id))
                    .OrderByDescending(i => i.InvoiceDate)
                    .AsQueryable();

                //Paginate invoces and put into a list using my paginate extension
                List<Invoice> invoices = invoicesQuery
                    .Paginate(pageNumber, itemsPerPage)
                    .ToList();

                //Get the total amount of pages
                double count = await invoicesQuery.CountAsync();
                int totalPages = (int)Math.Ceiling(count / itemsPerPage);

                //Construct the response
                response.Invoices = invoices;
                response.TotalPages = totalPages;
                response.Success = true;    
                                
            }
            catch(Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                System.Diagnostics.Debug.WriteLine("ERROR: An error occurred in InvoiceController.cs\n" + e.Message);
            }

            //Serialize response and return
            return JsonConvert.SerializeObject(response, Formatting.Indented,
                                new JsonSerializerSettings()
                                {
                                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                                });

        }

        //SS 12/04 POST Method for creating a new invoice after a successful order and payment
        [Route("CreateNewInvoice")]
        [HttpPost]
        public IActionResult CreateNewInvoice([FromBody]string invoiceRequestJson)
        {

            try
            {
                //Deserialize the request
                InvoiceRequestDTO request = JsonConvert.DeserializeObject<InvoiceRequestDTO>(invoiceRequestJson);

                //Get the id of the currently authorized user
                string id = User.FindFirstValue(ClaimTypes.NameIdentifier);

                //Create new invoice model object
                Invoice invoice = new Invoice()
                {
                    TransactionId = request.TransactionId,
                    TotalPaid = request.TotalPaid,
                    UserId = id,
                    InvoiceDate = DateTime.Now,
                    ShippingName = request.BuyerName,
                    ShippingStreet = request.BuyerStreet,
                    ShippingCity = request.BuyerCity,
                    ShippingPostcode = request.BuyerPostcode
                };

                //Loop through products in cart and add to InvoiceProduct table
                foreach (CartProductResponse cartProduct in request.CartProducts)
                {
                    invoice.InvoiceProduct.Add(new InvoiceProduct()
                    {
                        PriceAtTime = cartProduct.Product.CurrentPrice,
                        ProductId = cartProduct.Product.ProductId,
                        Quantity = cartProduct.Quantity
                    });

                    //If product is a physical item, adjust the stock level
                    if (cartProduct.Product.IsPhysical)
                    {
                        //Find product associated with this line item
                        Product product = _context.Product
                            .Where(p => p.ProductId == cartProduct.Product.ProductId)
                            .FirstOrDefault();

                        //If product is not null...
                        if (product != null)
                        {
                            //Adjust stock level
                            product.StockLevel -= cartProduct.Quantity;

                            //Just a check to ensure stock level doesn't go below zero, this shouldn't happen
                            if (product.StockLevel < 0)
                            {
                                product.StockLevel = 0;
                            }

                            //Update product in database
                            _context.Product.Update(product);
                        }
                    }
                    
                }

                //Get saved cart data, if any, from database
                UserCart cart = _context.UserCart
                    .Where(c => c.UserId.Equals(id))
                    .FirstOrDefault();

                //If cart data is not null remove the entry from the database
                if (cart != null)
                {
                    _context.Remove(cart);
                }

                //Add invoice to database
                _context.Invoice.Add(invoice);
                _context.SaveChanges();

                return Ok();
            }
            catch(Exception e)
            {
                System.Diagnostics.Debug.WriteLine("ERROR: An error occurred in InvoiceController.cs\n" + e.Message);
                return BadRequest();
            }           

        }

    }
}