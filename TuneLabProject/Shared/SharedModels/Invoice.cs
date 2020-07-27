using System;
using System.Collections.Generic;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class Invoice
    {
        public Invoice()
        {
            InvoiceProduct = new HashSet<InvoiceProduct>();
        }

        public int InvoiceId { get; set; }
        public string UserId { get; set; }
        public string TransactionId { get; set; }
        public decimal TotalPaid { get; set; }
        public DateTime InvoiceDate { get; set; }
        public string ShippingName { get; set; }
        public string ShippingStreet { get; set; }
        public string ShippingCity { get; set; }
        public string ShippingPostcode { get; set; }

        public virtual ICollection<InvoiceProduct> InvoiceProduct { get; set; }
    }
}
