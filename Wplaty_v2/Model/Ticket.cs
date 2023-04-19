using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Wplaty_v2.Model
{
    [Table("Ticket")]
    public class Ticket
    {
        [PrimaryKey, AutoIncrement, Unique]
        public int IdTicket { get; set; }
        [Unique]
        public string NameRoute { get; set; }
        public string TicketPrice { get; set; }
        public string RouteShortcut { get; set; }

        public Ticket(string name, string price, string shortcut)
        {
            NameRoute = name;
            TicketPrice = price;
            RouteShortcut = shortcut;
        }

        public Ticket()
        {

        }

    }
}
