using SQLite;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2.Model;

namespace Wplaty_v2.Data
{
    public class MainDataBase
    {
        private static MainDataBase _instance = null;

        public static MainDataBase Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new MainDataBase();
                return _instance;
            }
        }

        public static SQLiteConnection MyDB { get; set; }

        private string DbPath { get; } =
            Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
                "PassengersBase1.db");

        public static MainDataBase GetInstance()
        {
            if (_instance == null)
                _instance = new MainDataBase();
            return _instance;
        }

        public static bool isNull()
        {
            if (_instance == null)
                return true;
            return false;
        }

        private MainDataBase()
        {
            // if databse dont exist create from file PassengerBase.db
            if (!File.Exists(DbPath))
            {
                var assembly = IntrospectionExtensions.GetTypeInfo(typeof(MainDataBase)).Assembly;

                using (var stream = assembly.GetManifestResourceStream("Wplaty_v2.DataBase.PassengersBase1.db"))
                {
                    using (var memoryStream = new MemoryStream())
                    {
                        stream.CopyTo(memoryStream);
                        File.WriteAllBytes(DbPath, memoryStream.ToArray());
                    }
                }
            }

            MyDB = new SQLiteConnection(DbPath);
            // Create table if not exist 
            MyDB.CreateTable<Payment>();
            MyDB.CreateTable<Passenger>();

            MyDB.CreateTable<Ticket>();
            FillTableTicketFromFile();
        }

        public static List<Passenger> GetListPassenger()
        {
            var list = MyDB.Table<Passenger>().ToList();
            return list;
        }

        public static List<Payment> GetListPayments()
        {
            var list = MyDB.Table<Payment>().ToList();
            return list;
        }

        public static List<Ticket> GetListTickets()
        {
            var list = MyDB.Table<Ticket>().ToList();
            return list;
        }

        public static void UpdatePassenger(Passenger passenger)
        {
            Debug.WriteLine($"Aktualizacja pasażera ID: {passenger.ID}, FullName: {passenger.FullName}");
            MyDB.Update(passenger);
        }


        private void FillTableTicketFromFile()
        {
            List<string> lineFromFile = new List<string>();
            var assembly = Assembly.GetExecutingAssembly();
            var resourceName = "Wplaty_v2.DataBase.ticket.txt";

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            using (StreamReader reader = new StreamReader(stream))
            {
                while (!reader.EndOfStream)
                {
                    string result = reader.ReadLine();
                    lineFromFile.Add(result);
                }
            }

            //List<Ticket> listTicket = new List<Ticket>();
            Ticket newTicket = new Ticket();

            foreach (var line in lineFromFile)
            {
                var values = line.Split(';');
                newTicket = new Ticket(values[0], values[1], values[2]);
                //listTicket.Add(new Ticket(values[0], values[1], values[2]));
                try
                {
                    MainDataBase.MyDB.Insert(newTicket);
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception);
                }

            }

            foreach (var t in MainDataBase.GetListTickets())
            {
                Console.WriteLine($"{t.IdTicket}  {t.NameRoute}, {t.TicketPrice}");
            }


        }

        // wyczyszczenie bazy danych
        public static void ResetPassengerStatusAndPaymentDate()
        {
            // Zaktualizuj wartość Status na "No" i DateOfPayment na null dla każdego pasażera
            string query = "UPDATE Passenger SET Status = 'No', DateOfPayment = NULL";
            SQLiteCommand command = MyDB.CreateCommand(query);
            command.ExecuteNonQuery();

            // Usuń rekordy z tabeli Payment
            query = "DELETE FROM Payment";
            command = MyDB.CreateCommand(query);
            command.ExecuteNonQuery();


            // Znajdź wszystkich pasażerów
            //var passengers = GetListPassenger();

            // Aktualizuj wartość Status na "No" i DateOfPayment na null dla każdego pasażera

            //foreach (var passenger in passengers)
            //{
            //    try
            //    {
            //        passenger.Status = "No";
            //        passenger.DateOfPayment = null;

            //        Debug.WriteLine($"Passenger {passenger.ID} before update: Status - {passenger.Status}, DateOfPayment - {passenger.DateOfPayment}");

            //        MyDB.Update(passenger);

            //        Query the database to check the updated values
            //        var updatedPassenger = MyDB.Get<Passenger>(passenger.ID);

            //        Debug.WriteLine($"Passenger {passenger.ID} after update: Status - {updatedPassenger.Status}, DateOfPayment - {updatedPassenger.DateOfPayment}");
            //    }
            //    catch (Exception ex)
            //    {
            //        Debug.WriteLine($"Error updating passenger {passenger.ID}: {ex.Message}");
            //    }
            //}
        }


    }
}
