using Aspose.Cells;
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
            Pizza ss = new Pizza(1, "Salami", 24.5 , 17.25m);

            //using (var schreib = new StreamWriter(datei) )
            //{
               //File.AppendAllText(datei, $"{ss.PizzaId.ToString()} + {ss.Pizzaname } + {ss.Price.ToString()}");


            using (StreamWriter schr = new StreamWriter(datei, false, Encoding.UTF8 ))
            {
                schr.WriteLine("pizzaID ;pizzaname ;Größe ;Price") ;
                schr.WriteLine($"{ss.PizzaId} ; {ss.Pizzaname} ; {ss.Große} ;{ss.Price}");
            }
            using(StreamReader stream = new StreamReader(datei))
            {
               string data =  File.ReadAllText(datei);
                Console.WriteLine(data);
            }


            //}

            datei_verwalten _Verwalten = new datei_verwalten();
            _Verwalten.zellerstellen();


            
            listeZutetan zuliste = new listeZutetan();

            zuliste.zutatenzufügen(new Zutaten(1, "käse", 2));
            zuliste.getallezutaten();
            

            Console.Read();
          
        }
    }
}
