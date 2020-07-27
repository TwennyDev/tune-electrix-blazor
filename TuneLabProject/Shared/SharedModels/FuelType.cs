using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class FuelType
    {
        public FuelType()
        {
            Vehicle = new HashSet<Vehicle>();
        }

        public int FuelTypeId { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Vehicle> Vehicle { get; set; }
    }
}
