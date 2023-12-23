using College.AppServices;
using College.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees;
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

namespace College.AdminPages
{
    /// <summary>
    /// Interaction logic for ListTeachers.xaml
    /// </summary>
    public partial class ListTeachers : Page
    {
        public ListTeachers()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btnGoBack_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void ListTeacher_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            var teachersForRemoving = ListTeacher.SelectedItems.Cast<Teacher>().ToList();
           

                try
                {
                    DbConnect.entObj.Teachers.RemoveRange(teachersForRemoving);
                    DbConnect.entObj.SaveChanges();
                    System.Windows.MessageBox.Show("Данные удалены");

                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.ToList();
                }
                catch (Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.Message.ToString());

                }
            
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                CmbFilter.ItemsSource = DbConnect.entObj.Teachers.ToList();
                CmbFilter.DisplayMemberPath = "Name";
                CmbSort.SelectedIndex = 0;
                CmbFilter.SelectedIndex = 0;

                ListTeacher.ItemsSource = DbConnect.entObj.Teachers.ToList();
                ResultTxb.Text = ListTeacher.Items.Count + "/" + DbConnect.entObj.Teachers.Count().ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Что-то пошло не так!", MessageBoxButton.OK, MessageBoxImage.Exclamation);

            }
        }
    }
}
