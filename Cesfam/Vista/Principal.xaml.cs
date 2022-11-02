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
    /// Lógica de interacción para Principal.xaml
    /// </summary>
    public partial class Principal : MetroWindow
    {
        public Principal()
        {
            InitializeComponent();
        }

        
        private void ctlIngresar_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlIngresar.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
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
            flyUsuario.IsOpen = true;
        }
        private void abrir_usuario1_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario1.IsOpen = true;
        }

        private void abrir_usuario2_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario2.IsOpen = true;
        }

        private void abrir_usuario3_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario3.IsOpen = true;
        }
        private void abrir_usuario4_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario4.IsOpen = true;
        }
        private void abrir_usuario5_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario5.IsOpen = true;
        }
        private void abrir_usuario6_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario6.IsOpen = true;
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

        private void ctlIngresar_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void ctlBaja_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void ctlInformeStock_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void ctlRevisar_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void ctlInforme_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void irAtras1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }
    }
}
