using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class InvoiceProduct
    {
        public int InvoiceProductId { get; set; }
        public int InvoiceId { get; set; }
        public int ProductId { get; set; }
        public decimal PriceAtTime { get; set; }
        public int Quantity { get; set; }

        public virtual Invoice Invoice { get; set; }
        public virtual Product Product { get; set; }
    }
}
