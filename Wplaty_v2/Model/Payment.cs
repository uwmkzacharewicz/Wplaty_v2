using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Wplaty_v2.Model
{
    [Table("Payment")]
    public class Payment
    {
        [PrimaryKey]
        public int NrPayment { get; set; }
        public int ID { get; set; }
        public string FullName { get; set; }
        public string Price { get; set; }
        public string DateOfPayment { get; set; }
        public string Comment { get; set; }

        // 3 - Approved, Sending email, sms
        // 2 - Approved, Sending email, without sending sms
        // 1 - Aprroved, add to query (no connection) and sending sms
        // 0 - Approved, add to query (no connection)
        public int SendStatus { get; set; }
    }
}
