using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TuneLabProject.Server.Models.DB;
using Newtonsoft.Json;
using System.Security.Claims;
using TuneLabProject.Shared.SharedModels;

namespace TuneLabProject.Server.Controllers
{
    [Route("[controller]")]
    [ApiController]
    [Authorize]
    public class CartController : ControllerBase
    {

        private readonly TuneLabContext _context;

        public CartController(TuneLabContext context)
        {
            _context = context;
        }

        //SS 27/3 Method for getting a logged in user's saved shopping cart info from database
        [Route("GetUserCart")]
        public string GetUserCart()
        {
            //Get the id of the currently authorized user
            string id = User.FindFirstValue(ClaimTypes.NameIdentifier);

            //Get saved cart data, if any, from database
            UserCart cart = _context.UserCart
                .Where(c => c.UserId.Equals(id))
                .FirstOrDefault();

            string cartData = cart != null ? cart.CartData : "";            

            return JsonConvert.SerializeObject(cartData);
        }

        //SS 27/3 Method for saving a logged in user's shopping cart info to database. It is saved as a serialized json string.
        [Route("SetUserCart")]
        [HttpPost]
        public void SetUserCart([FromBody]string cartJson)
        {

            if (cartJson == null) return;

            //Get id of currently authorized user
            string id = User.FindFirstValue(ClaimTypes.NameIdentifier);

            //Get saved cart data, if any, from database
            UserCart cart = _context.UserCart
                .Where(c => c.UserId.Equals(id))
                .FirstOrDefault();

            //If the cart data is null, create a new UserCart object and save to the database. Otherwise update the existing.
            if(cart == null)
            {
                cart = new UserCart()
                {
                    UserId = id,
                    CartData = cartJson
                };

                _context.Add(cart);
            }
            else
            {
                cart.CartData = cartJson;
                _context.Update(cart);
            }

            _context.SaveChanges();
            
        }

    }
}