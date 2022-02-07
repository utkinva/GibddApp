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
using GibddApp.Entities;
using GibddApp.UI.Pages;

namespace GibddApp.UI.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        Drivers currentDriver;
        public AddEditPage(Drivers driver)
        {
            InitializeComponent();
            currentDriver = driver ?? new Drivers();
            DataContext = currentDriver;
        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Transition.mainFrame.GoBack();
        }

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(currentDriver.Surname))
                errors.AppendLine("Фамилия");
            if (string.IsNullOrWhiteSpace(currentDriver.Name))
                errors.AppendLine("Имя");
            if (string.IsNullOrWhiteSpace(currentDriver.Middlename))
                errors.AppendLine("Отчество");
            if (string.IsNullOrWhiteSpace(currentDriver.Passport))
                errors.AppendLine("Паспорт");
            if (string.IsNullOrWhiteSpace(currentDriver.City))
                errors.AppendLine("Город");
            if (string.IsNullOrWhiteSpace(currentDriver.Address))
                errors.AppendLine("Адрес");
            if (string.IsNullOrWhiteSpace(currentDriver.Company))
                errors.AppendLine("Компания");
            if (string.IsNullOrWhiteSpace(currentDriver.Jobname))
                errors.AppendLine("Должность");
            if (string.IsNullOrWhiteSpace(currentDriver.Phone))
                errors.AppendLine("Телефон");
            if (string.IsNullOrWhiteSpace(currentDriver.Email))
                errors.AppendLine("Почта");
            if (string.IsNullOrWhiteSpace(currentDriver.Photo))
                errors.AppendLine("Фото");



            if (string.IsNullOrWhiteSpace(currentDriver.Photo))
                currentDriver.Phone = "";

            if (errors.Length > 0)
            {
                MessageBox.Show($"Заполните следующие поля:\n{errors.ToString()}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (currentDriver.Id == 0)
            {
                Transition.Context.Drivers.Add(currentDriver);
            }

            try
            {
                Transition.Context.SaveChanges();
                MessageBox.Show($"Данные сохранены", "Успешно", MessageBoxButton.OK, MessageBoxImage.Information);
                Transition.mainFrame.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
