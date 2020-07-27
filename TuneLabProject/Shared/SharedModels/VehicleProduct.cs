using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class VehicleProduct
    {
        public int VehicleProductId { get; set; }
        public int VehicleId { get; set; }
        public int ProductId { get; set; }

        public virtual Product Product { get; set; }
        public virtual Vehicle Vehicle { get; set; }
    }
}
