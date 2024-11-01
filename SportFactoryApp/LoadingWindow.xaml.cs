using MahApps.Metro.Controls;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace SportFactoryApp
{
    public partial class LoadingWindow : Window
    {
       
            
        public LoadingWindow()
                {
                    InitializeComponent();
                }

        private void IntroVideoPlayer_MediaEnded(object sender, RoutedEventArgs e)
                {
                    // Close the intro window
                   // this.Close();
            

            // Open the Login Window
            var loginWindow = new LoginWindow();
                    loginWindow.Show();
            this.Close();

        }
    }
}

