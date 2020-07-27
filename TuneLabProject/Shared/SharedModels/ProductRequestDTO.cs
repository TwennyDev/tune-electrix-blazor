using System;
using System.Collections.Generic;
using System.Text;

namespace TuneLabProject.Shared.SharedModels
{
    public class ProductRequestDTO
    {

        public int PageNumber { get; set; } = 1;
        public int QuantityPerPage { get; set; } = 6;
        public SortType SortBy { get; set; }
        public bool Descending { get; set; }
        public int FilterCategoryId { get; set; }
        public int FilterVehicleId { get; set; }

        public enum SortType
        {
            ProductId,
            ProductName,
            ProductPrice
        }
        
    }
}
