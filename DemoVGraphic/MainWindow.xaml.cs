using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DemoVGraphic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Canvas_MouseWheel(object sender, MouseWheelEventArgs e)
        {
            // Lấy ScaleTransform hiện tại hoặc khởi tạo mới
            var scaleTransform = MainCanvas.RenderTransform as ScaleTransform;
            if (scaleTransform == null)
            {
                scaleTransform = new ScaleTransform();
                MainCanvas.RenderTransform = scaleTransform;
            }

            // Thiết lập hệ số zoom
            double zoomFactor = e.Delta > 0 ? 1.1 : 1 / 1.1;

            // Cập nhật tỷ lệ scale
            scaleTransform.ScaleX *= zoomFactor;
            scaleTransform.ScaleY *= zoomFactor;
        }
    }
}