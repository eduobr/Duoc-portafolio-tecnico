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
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Behaviours;
using CapaAccesoDatos;
using CapaLogicaNegocios;

namespace Vista
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        DaoUsuario daoUsuario;
        public MainWindow()
        {
            InitializeComponent();
            daoUsuario = new DaoUsuario();
        }

        private async void btnIngresar_Click(object sender, RoutedEventArgs e)
        {
            Usuario user= new Usuario();
            user.Nombre = txtUsuario.Text;
            user.Contrasena = txtContrasena.Password;
            int resp = daoUsuario.existe_Usuario(user);
            if (resp>0)
            {
                MessageBox.Show("Existe");
            }else
            {
                MessageBox.Show(resp.ToString());
            }
            /*if (txtUsuario.Text.Equals("admin") && txtContrasena.Password.Equals("admin"))
            {
                await this.ShowMessageAsync("exito", "Tus datos son correctos");
                Principal principal = new Principal();
                this.Close();
                principal.Show();
            }
            else
            {
                await this.ShowMessageAsync("error","Verifica tus datos");
            }*/
        }

        private void btnIngresar_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresar.Height=26;
            btnIngresar.Width = 130;
        }

        private void btnIngresar_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresar.Height = 23;
            btnIngresar.Width = 122;
        }
    }
}
