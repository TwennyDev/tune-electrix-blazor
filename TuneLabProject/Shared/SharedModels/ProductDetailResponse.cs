using System;
using System.Collections.Generic;
using System.Text;

namespace TuneLabProject.Shared.SharedModels
{
    public class ProductDetailResponse
    {
        public Product Product { get; set; }
        public bool Success { get; set; }
        public string ErrorMessage { get; set; }
    }
}
