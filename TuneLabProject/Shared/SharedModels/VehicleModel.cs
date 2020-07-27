using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class VehicleModel
    {
        public VehicleModel()
        {
            Vehicle = new HashSet<Vehicle>();
        }

        public int ModelId { get; set; }
        public string ModelName { get; set; }
        public int MakeId { get; set; }

        public virtual VehicleMake Make { get; set; }
        public virtual ICollection<Vehicle> Vehicle { get; set; }
    }
}
