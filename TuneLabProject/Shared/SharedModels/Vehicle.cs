using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class Vehicle
    {
        public Vehicle()
        {
            VehicleProduct = new HashSet<VehicleProduct>();
        }

        public int VehicleId { get; set; }
        public string Engine { get; set; }
        public int FactoryHp { get; set; }
        public int TunedHp { get; set; }
        public int FactoryNm { get; set; }
        public int TunedNm { get; set; }
        public int ModelId { get; set; }
        public int FuelTypeId { get; set; }

        public virtual FuelType FuelType { get; set; }
        public virtual VehicleModel Model { get; set; }
        public virtual ICollection<VehicleProduct> VehicleProduct { get; set; }
    }
}
