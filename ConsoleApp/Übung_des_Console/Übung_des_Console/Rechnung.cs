using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Übung_des_Console
{
    class Rechnung
    {
        public int RechnungID;
        public decimal Summe;

        public Rechnung(int rechnungid , decimal price)
        {
            RechnungID = rechnungid;
            Summe = price;

        }
    }
}
