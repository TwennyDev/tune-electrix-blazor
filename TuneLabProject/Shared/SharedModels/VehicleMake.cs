using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class VehicleMake
    {
        public VehicleMake()
        {
            VehicleModel = new HashSet<VehicleModel>();
        }

        public int MakeId { get; set; }
        public string MakeName { get; set; }

        public virtual ICollection<VehicleModel> VehicleModel { get; set; }
    }
}
