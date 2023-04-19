using SQLite;
using System;
using System.Collections.Generic;
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

        //public async static Task<List<Passenger>> GetListFromFirebase()
        //{
        //    List<Passenger> databaseRecords = new List<Passenger>();

        //    FirebaseClient firebaseClient =
        //        new FirebaseClient("https://myfirstdatabase-cf2fb-default-rtdb.europe-west1.firebasedatabase.app/");

        //    //var collection = (await firebaseClient
        //    //    .Child("Passenger")
        //    //    .OnceAsync<Passenger>()).Select(item => new Passenger
        //    //    {
        //    //        FullName = item.Object.FullName,
        //    //        DateOfPayment = item.Object.DateOfPayment,
        //    //        ID = item.Object.ID,
        //    //        Phone = item.Object.Phone,
        //    //        Price = item.Object.Price,
        //    //        Route = item.Object.Route,
        //    //        Status = item.Object.Status
        //    //    }).ToList();

        //    //foreach (var p in collection)
        //    //{
        //    //    Console.WriteLine(p.FullName);
        //    //}
        //    var collection = firebaseClient
        //        .Child("Passenger")
        //        .AsObservable<Passenger>()
        //        .Subscribe((dbevent) =>
        //        {
        //            if (dbevent.Object != null)
        //            {
        //                databaseRecords.Add(dbevent.Object);
        //            }
        //        });

        //    return databaseRecords;
        //}

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


    }
}
