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

namespace College.EducPartPages
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

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                CmbFilter.ItemsSource = DbConnect.entObj.AcRanks.ToList();
                CmbFilter.DisplayMemberPath = "Name";
                CmbSort.SelectedIndex = 0;
                CmbFilter.SelectedIndex = 0;

                ListTeacher.ItemsSource = DbConnect.entObj.Teachers.ToList();

                ResultTxb.Text = ListTeacher.Items.Count + "/" + DbConnect.entObj.Teachers.Count().ToString();
            }
            catch (Exception except)
            {

                System.Windows.MessageBox.Show(except.Message, "Что-то пошло не так!", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void TxbSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ListTeacher.ItemsSource = DbConnect.entObj.Teachers.Where(x => x.Name.Contains(TxbSearch.Text)).ToList();
                ResultTxb.Text = ListTeacher.Items.Count + "/" + DbConnect.entObj.Teachers.Where(x => x.Name.Contains(TxbSearch.Text)).Count().ToString();
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        private void CmbSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (CmbSort.SelectedIndex)
            {
                case 0:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.ToList();
                    break;
                case 1:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.OrderBy(i => i.Name).ToList();
                    break;
                case 2:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.OrderByDescending(i => i.Name).ToList();
                    break;
                case 3:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.OrderBy(i => i.AcRank).ToList();
                    break;
                case 4:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.OrderByDescending(i => i.AcRank).ToList();
                    break;
                case 5:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.OrderBy(i => i.Children).ToList();
                    break;
                case 6:
                    ListTeacher.ItemsSource = DbConnect.entObj.Teachers.OrderByDescending(i => i.Children).ToList();
                    break;

            }
        }

        private void CmbFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           
        }

        private void ListTeacher_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btnGoBack_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }
    }
}
