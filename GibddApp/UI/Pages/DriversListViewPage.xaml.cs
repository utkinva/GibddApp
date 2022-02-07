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
using GibddApp.Utilities;
using GibddApp.UI.Pages;
using GibddApp.Entities;
using Microsoft.Win32;
using System.IO;

namespace GibddApp.UI.Pages
{
    /// <summary>
    /// Логика взаимодействия для DriversListViewPage.xaml
    /// </summary>
    public partial class DriversListViewPage : Page
    {
        #region Конструктор страницы DriversListViewPage
        public DriversListViewPage()
        {
            InitializeComponent();
            driversListV.ItemsSource = Transition.Context.Drivers.ToList();
        }
        #endregion

        #region События кнопок добавления, редактирования и удаления
        private void editBtn_Click(object sender, RoutedEventArgs e)
        {
            Transition.mainFrame.Navigate(new AddEditPage(driversListV.SelectedItem as Drivers));
            driversListV.ItemsSource = Transition.Context.Drivers.ToList();
        }
        private void deleteBtn_Click(object sender, RoutedEventArgs e)
        {
            var itemToDelete = driversListV.SelectedItem as Drivers;
            if (itemToDelete != null)
            {
                if (MessageBox.Show($"Вы действительно хотите удалить запись №{itemToDelete.Id}", "Удаление данных", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    Transition.Context.Drivers.Remove(itemToDelete);
                    try
                    {
                        Transition.Context.SaveChanges();
                        MessageBox.Show($"Данные удалены", "Успешно", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
                else
                    return;
            }
            driversListV.ItemsSource = Transition.Context.Drivers.ToList();
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            Transition.mainFrame.Navigate(new AddEditPage(null));
            driversListV.ItemsSource = Transition.Context.Drivers.ToList();
        }
        #endregion

        #region Отображение кнопок удаления и редактирования
        private void driversListV_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            editBtn.Visibility = Visibility.Visible;
            deleteBtn.Visibility = Visibility.Visible;
        }
        #endregion

        #region Экспорт в .csv
        private void csvExportBtn_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "CSV Files(*.csv)|*.csv";

            string filePath = null;

            if (saveFileDialog.ShowDialog() == true)
            {
                filePath = saveFileDialog.FileName;
            }

            if (filePath == null)
                return;

            using (StreamWriter writer = new StreamWriter(new FileStream(filePath, FileMode.Create, FileAccess.Write), Encoding.UTF8))
            {
                writer.WriteLine("Номер водителя;Фамилия;Имя;Отчество;Серия паспорта;Номер паспорта;Город;Адрес;Компания;Должность;Телефон;Почта;Фото;Комментарий");
                foreach (Drivers dataFile in Transition.Context.Drivers.ToList())
                {
                    writer.WriteLine($"{dataFile.Id};{dataFile.Surname};{dataFile.Name};{dataFile.Middlename};{dataFile.Passport.Substring(0, 4)};{dataFile.Passport.Substring(5, 6)};" +
                        $"{dataFile.City};{dataFile.Address};{dataFile.Company};{dataFile.Jobname};{dataFile.Phone};{dataFile.Email};{dataFile.Photo};{dataFile.Description}");
                }
            }

            MessageBox.Show($"Файл экспортирован: {filePath}", "Экспорт в CSV", MessageBoxButton.OK, MessageBoxImage.Information);

        }
        #endregion
    }
}
