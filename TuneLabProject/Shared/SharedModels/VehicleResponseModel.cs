using System;
using System.Collections.Generic;
using System.Text;

namespace TuneLabProject.Shared.SharedModels
{
    public class VehicleResponseModel
    {        

        public List<VehicleMake> VehicleMakes { get; set; }

        public List<FuelTypeModel> FuelTypes { get; set; }

        public bool Success { get; set; }

        public string ErrorMessage { get; set; }

    }
}
