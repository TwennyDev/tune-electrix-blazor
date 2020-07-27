using System;
using System.Collections.Generic;
using System.Text;

namespace TuneLabProject.Shared.SharedModels
{
    public class ProductsResponse
    {

        public List<Product> Products { get; set; }

        public List<CategoryModel> Categories { get; set; }

        public int TotalPages { get; set; }

        public bool Success { get; set; }

        public string ErrorMessage { get; set; }

    }
}
