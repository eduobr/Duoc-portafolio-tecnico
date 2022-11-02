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
using System.Windows.Shapes;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Behaviours;

namespace Vista
{
    /// <summary>
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : Window
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void ctlIngresar_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlIngresar.BorderThickness= new Thickness(2.0,2.0,2.0,2.0);
        }

        private void ctlIngresar_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlIngresar.BorderThickness = new Thickness(0);
        }

        private void ctlBaja_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlBaja.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlBaja_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlBaja.BorderThickness = new Thickness(0);
        }

        private void ctlEntrega_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlEntrega.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlEntrega_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlEntrega.BorderThickness = new Thickness(0);
        }

        private void ctlRevisar_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlRevisar.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlRevisar_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlRevisar.BorderThickness = new Thickness(0);
        }

        private void ctlReservar_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlReservar.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlReservar_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlReservar.BorderThickness = new Thickness(0);
        }

        private void ctlInforme_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlInforme.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlInforme_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlInforme.BorderThickness = new Thickness(0);
        }

        private void ctlInformeStock_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlInformeStock.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlInformeStock_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlInformeStock.BorderThickness = new Thickness(0);
        }

        private void abrir_usuario_MouseEnter(object sender, MouseEventArgs e)
        {
            FlyUsuario.IsOpen = true;
        }

        private void btnEditarPerfil_MouseEnter(object sender, MouseEventArgs e)
        {
            btnEditarPerfil.Height = 30;
            btnEditarPerfil.Width = 111;
        }

        private void btnEditarPerfil_MouseLeave(object sender, MouseEventArgs e)
        {
            btnEditarPerfil.Height = 28;
            btnEditarPerfil.Width = 101;
        }

        private void btnCerrarSesion_MouseEnter(object sender, MouseEventArgs e)
        {
            btnCerrarSesion.Height = 30;
            btnCerrarSesion.Width = 111;
        }

        private void btnCerrarSesion_MouseLeave(object sender, MouseEventArgs e)
        {
            btnCerrarSesion.Height = 28;
            btnCerrarSesion.Width = 101;
        }

        private void ctlBaja_Click(object sender, RoutedEventArgs e)
        {
            BajaMedicamentos bMedicamento = new BajaMedicamentos();
            this.Close();
            bMedicamento.Show();
        }
    }
}
