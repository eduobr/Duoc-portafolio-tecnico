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
using CapaAccesoDatos;
using CapaConexion;
using CapaLogicaNegocios;
//using Oracle.DataAccess.Client;

namespace Vista
{
    /// <summary>
    /// Lógica de interacción para Principal.xaml
    /// </summary>
    public partial class Principal : MetroWindow
    {
        //conexxion a la base de datos
        //datos para armar string de conexion 
        //String ora_connect = "User Id=system; Password=Duocadmin2016; Data Source=XE ";
        //OracleConnection con = new OracleConnection();
        DaoMedicamento daoMed;
        DaoUsuario daoUsu;
        DaoPrescripcion daoPres;

        public Principal()
        {
           
            InitializeComponent();
            daoMed = new DaoMedicamento();
            daoUsu = new DaoUsuario();
            daoPres = new DaoPrescripcion();
            Usuario u = new Usuario();
            txtUserr.Text = daoUsu.IniciarSesion(u);
            //llenarCombo();
            
            
            //agregamos el string de conexion
            // con.ConnectionString = ora_connect;
        }

        private void llenarCombo()
        {
            throw new NotImplementedException();
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

       

        private void ctlRevisar_MouseEnter(object sender, MouseEventArgs e)
        {
            ctlRevisar.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void ctlRevisar_MouseLeave(object sender, MouseEventArgs e)
        {
            ctlRevisar.BorderThickness = new Thickness(0);
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

        private void abrir_usuario7_MouseEnter(object sender, MouseEventArgs e)
        {
            flyUsuario7.IsOpen = true;
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

        private void btnCerrarSesion_Click(object sender, RoutedEventArgs e)
        {
           
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion1_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion2_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion3_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion4_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion5_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion6_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnCerrarSesion7_Click(object sender, RoutedEventArgs e)
        {
            MainWindow login = new MainWindow();
            login.Show();
            this.Close();
        }

        private void btnIngresarMed_Click(object sender, RoutedEventArgs e)
        {
            Medicamento med = new Medicamento();
            med.Nombre = txtMedicamento.Text;
            med.Componentes = txtComponentes.Text;
            med.Tipo = txtTipo.Text;
            med.Gramaje = int.Parse(txtGramaje.Text);
            int resp = daoMed.agregarMedicamento(med);
            if (resp<0)
            {
                MessageBox.Show("Agrego");
            }else
            {
                MessageBox.Show("No Agrego");
            }
            /*if (txtMedicamento.Text.Equals(""))
            {
                MessageBox.Show("ingrese el nombre del medicamento");
                
                txtMedicamento.Focus();
                return;
            }
            
                if (txtFabricante.Text.Equals(""))
                {
                    MessageBox.Show("ingrese el fabricante");
                    txtFabricante.Focus();
                return;
            }
               
                    if (txtTipo.Text.Equals(""))
                    {
                        MessageBox.Show("Ingrese el tipo de medicamento");
                        txtTipo.Focus();
                return;
            }
                    
                        if (txtComponentes.Text.Equals(""))
                        {
                            MessageBox.Show("Ingrese el contenido");
                            txtComponentes.Focus();
                return;
            }
                       
                            if (txtCantidad.Text.Equals(""))
                            {
                                MessageBox.Show("Ingrese la cantidad del medicamento");
                                txtCantidad.Focus();
                return;
            }
                            
                                if (txtGramaje.Text.Equals(""))
                                {
                                    MessageBox.Show("Ingrese el Gramaje");
                                    txtGramaje.Focus();
                return;
            }*/


          /* con.Open();
            String sql = "";
            OracleCommand query;

            sql = "INSERT INTO  (Nombre Medicamento, )"+"VALUES(:nombreMedicamento, :)";
            query = new OracleCommand(sql,con);
            OracleParameter[] agregarMedica = new OracleParameter[20];
            agregarMedica[0] = query.Parameters.Add("NombreMedicamento",OracleDbType.Varchar2, txtMedicamento, System.Data.ParameterDirection.Input);

            query.ExecuteNonQuery();
            MessageBox.Show("medicamento ingresado exitosamente");
            con.Close();      
                        
                    //conectar oracle y c# en visual studio 2010
                    
                
                
            
            */
        }

        private void btnIngresarStock_Click(object sender, RoutedEventArgs e)
        {
             //Medicamento med = new Medicamento();
            StockDisponible stock = new StockDisponible();
            //stock.codStock = int.Parse(txtCodigo.Text);
            //stock.cantidad = int.Parse(txt);
            //int resp = dao.agregarStock(stock);
            //if (resp < 0)
            //{
            //    MessageBox.Show("Agrego Stock");
            //}
            //else
            //{
            //    MessageBox.Show("No Agrego Stock");
            //}
        }



        private void btnDarBaja_Click_1(object sender, RoutedEventArgs e)
        {
            /*if (txtCantidad.Text.Equals(""))
            {
                MessageBox.Show("ingrese la cantidad");

                txtCantidad.Focus();
                return;
            }*/
            Medicamento med = new Medicamento();
            med.Codigo = int.Parse(txtCodigo1.Text);
            int resp = daoMed.descontarMedicamento(med);
            if (resp < 0)
            {
                MessageBox.Show("Desconto Medicamento");
            }
            else
            {
                MessageBox.Show("No desconto Medicamento");
            }
        }


        private void btnIngresarMedicamento1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void btnIngresarMedicamento1_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento1.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnIngresarMedicamento1_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento1.BorderThickness = new Thickness(0);
        }


        private void btnIngresarMedicamento2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void btnIngresarMedicamento2_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento2.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnIngresarMedicamento2_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento2.BorderThickness = new Thickness(0);
        }

        

        private void btnIngresarMedicamento3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void btnIngresarMedicamento3_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento3.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnIngresarMedicamento3_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento3.BorderThickness = new Thickness(0);
        }

        private void btnIngresarMedicamento4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void btnIngresarMedicamento4_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento4.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnIngresarMedicamento4_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento4.BorderThickness = new Thickness(0);
        }



        private void btnIngresarMedicamento5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void btnIngresarMedicamento5_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento5.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnIngresarMedicamento5_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento5.BorderThickness = new Thickness(0);
        }



