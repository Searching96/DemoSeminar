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
using System.Windows.Media.Animation;


namespace GUI_QLTV
{
    /// <summary>
    /// Interaction logic for UC_QLDG.xaml
    /// </summary>
    public partial class UC_QLDG : Window
    {
        public UC_QLDG()
        {
            InitializeComponent();
           
        }
        private void ToggleSidebar_Click(object sender, RoutedEventArgs e)
        {
            bool isCollapsed = SidebarOverlay.Visibility == Visibility.Collapsed;

            SidebarOverlay.Visibility = isCollapsed ? Visibility.Visible : Visibility.Collapsed;

            var animation = new DoubleAnimation
            {
                From = isCollapsed ? -250 : 0,
                To = isCollapsed ? 0 : -250,
                Duration = TimeSpan.FromMilliseconds(250),
                EasingFunction = new QuadraticEase { EasingMode = isCollapsed ? EasingMode.EaseOut : EasingMode.EaseIn }
            };

            if (!isCollapsed)
            {
                animation.Completed += (s, _) => SidebarOverlay.Visibility = Visibility.Collapsed;
            }

            Sidebar.RenderTransform = new TranslateTransform(-250, 0);
            Sidebar.RenderTransform.BeginAnimation(TranslateTransform.XProperty, animation);
        }

        private void CloseSidebar_Click(object sender, MouseButtonEventArgs e)
        {
            // Hide sidebar 
            DoubleAnimation animation = new DoubleAnimation
            {
                From = 0,
                To = -250,
                Duration = TimeSpan.FromMilliseconds(250),
                EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseIn }
            };
            animation.Completed += (s, _) => SidebarOverlay.Visibility = Visibility.Collapsed;
            Sidebar.RenderTransform.BeginAnimation(TranslateTransform.XProperty, animation);
        }
        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dashboard");
        }
        private void AddReader_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dashboard");
        }
        private void UpdateReader_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dashboard");
        }
        private void DeleteReader_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dashboard");
        }
        private void ReadersDataGrid_SelectionChanged(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dashboard");
        }
        private void Dashboard_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dashboard");
        }

        private void ReaderManagement_Click(object sender, RoutedEventArgs e)
        {
            UC_QLDG uC_QLDG = new UC_QLDG();
            uC_QLDG.Show();
            Close();
        }

        private void BookManagement_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("BookManagement");
        }

        private void LoanManagement_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("LoanManagement");
        }

        private void Report_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("BCTK");
        }
    }
}
