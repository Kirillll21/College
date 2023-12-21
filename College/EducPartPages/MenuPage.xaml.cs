using College.AppServices;
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

namespace College.EducPartPages
{
    /// <summary>
    /// Interaction logic for MenuPage.xaml
    /// </summary>
    public partial class MenuPage : Page
    {
        public MenuPage()
        {
            InitializeComponent();
        }

        private void ListStudents_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new ListStudentPage());
        }

        private void ListPractics_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new ListPractic());
        }

        private void ListGroups_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new GroupsPage());
        }

        private void btnGoTeacher_Click_1(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new ListTeachers());
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