        private void btnIngresarMedicamento6_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 1;
        }

        private void btnIngresarMedicamento6_MouseEnter(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento6.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnIngresarMedicamento6_MouseLeave(object sender, MouseEventArgs e)
        {
            btnIngresarMedicamento6.BorderThickness = new Thickness(0);
        }

        private void btnBajaMedicamento1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void btnBajaMedicamento1_MouseEnter(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento1.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnBajaMedicamento1_MouseLeave(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento1.BorderThickness = new Thickness(0);
        }

        private void btnBajaMedicamento2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void btnBajaMedicamento2_MouseEnter(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento2.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnBajaMedicamento2_MouseLeave(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento2.BorderThickness = new Thickness(0);
        }

        private void btnBajaMedicamento3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void btnBajaMedicamento3_MouseEnter(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento3.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnBajaMedicamento3_MouseLeave(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento3.BorderThickness = new Thickness(0);
        }

        private void btnBajaMedicamento4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void btnBajaMedicamento4_MouseEnter(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento4.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnBajaMedicamento4_MouseLeave(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento4.BorderThickness = new Thickness(0);
        }

        private void btnBajaMedicamento5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void btnBajaMedicamento5_MouseEnter(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento5.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnBajaMedicamento5_MouseLeave(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento5.BorderThickness = new Thickness(0);
        }

        private void btnBajaMedicamento6_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 2;
        }

        private void btnBajaMedicamento6_MouseEnter(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento6.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnBajaMedicamento6_MouseLeave(object sender, MouseEventArgs e)
        {
            btnBajaMedicamento6.BorderThickness = new Thickness(0);
        }

        private void btnInformeStock1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void btnInformeStock1_MouseEnter(object sender, MouseEventArgs e)
        {
            btnInformeStock1.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnInformeStock1_MouseLeave(object sender, MouseEventArgs e)
        {
            btnInformeStock1.BorderThickness = new Thickness(0);
        }

        private void btnInformeStock2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void btnInformeStock2_MouseEnter(object sender, MouseEventArgs e)
        {
            btnInformeStock2.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnInformeStock2_MouseLeave(object sender, MouseEventArgs e)
        {
            btnInformeStock2.BorderThickness = new Thickness(0);
        }

        private void btnInformeStock3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void btnInformeStock3_MouseEnter(object sender, MouseEventArgs e)
        {
            btnInformeStock3.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnInformeStock3_MouseLeave(object sender, MouseEventArgs e)
        {
            btnInformeStock3.BorderThickness = new Thickness(0);
        }

        private void btnInformeStock4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void btnInformeStock4_MouseEnter(object sender, MouseEventArgs e)
        {
            btnInformeStock4.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnInformeStock4_MouseLeave(object sender, MouseEventArgs e)
        {
            btnInformeStock4.BorderThickness = new Thickness(0);
        }

        private void btnInformeStock5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void btnInformeStock5_MouseEnter(object sender, MouseEventArgs e)
        {
            btnInformeStock5.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnInformeStock5_MouseLeave(object sender, MouseEventArgs e)
        {
            btnInformeStock5.BorderThickness = new Thickness(0);
        }

        private void btnInformeStock6_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 3;
        }

        private void btnInformeStock6_MouseEnter(object sender, MouseEventArgs e)
        {
            btnInformeStock6.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnInformeStock6_MouseLeave(object sender, MouseEventArgs e)
        {
            btnInformeStock6.BorderThickness = new Thickness(0);
        }

        private void btnRevisarPrescripcion1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void btnRevisarPrescripcion1_MouseEnter(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion1.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnRevisarPrescripcion1_MouseLeave(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion1.BorderThickness = new Thickness(0);
        }

        private void btnRevisarPrescripcion2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void btnRevisarPrescripcion2_MouseEnter(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion2.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnRevisarPrescripcion2_MouseLeave(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion2.BorderThickness = new Thickness(0);
        }

        private void btnRevisarPrescripcion3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void btnRevisarPrescripcion3_MouseEnter(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion3.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnRevisarPrescripcion3_MouseLeave(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion3.BorderThickness = new Thickness(0);
        }

        private void btnRevisarPrescripcion4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void btnRevisarPrescripcion4_MouseEnter(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion4.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnRevisarPrescripcion4_MouseLeave(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion4.BorderThickness = new Thickness(0);
        }

        private void btnRevisarPrescripcion5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void btnRevisarPrescripcion5_MouseEnter(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion5.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnRevisarPrescripcion5_MouseLeave(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion5.BorderThickness = new Thickness(0);
        }

        private void btnRevisarPrescripcion6_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 4;
        }

        private void btnRevisarPrescripcion6_MouseEnter(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion6.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnRevisarPrescripcion6_MouseLeave(object sender, MouseEventArgs e)
        {
            btnRevisarPrescripcion6.BorderThickness = new Thickness(0);
        }

        private void btnMedicamentoReservado1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void btnMedicamentoReservado1_MouseEnter(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado1.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnMedicamentoReservado1_MouseLeave(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado1.BorderThickness = new Thickness(0);
        }

        private void btnMedicamentoReservado2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void btnMedicamentoReservado2_MouseEnter(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado2.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnMedicamentoReservado2_MouseLeave(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado2.BorderThickness = new Thickness(0);
        }

        private void btnMedicamentoReservado3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void btnMedicamentoReservado3_MouseEnter(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado3.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnMedicamentoReservado3_MouseLeave(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado3.BorderThickness = new Thickness(0);
        }

        private void btnMedicamentoReservado4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void btnMedicamentoReservado4_MouseEnter(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado4.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnMedicamentoReservado4_MouseLeave(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado4.BorderThickness = new Thickness(0);
        }

        private void btnMedicamentoReservado5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void btnMedicamentoReservado5_MouseEnter(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado5.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnMedicamentoReservado5_MouseLeave(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado5.BorderThickness = new Thickness(0);
        }

        private void btnMedicamentoReservado6_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 6;
        }

        private void btnMedicamentoReservado6_MouseEnter(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado6.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnMedicamentoReservado6_MouseLeave(object sender, MouseEventArgs e)
        {
            btnMedicamentoReservado6.BorderThickness = new Thickness(0);
        }


        //solo numeros 
        public void SoloNumeros(TextCompositionEventArgs e)
        {
            //se convierte a Ascci del la tecla presionada 
            int ascci = Convert.ToInt32(Convert.ToChar(e.Text));
            //verificamos que se encuentre en ese rango que son entre el 0 y el 9 
            if (ascci >= 48 && ascci <= 57)
                e.Handled = false;
            else e.Handled = true;
        }

        private void txtCantidad_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            // pasamos como parametro TextCompositionEventArgs del TextBox de donde se genera el evento 
            SoloNumeros(e);
        }

        private void cboCantidad_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            SoloNumeros(e);
        }

        private void btnIngresarMedicamento1_Copy_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }

        private void btnIngresarMedicamento1_Copy1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }

        private void btnIngresarMedicamento1_Copy2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }

        private void btnIngresarMedicamento1_Copy3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }

        private void btnIngresarMedicamento1_Copy4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }

        private void btnIngresarMedicamento1_Copy5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 0;
        }

        private void btnStockM_Copy5_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_Copy5_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_1.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_Copy5_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_1.BorderThickness = new Thickness(0);
        }

        private void btnStockM_Copy4_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_Copy4_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_2.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_Copy4_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_2.BorderThickness = new Thickness(0);
        }

        private void btnStockM_Copy3_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_Copy3_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_3.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_Copy3_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_3.BorderThickness = new Thickness(0);
        }

        private void btnStockM_Copy2_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_Copy2_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_4.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_Copy2_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_4.BorderThickness = new Thickness(0);
        }

        private void btnStockM_Copy1_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_Copy1_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_5.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_Copy1_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_5.BorderThickness = new Thickness(0);
        }

        private void btnStockM_Copy_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_Copy_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_6.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_Copy_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_6.BorderThickness = new Thickness(0);
        }

        private void btnStockM_Click(object sender, RoutedEventArgs e)
        {
            TCMain.SelectedIndex = 7;
        }

        private void btnStockM_MouseEnter(object sender, MouseEventArgs e)
        {
            btnStockM_7.BorderThickness = new Thickness(2.0, 2.0, 2.0, 2.0);
        }

        private void btnStockM_MouseLeave(object sender, MouseEventArgs e)
        {
            btnStockM_7.BorderThickness = new Thickness(0);
        }

        private void txtUserr_Copy1_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btnPrescripcion_Click(object sender, RoutedEventArgs e)
        {
            CheckBox c = new CheckBox();
            lstPrescripciones.Items.Clear();
            List<Prescripcion> prescripciones = daoPres.listarPrescripciones();
            foreach (Prescripcion item in prescripciones)
            {
                lstPrescripciones.Items.Add(item.imprimir());               
            }
        }

        private void btnItemSeleccion_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(Convert.ToString(lstPrescripciones.SelectedIndex));
            List<Prescripcion> prescripciones = daoPres.listarPrescripciones();
            foreach (var item in prescripciones)
            {
                if (item.imprimir().Equals(lstPrescripciones.SelectedItem))
                {
                    MessageBox.Show(item.Rut);
                    this.ShowMessageAsync("Codigo Prescripcion",item.CodPres.ToString());
                }
                
            }
            
        }
    }
}
