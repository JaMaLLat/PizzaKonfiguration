using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Übung_des_Console
{
    class Program
    {
        static void Main(string[] args)
        {
            string datei = @"C:\Schule\Klassen Projekt1\ConsoleApp\Übung_des_Console1.csv";
            Pizza ss = new Pizza(1, "Salami", 17.25m);
            //using (var schreib = new StreamWriter(datei) )
            //{
               //File.AppendAllText(datei, $"{ss.PizzaId.ToString()} + {ss.Pizzaname } + {ss.Price.ToString()}");


            using (StreamWriter schr = new StreamWriter(new FileStream(datei, FileMode.Create, FileAccess.ReadWrite)))
            {
                schr.WriteLine("pizzaID" + " pizzaname" + " Price");
                schr.WriteLine($"{ss.PizzaId} {ss.Pizzaname} {ss.Price}");
            }

            using(StreamReader stream = new StreamReader(datei))
            {
               string data =  File.ReadAllText(datei);
                Console.WriteLine(data);
            }


                //}
                Console.Read();
          
        }
    }
}
