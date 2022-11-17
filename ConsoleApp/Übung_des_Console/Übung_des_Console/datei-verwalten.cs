using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aspose.Cells;

namespace Übung_des_Console
{
    class datei_verwalten
    {
        //instalieren Nuget Aspose.Cells

        Pizza pi = new Pizza(1 , "Margerita" , 16.50m);
       public void zellerstellen()
        {

            Workbook ab = new Workbook();

            Worksheet zell = ab.Worksheets[0];

            Cell ce1 = zell.Cells["A1"];           
            Cell cel2 = zell.Cells["B1"];
            Cell cel3 = zell.Cells["C1"];

            ce1.PutValue("PizzaID");
            cel2.PutValue("Pizzaname");
            cel3.PutValue("price");


            Cell row1 = zell.Cells["A2"];
            Cell r2 = zell.Cells["B2"];
            Cell r3 = zell.Cells["C2"];

            row1.PutValue(pi.PizzaId);
            r2.PutValue(pi.Pizzaname);
            r3.PutValue(pi.Price);



            StreamProviderOptions stream = new StreamProviderOptions();           
            ab.Save("pizzadaten.csv");

            string datei = @"C:\Schule\Klassen Projekt1\ConsoleApp\Übung_des_Console\Übung_des_Console\bin\Debug\pizzadaten.csv";

            using (StreamReader stream1 = new StreamReader(datei))
            {
                string data = File.ReadAllText(datei);
                Console.WriteLine(data);
            }



        }
    }
}
