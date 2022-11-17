using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Übung_des_Console
{
    [Serializable]
    class Pizza
    {
        public int PizzaId;
        public string Pizzaname;
        public decimal Price;
        

        public Pizza( int pizzaid , string pizzaname , decimal price)
        {
            PizzaId = pizzaid;
            Pizzaname = pizzaname;
            Price = price;
        }
        
    }
    
}
