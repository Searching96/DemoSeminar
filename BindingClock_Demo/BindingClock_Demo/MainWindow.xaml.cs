using System.Windows;

namespace BindingClock_Demo
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DataContext = new ClockViewModel();
        }
    }
}