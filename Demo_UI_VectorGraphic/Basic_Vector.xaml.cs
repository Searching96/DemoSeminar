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
using System.Windows.Shapes;

namespace Demo_UI_VectorGraphic
{
    public partial class Basic_Vector : Window
    {
        public Basic_Vector()
        {
            InitializeComponent();
        }
        private void StarButton_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            LoginApp_Advanced loginApp_Advanced = new LoginApp_Advanced();
            loginApp_Advanced.Show();
        }
    }
}
