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

namespace College.AdminPages
{
    /// <summary>
    /// Interaction logic for AddTeacher.xaml
    /// </summary>
    public partial class AddTeacher : Page
    {
        public AddTeacher()
        {
            InitializeComponent();
        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (DbConnect.entObj.Teachers.Count(x => x.Name == txbFio.Text) > 0)
                {
                    System.Windows.MessageBox.Show("Такой преподаватель уже есть!",
                        "Уведомление",
                        MessageBoxButton.OK,
                        MessageBoxImage.Information);
                    return;
                }
                else
                {
                    if (txbFio.Text == null | txbFio.Text.Trim() == "" | txbAge.Text == null | txbAge.Text.Trim() == "" | txbSpecialty.Text == null | txbSpecialty.Text.Trim() == "")
                    {
                        System.Windows.MessageBox.Show("Заполните все поля!",
                        "Уведомление",
                        MessageBoxButton.OK,
                        MessageBoxImage.Information);
                    }
                    else
                    {
                        try
                        {

                            Teacher TeacherObj = new Teacher()
                            {
                               Name = txbFio.Text,
                               Specialty = txbSpecialty.Text,
                               Age = Int32.Parse(txbAge.Text),
                               Children = Int32.Parse(txbChildren.Text),
                               AcademicId = CmbCategory.SelectedIndex

                            };

                            DbConnect.entObj.Teachers.Add(TeacherObj);
                            DbConnect.entObj.SaveChanges();

                            System.Windows.MessageBox.Show("Преподаватель добавлен!",
                                "Уведомление",
                                MessageBoxButton.OK,
                                MessageBoxImage.Information);
                        }
                        catch (Exception ex)
                        {
                            System.Windows.MessageBox.Show("Ошибка добавления преподавателя: " + ex.Message.ToString(),
                            "Критический сбой работы приложения",
                            MessageBoxButton.OK,
                            MessageBoxImage.Warning);
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void CmbCategory_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
