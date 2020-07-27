using System;
using System.Collections.Generic;
using System.Text;

namespace TuneLabProject.Shared.SharedModels
{
    public class InvoiceRequestDTO
    {

        public List<CartProductResponse> CartProducts { get; set; }
        public string TransactionId { get; set; }
        public decimal TotalPaid { get; set; }
        public string BuyerName { get; set; }
        public string BuyerStreet { get; set; }
        public string BuyerCity { get; set; }
        public string BuyerPostcode { get; set; }

    }
}
