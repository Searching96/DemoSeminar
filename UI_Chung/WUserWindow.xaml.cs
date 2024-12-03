
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
using UI_Chung.Models;
namespace UI_Chung
{
    /// <summary>
    /// Interaction logic for WUserWindow.xaml
    /// </summary>
    public partial class WUserWindow : Window
    {
        public ICommand CloseTabCommand { get; }
        public WUserWindow()
        {
            InitializeComponent();
            CloseTabCommand = new RelayCommand(CloseTab);
            DataContext = this; // Đặt DataContext cho Window
        }
        private void KeyDown_ESC(object sender, KeyEventArgs e)
        {
            // Kiểm tra nếu phím Esc được nhấn
            if (e.Key == Key.Escape)
            {
                this.Close(); // Đóng cửa sổ
            }
        }


        private bool IsMaximize = false;

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }
        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                if (IsMaximize)
                {
                    this.WindowState = WindowState.Normal;
                    this.Width = 1080;
                    this.Height = 720;

                    IsMaximize = false;
                }
                else
                {
                    this.WindowState = WindowState.Maximized;

                    IsMaximize = true;
                }
            }
        }
        private void CloseTab(object parameter)
        {
            if (parameter is TabItem tabItem && MainTabControl.Items.Contains(tabItem))
            {
                MainTabControl.Items.Remove(tabItem); // Xóa tab
            }
        }
        public void OpenBookDetailTab(SACH selectedBook)
        {
            // Kiểm tra nếu đã có tab chi tiết cho sách này
            foreach (TabItem tabItem in MainTabControl.Items)
            {
                if (tabItem.Tag is SACH book && book.ID == selectedBook.ID)
                {
                    MainTabControl.SelectedItem = tabItem; // Chuyển đến tab này
                    return;
                }
            }

            // Tạo một instance của UCChiTietSach và gán dữ liệu sách vào DataContext
            var bookDetailControl = new UI_Chung.UCChiTietSach
            {
                DataContext = selectedBook
            };

            // Tạo một TabItem mới để chứa UCChiTietSach
            var bookDetailTab = new TabItem
            {
                Header = selectedBook.IDTuaSachNavigation.TenTuaSach,
                Content = bookDetailControl,
                Tag = selectedBook
            };

            // Thêm tab mới vào TabControl
            MainTabControl.Items.Add(bookDetailTab);
            MainTabControl.SelectedItem = bookDetailTab; // Chuyển đến tab mới
        }
        private void btnTrangChu_Click(object sender, RoutedEventArgs e)
        {
            // Chuyển đến tab Trang Chủ
            MainTabControl.SelectedIndex = 0;
        }

        private void tbBookFilter_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btnThongBao_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnSachMuon_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnTaiKhoan_Click(object sender, RoutedEventArgs e)
        {

        }
    }
    // RelayCommand Implementation
    public class RelayCommand : ICommand
    {
        private readonly Action<object> _execute;
        private readonly Func<object, bool> _canExecute;

        public RelayCommand(Action<object> execute, Func<object, bool> canExecute = null)
        {
            _execute = execute;
            _canExecute = canExecute;
        }

        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter) => _canExecute == null || _canExecute(parameter);

        public void Execute(object parameter) => _execute(parameter);

        public void RaiseCanExecuteChanged() => CanExecuteChanged?.Invoke(this, EventArgs.Empty);
    }
}
