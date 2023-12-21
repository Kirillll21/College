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
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace College.AdminPages
{
    /// <summary>
    /// Interaction logic for ListUsers.xaml
    /// </summary>
    public partial class ListUsers : Page
    {
        public ListUsers()
        {
            InitializeComponent();
        }

        private void btnDelStd_Click(object sender, RoutedEventArgs e)
        {
            var userForRemoving = UserList.SelectedItems.Cast<User>().ToList();

            var cancel = System.Windows.Forms.MessageBox.Show("Вы подтверждаете удаление?",
                            "Подтверждение",
                            MessageBoxButtons.OKCancel);
            if (DialogResult.Cancel == cancel)
            {
                FrameApp.frmObj.Navigate(new ListUsers());
            }
            else
            {

                try
                {
                    DbConnect.entObj.Users.RemoveRange(userForRemoving);
                    DbConnect.entObj.SaveChanges();
                    System.Windows.MessageBox.Show("Данные удалены");

                    UserList.ItemsSource = DbConnect.entObj.Users.ToList();
                }
                catch (Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.Message.ToString());

                }
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void BtnGoBack_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAddStd_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
