using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.Entity;

namespace PizzaKonfApp
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DbPizzaconfEntities dbPizzaconf = new DbPizzaconfEntities();
            dbPizzaconf.Pizzasoße.Load();
            DataContext = dbPizzaconf.Pizzasoße.Local;
            dbPizzaconf.Zutatens.Load();
            DataContext = dbPizzaconf.Zutatens.Local;


            LBZutaten.Items.Add(dbPizzaconf.Zutatens);
        }

        private void GroßeMenu_SourceUpdated(object sender, DataTransferEventArgs e)
        {

        }
    }
}
