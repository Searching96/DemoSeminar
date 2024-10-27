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

        private Point _previousMousePosition;

        private void Canvas_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            _previousMousePosition = e.GetPosition(this);
            MainCanvas.CaptureMouse();
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e)
        {
            if (MainCanvas.IsMouseCaptured)
            {
                Point currentPosition = e.GetPosition(this);
                double offsetX = currentPosition.X - _previousMousePosition.X;
                double offsetY = currentPosition.Y - _previousMousePosition.Y;

                CanvasTranslateTransform.X += offsetX;
                CanvasTranslateTransform.Y += offsetY;

                _previousMousePosition = currentPosition;
            }
        }

        private void Canvas_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            MainCanvas.ReleaseMouseCapture();
        }

        private void Canvas_MouseWheel(object sender, MouseWheelEventArgs e)
        {
            double zoomFactor = e.Delta > 0 ? 1.1 : 0.9;
            CanvasScaleTransform.ScaleX *= zoomFactor;
            CanvasScaleTransform.ScaleY *= zoomFactor;
        }
    }
}