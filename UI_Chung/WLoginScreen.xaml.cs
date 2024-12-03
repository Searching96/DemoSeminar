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


namespace UI_Chung
{
    /// <summary>
    /// Interaction logic for WLoginScreen.xaml
    /// </summary>
    public partial class WLoginScreen : Window
    {
        public WLoginScreen()
        {
            InitializeComponent();
        }
        private void KeyDown_ESC(object sender, KeyEventArgs e)
        {
            // Kiểm tra nếu phím Esc được nhấn
            if (e.Key == Key.Escape)
            {
                this.Close(); // Đóng cửa sổ
            }
        }
        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            //string username = txtUsername.Text.Trim();
            //string password = txtPassword.Password.Trim();

            //if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            //{
            //    MessageBox.Show("Vui lòng nhập tên đăng nhập và mật khẩu.", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Warning);
            //    return;
            //}

            //using (var db = new QLTVContext())
            //{
            //    var user = db.TAIKHOAN.FirstOrDefault(u =>
            //        u.TenTaiKhoan == username &&
            //        u.MatKhau == password &&
            //        !u.IsDeleted);

            //    if (user != null)
            //    {
            //        // Lưu thông tin đăng nhập
            //        SaveSession(user.MaTaiKhoan, TimeSpan.FromDays(7)); // Lưu session trong 7 ngày

            //        // Mở MainWindow
            //        MainWindow mainWindow = new MainWindow();
            //        mainWindow.Show();
            //        this.Close();
            //    }
            //    else
            //    {
            //        MessageBox.Show("Tên đăng nhập hoặc mật khẩu không chính xác.", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Error);
            //    }
            //}
        }
        private void SaveSession(string? maTaiKhoan, TimeSpan duration)
        {
            //if (string.IsNullOrEmpty(maTaiKhoan))
            //    return;

            //string token = Guid.NewGuid().ToString();
            //string sessionFilePath = "session.txt";

            //using (var db = new QLTVContext())
            //{
            //    var expiryTime = DateTime.Now.Add(duration);
            //    db.ACTIVE_SESSIONS.Add(new ACTIVE_SESSION
            //    {
            //        MaTaiKhoan = maTaiKhoan,
            //        SessionToken = token,
            //        ExpiryTime = expiryTime
            //    });
            //    db.SaveChanges();
            //}

            //// Lưu token vào file local
            //File.WriteAllText(sessionFilePath, token);
        }
    }
}
