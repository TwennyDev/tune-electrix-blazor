using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TuneLabProject.Server.Models.DB;
using Newtonsoft.Json;
using TuneLabProject.Shared.SharedModels;
using Microsoft.EntityFrameworkCore;
using TuneLabProject.Server.Utilities;

namespace TuneLabProject.Server.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {

        private readonly TuneLabContext _context;

        public ProductController(TuneLabContext context)
        {
            _context = context;
        }

        //SS 03/04 Method for returning product information for a selected product
        [Route("GetProductById")]
        public string GetProductById([FromQuery]int productId)
        {

            ProductDetailResponse response = new ProductDetailResponse();

            try
            {
                //Try and find a product using the provided id
                Product product = _context.Product
                    .Include(p => p.ProductCategory)
                    .Where(p => p.ProductId == productId)
                    .FirstOrDefault();

                //Add to response
                response.Product = product;
                response.Success = product != null;
                response.ErrorMessage = product != null ? null : $"The product with the ID {productId} could not be found";

            }
            catch(Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
            }

            //Serialize and return
            return JsonConvert.SerializeObject(response, Formatting.Indented,
                            new JsonSerializerSettings()
                            {
                                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                            });

        }

        //SS 03/04 This method returns the "featured" products, which is really just 3 random products to be displayed
        //on the home page
        [Route("GetFeaturedProducts")]
        public string GetFeaturedProducts()
        {

            //Create a response object
            ProductsResponse response = new ProductsResponse();

            try
            {

                //Get 3 random products, this is done by ordering on a new random GUID
                List<Product> products = _context.Product
                    .Include(p => p.ProductCategory)
                    .OrderBy(p => Guid.NewGuid())
                    .Take(3)
                    .ToList();

                //Add to response
                response.Products = products;
                response.Success = products != null;

            }
            catch(Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
            }

            //Serialize and return to client
            return JsonConvert.SerializeObject(response, Formatting.Indented,
                            new JsonSerializerSettings()
                            {
                                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                            });

        }

        //SS 03/04 This function returns a serialized list of products that are paginated, filtered and sorted
        [HttpPost]
        [Route("PostProductsPaginated")]
        public async Task<string> PostProductsPaginated([FromBody]string productRequestJson)
        {            

            //Create response object
            ProductsResponse productsResponse = new ProductsResponse();

            try
            {
                //Deserialize request information from client data transfer object
                ProductRequestDTO productRequest = JsonConvert.DeserializeObject<ProductRequestDTO>(productRequestJson);

                //Get list of all product categories and add to response
                List<CategoryModel> categories = _context.ProductCategory
                    .Select(c => new CategoryModel() { CategoryId = c.ProductCategoryId, CategoryName = c.CategoryName })
                    .ToList();

                productsResponse.Categories = categories;

                //Create a queryable collection and filter using the ids (if any) provided in the request
                IQueryable<Product> productQuery = FilterProducts(productRequest.FilterCategoryId, productRequest.FilterVehicleId);                

                //Sort products using the requested sort parameters
                switch (productRequest.SortBy)
                {

                    case ProductRequestDTO.SortType.ProductName:

                        if (productRequest.Descending)
                        {
                            productQuery = productQuery.OrderByDescending(p => p.ProductName);
                        }
                        else
                        {
                            productQuery = productQuery.OrderBy(p => p.ProductName);
                        }
                        break;

                    case ProductRequestDTO.SortType.ProductPrice:

                        if (productRequest.Descending)
                        {
                            productQuery = productQuery.OrderByDescending(p => p.CurrentPrice);
                        }
                        else
                        {
                            productQuery = productQuery.OrderBy(p => p.CurrentPrice);
                        }
                        break;

                    default:

                        if (productRequest.Descending)
                        {
                            productQuery = productQuery.OrderByDescending(p => p.ProductId);
                        }
                        else
                        {
                            productQuery = productQuery.OrderBy(p => p.ProductId);
                        }
                        break;

                }

                //Create a list of sorted and filtered products that are paginated,
                //this uses my Paginate extension method that can be found in the Utilities folder
                List<Product> products = productQuery
                    .Paginate(productRequest.PageNumber, productRequest.QuantityPerPage)
                    .ToList();

                //Calculate the total number of pages
                double count = await productQuery.CountAsync();
                int totalPages = (int) Math.Ceiling(count / productRequest.QuantityPerPage);

                //Add to the response
                productsResponse.TotalPages = totalPages;
                productsResponse.Products = products;
                productsResponse.Success = products != null;
            }
            catch (Exception e)
            {
                productsResponse.Success = false;
                productsResponse.ErrorMessage = e.Message;
            }

            //Serialize and return
            return JsonConvert.SerializeObject(productsResponse, Formatting.Indented,
                            new JsonSerializerSettings()
                            {
                                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                            });
        }

        //SS 27/3 This method takes in the serialized json cookie value holding the user's shopping cart data
        //It uses this data to find the relevant product information and return it to the shopping cart page
        [HttpPost]
        [Route("GetProductsFromCartJson")]
        public string GetProductsFromCartJson([FromBody]string cartJson)
        {           
            //SS 27/3 Create a list of response objects that will hold a product's information and quantity
            List<CartProductResponse> cartProducts = new List<CartProductResponse>();

            try
            {
                //SS 27/3 Deserialize cart cookie data into object format
                List<CartItem> cartItems = JsonConvert.DeserializeObject<List<CartItem>>(cartJson);

                if(cartItems != null)
                {
                    //SS 27/3 Loop through each item and search database for each product's info
                    //If product exists, add it to the response along with quantity
                    foreach (CartItem item in cartItems)
                    {

                        Product product = _context.Product
                            .Include(p => p.ProductCategory)
                            .Where(p => p.ProductId == item.ProductId)
                            .FirstOrDefault();

                        if (product != null)
                        {
                            cartProducts.Add(new CartProductResponse()
                            {
                                Product = product,
                                Quantity = item.Quantity
                            });
                        }

                    }
                }               

            }
            catch(Exception e)
            {
                System.Diagnostics.Debug.WriteLine("An error occurred while getting product information from cart\n" + e.Message);
            }           

            return JsonConvert.SerializeObject(cartProducts, Formatting.Indented,
                            new JsonSerializerSettings()
                            {
                                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                            });
        }

        //SS 03/04 This method is used for filtering products by category and/or vehicle
        private IQueryable<Product> FilterProducts(int categoryId, int vehicleId)
        {           

            IQueryable<Product> productQuery;

            //If a vehicle id has been provided, get all products related to it, otherwise get all products
            if(vehicleId != 0)
            {
                productQuery = _context.VehicleProduct
                    .Include(vp => vp.Product)
                    .ThenInclude(vp => vp.ProductCategory)
                    .Where(vp => vp.VehicleId == vehicleId)
                    .Select(vp => vp.Product);
            }
            else
            {
                productQuery = _context.Product
                    .Include(p => p.ProductCategory);
            }

            //If a category id has been provided filter the above queryable by category id
            if(categoryId != 0)
            {
                productQuery = productQuery
                    .Where(p => p.ProductCategoryId == categoryId);
            }

            return productQuery;
        }


        //SS 27/3 Class for use in deserializing shopping cart cookie data
        class CartItem
        {
            public int ProductId { get; set; }
            public int Quantity { get; set; }
        }

    }
}