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
using GibddApp.Entities;
using GibddApp.Utilities;

namespace GibddApp.UI.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        #region Конструктор страницы AuthorizationPage
        List<Users> usersList = Transition.Context.Users.ToList();
        public AuthorizationPage()
        {
            InitializeComponent();

        }
        #endregion

        #region Событие кнопки войти
        private void loginBtn_Click(object sender, RoutedEventArgs e)
        {
            foreach (var item in usersList)
            {
                if (loginTxtBox.Text == item.Login.ToString() || passwordTxtBox.ToString() == item.Password.ToString())
                {
                    Transition.mainFrame.Navigate(new DriversListViewPage());
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
        #endregion
    }
}
