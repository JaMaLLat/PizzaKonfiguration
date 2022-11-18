using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Übung_des_Console
{
    class listeZutetan
    {
        List<Zutaten> Allezutaten = new List<Zutaten>();

       public void zutatenzufügen(Zutaten z) 
        {
            Allezutaten.Add(z);
        }

        public void getallezutaten()
        {
            foreach (var item in Allezutaten)
            {
                Console.WriteLine($"{item.ZutatenID} {item.Sort} {item.Menge}");
                string datei3 = @"C:\Schule\Klassen Projekt1\ConsoleApp\Zutaten.csv";
                using (StreamWriter schr = new StreamWriter(datei3, false, Encoding.UTF8))
                {
                    schr.WriteLine("ZutatenID ;Sort ;Menge");
                    schr.WriteLine($"{item.ZutatenID} ; {item.Sort} ; {item.Menge}");
                }
                using (StreamReader stream = new StreamReader(datei3))
                {
                    string data = File.ReadAllText(datei3);
                    Console.WriteLine(data);
                }
            }
           
        }
    }
}
