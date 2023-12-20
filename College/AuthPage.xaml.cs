using College.AppServices;
using College.Data;
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

namespace College
{
    /// <summary>
    /// Interaction logic for AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var user = DbConnect.entObj.Users.FirstOrDefault(x => x.Login == txbLogin.Text && x.Password == psbPassword.Password);

                if (user == null)
                {
                    MessageBox.Show("Неверный логин или пароль",
                                    "Уведомелние об ошибке",
                                    MessageBoxButton.OK,
                                    MessageBoxImage.Information);

                }
                else
                {
                    switch (user.IdRole)
                    {
                        case 1:
                            MessageBox.Show("Добро пожаловать! ",
                                            "Успешный вход",
                                            MessageBoxButton.OK,
                                            MessageBoxImage.Information);
                            FrameApp.frmObj.Navigate(new AdminPages.MenuPage());
                            break;
                        case 2:
                            MessageBox.Show("Добро пожаловать! ",
                                            "Успешный вход",
                                            MessageBoxButton.OK,
                                            MessageBoxImage.Information);
                            FrameApp.frmObj.Navigate(new StudentPages.MenuPage());
                            break;
                        case 3:
                            MessageBox.Show("Добро пожаловать! ",
                                           "Успешный вход",
                                           MessageBoxButton.OK,
                                           MessageBoxImage.Information);
                            FrameApp.frmObj.Navigate(new EducPartPages.MenuPage());
                            break;
                        case 4:
                            MessageBox.Show("Добро пожаловать! ",
                                           "Успешный вход",
                                           MessageBoxButton.OK,
                                           MessageBoxImage.Information);
                            FrameApp.frmObj.Navigate(new TeacherPages.MenuPage());
                            break;
                        case 5:
                            MessageBox.Show("Добро пожаловать! ",
                                           "Успешный вход",
                                           MessageBoxButton.OK,
                                           MessageBoxImage.Information);
                            FrameApp.frmObj.Navigate(new AbiturientPages.MenuPage());
                            break;

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Во время работы произошла ошибка " + ex.ToString(),
                                "Уведомление об ошибке",
                                MessageBoxButton.OK,
                                MessageBoxImage.Warning);

            }
        }
    }
}
