using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TuneLabProject.Server.Models.DB;
using TuneLabProject.Shared.SharedModels;
using Newtonsoft.Json;

namespace TuneLabProject.Server.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class VehicleController : ControllerBase
    {

        private readonly TuneLabContext _context;
        
        public VehicleController(TuneLabContext context)
        {
            _context = context;
        }

        //SS 27/3 Get method to request all vehicle details from the database
        public string Get()
        {
            //Create a response object which will hold a list of vehicles, list of fuel types and any error messages
            VehicleResponseModel vrm = new VehicleResponseModel();

            try
            {
                //Get all vehicle data
                List<VehicleMake> vehicleMakes = _context.VehicleMake
                    .Include(vm => vm.VehicleModel)
                    .ThenInclude(vm => vm.Vehicle)
                    .ToList();

                //Get all fuel type data
                List<FuelTypeModel> fuelTypes = _context.FuelType
                    .Select(ft => new FuelTypeModel { FuelTypeId = ft.FuelTypeId, FuelTypeName = ft.Name })
                    .ToList();

                //Assemble response
                vrm.VehicleMakes = vehicleMakes;
                vrm.FuelTypes = fuelTypes;
                vrm.Success = true; 

            }
            catch(Exception e)
            {
                //If an exception was thrown, add the error message
                vrm.Success = false;
                vrm.ErrorMessage = e.Message;
            }

            return JsonConvert.SerializeObject(vrm, Formatting.Indented,
                            new JsonSerializerSettings()
                            {
                                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                            });

        }

    }
}