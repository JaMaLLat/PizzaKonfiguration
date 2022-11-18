using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Übung_des_Console
{
    class Zutaten
    {
        public int ZutatenID { get; set; }
        public string Sort { get; set; }
        public int Menge { get; set; }

        public Zutaten()
        {
            
        }
            
        public Zutaten(int zutatenid , string sort , int menge )
        {
            ZutatenID = zutatenid;
            Sort = sort;
            Menge = menge;
            
        }

        
       
        //public void GetZutaten()
        //{
        //    listeZutetan listeZutetan = new listeZutetan();
        //    Zutaten zutaten = new Zutaten(1, "käse", 2);

            
          
        //    string datei3 = @"C:\Schule\Klassen Projekt1\ConsoleApp\Zutetentabl.csv";
           
            
        //    listeZutetan.getallezutaten();
            //foreach (Zutaten item in zutaten )
            //{
            //    using (StreamWriter schr = new StreamWriter(datei3, false, Encoding.UTF8))
            //    {
            //        schr.WriteLine("pizzaID ;pizzaname ;Größe ;Price");
            //        schr.WriteLine($"{item.ZutatenID} ; {item.Sort} ; {item.Menge}");
            //    }

            //    using (StreamReader stream = new StreamReader(datei3))
            //    {
            //        string data = File.ReadAllText(datei3);
            //        Console.WriteLine(data);
            //    }
            //}
        //}
    }
}
