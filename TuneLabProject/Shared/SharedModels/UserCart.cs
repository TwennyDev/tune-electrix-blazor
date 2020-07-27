using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace TuneLabProject.Shared.SharedModels
{
    public partial class UserCart
    {
        public string UserId { get; set; }
        public string CartData { get; set; }
    }
}
