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
using CapaConexion;
using CapaLogicaNegocios;

namespace Vista
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        DaoUsuario dao;
        public MainWindow()
        {
            InitializeComponent();
            dao = new DaoUsuario();
        }

        private async void btnIngresar_Click(object sender, RoutedEventArgs e)

        {
            
            try
            {
                Usuario u = new Usuario();
                u.user = txtUsuario.Text;
                u.password = txtContrasena.Password;
                //int resp = Convert.ToInt32(dao.IniciarSesion(u));
                //bool resp = dao.IniciarSesion(u);
                string resp = dao.IniciarSesion(u);

                if (resp.Equals("1"))
                {
                    await this.ShowMessageAsync("error", "Verifica tus datos");
                }
                else
                {
                    String d = dao.IniciarSesion(u);
                    await this.ShowMessageAsync("exito", "Bienvenido " + resp);
                    Principal principal = new Principal();
                    
                    principal.txtUserr.Text =  resp;
                    principal.txtUserr1.Text = resp;
                    principal.txtUserr2.Text = resp;
                    principal.txtUserr3.Text = resp;
                    principal.txtUserr4.Text = resp;
                    principal.txtUserr5.Text = resp;
                    principal.txtUserr6.Text = resp;
                    principal.txtUserr7.Text = resp;

                    this.Close();
                    principal.Show();                    
                }
            }
            catch (Exception ew)
            {

                throw new Exception("error en dao IniciarSesion" + ew.Message);
            }
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
