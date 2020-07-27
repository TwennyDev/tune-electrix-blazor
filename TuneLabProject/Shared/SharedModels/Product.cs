using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class Product
    {
        public Product()
        {
            InvoiceProduct = new HashSet<InvoiceProduct>();
            VehicleProduct = new HashSet<VehicleProduct>();
        }

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDesc { get; set; }
        public bool IsPhysical { get; set; }
        public int StockLevel { get; set; }
        public decimal CurrentPrice { get; set; }
        public string ImageName { get; set; }
        public int ProductCategoryId { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }
        public virtual ICollection<InvoiceProduct> InvoiceProduct { get; set; }
        public virtual ICollection<VehicleProduct> VehicleProduct { get; set; }
    }
}
