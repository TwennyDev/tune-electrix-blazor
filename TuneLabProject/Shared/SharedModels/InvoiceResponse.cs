using System;
using System.Collections.Generic;
using System.Text;

namespace TuneLabProject.Shared.SharedModels
{
    public class InvoiceResponse
    {

        public List<Invoice> Invoices { get; set; }

        public int TotalPages { get; set; }

        public bool Success { get; set; }

        public string ErrorMessage { get; set; }

    }
}
