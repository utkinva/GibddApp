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

namespace GibddApp.UI.Pages
{
    /// <summary>
    /// Логика взаимодействия для DriversListViewPage.xaml
    /// </summary>
    public partial class DriversListViewPage : Page
    {
        public DriversListViewPage()
        {
            InitializeComponent();
            driversListV.ItemsSource = Transition.Context.Drivers.ToList();
        }
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

        private void driversListV_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            editBtn.Visibility = Visibility.Visible;
            deleteBtn.Visibility = Visibility.Visible;
        }
    }
}
