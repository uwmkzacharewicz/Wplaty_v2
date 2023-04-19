using System;
using System.Collections.Generic;
using System.Text;

namespace Wplaty_v2.ViewModel
{
    public class ModelListPayments
    {
        public int Id { get; set; }
        public int IdPassenger { get; set; }
        public string FullName { get; set; }
        public string Route { get; set; }
        public double Price { get; set; }
        public int NumberPayment { get; set; }
        public string SendStatus { get; set; }
        public string DateOfPayment { get; set; }

    }
}
