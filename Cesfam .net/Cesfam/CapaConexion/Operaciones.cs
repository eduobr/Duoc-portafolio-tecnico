using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;
using CapaAccesoDatos;

namespace CapaConexion
{
    public class Operaciones
    {
        private OracleConnection conn;

        public Operaciones()
        {
            conn = new Conexion().obtenerConexion();

        }

        private void cerrarConexion()
        {
            conn.Close();
        }

        private void abrirConexion()
        {
            conn.Open();
        }

        public int sqlOperacion(String sql)
        {
            try
            {
                //establece una conexion entre la consulta sql y la base de datos
                OracleCommand cmd = new OracleCommand(sql, conn);
                //abrimos la conexion
                abrirConexion();
                //recuperamos la cantidad de filas afectadas
                int resp = cmd.ExecuteNonQuery(); //ejecuta la consulta
                //cerramos la conexion
                cerrarConexion();
                //retornamos la cantidad de filas afectadas
                return resp;
            }
            catch (Exception)
            {
                cerrarConexion();
                throw new Exception("error al generar la consulta");
            }


        }

        public int agregarMedicamento(Medicamento med)
        {
            try
            {
                OracleCommand cmd = new OracleCommand("AGREGAR_MEDICAMENTOS", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new OracleParameter("P_NOMBRE_MED", med.Nombre));
                cmd.Parameters.Add(new OracleParameter("P_COMP_MED", med.Componentes));
                cmd.Parameters.Add(new OracleParameter("P_TIPO_MED", med.Tipo));
                cmd.Parameters.Add(new OracleParameter("P_GR_MED", med.Gramaje));
                abrirConexion();
                int resp = cmd.ExecuteNonQuery();
                cerrarConexion();
                return resp;

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("Error en el procedimiento agregar" + ex.Message);
            }
        }

        public int agregarStock(Medicamento med)
        {
            try
            {
                OracleCommand cmd = new OracleCommand("AGREGAR_STOCK", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new OracleParameter("P_COD_MED", med.Codigo));
                abrirConexion();
                int resp = cmd.ExecuteNonQuery();
                cerrarConexion();
                return resp;

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("Error en el procedimiento agregar stock" + ex.Message);
            }
        }

        public int descontarMedicamento(Medicamento med)
        {
            try
            {
                OracleCommand cmd = new OracleCommand("DESCONTAR_MEDICAMENTO ", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new OracleParameter("P_COD_MED", med.Codigo));
                abrirConexion();
                int resp = cmd.ExecuteNonQuery();
                cerrarConexion();
                return resp;

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("Error en el procedimiento descontar Medicamento" + ex.Message);
            }
        }


        public string IniciarSesion(Usuario un)
        {
            //conn.Open();
            OracleCommand cmd = new OracleCommand("LOGIN_FUNCIONARIO", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new OracleParameter("P_USER", un.user));
            cmd.Parameters.Add(new OracleParameter("P_PASS", un.password));

            OracleParameter oParam = new OracleParameter("P_NOMBRE", OracleDbType.Varchar2);
            oParam.Direction = ParameterDirection.Output;
            oParam.Size = 128;
            cmd.Parameters.Add(oParam);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            String resultado = cmd.Parameters["P_NOMBRE"].Value.ToString();

            return resultado;

        }

        public List<Prescripcion> cargarPrescripciones()
        {
            try
            {
                OracleCommand cmd = new OracleCommand("PKG_PRESCRIPCION.VER_PRESCRIPCION",conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("V_PRES",OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                conn.Open();
                OracleDataReader dr = cmd.ExecuteReader();
                List<Prescripcion> lista = new List<Prescripcion>();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Prescripcion p = new Prescripcion();
                        p.CodPres = Convert.ToInt32(dr["CODPRESCRIPCION"]);
                        p.Rut = Convert.ToString(dr["RUT"]);
                        p.Nombre = Convert.ToString(dr["NOMBRE"]);
                        p.Diagnostico = Convert.ToString(dr["Diagnostico"]);
                        lista.Add(p);
                    }
                }
                dr.Close();
                conn.Close();
                return lista;

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("Error en la funcion cargar prescripcion"+ex.Message);
            }
        }      

        /*public SqlDataReader buscarMedicamento()
        {

            try
            {
                SqlCommand cmd = new SqlCommand("buscar_medicamento", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                abrirConexion();
                SqlDataReader dr = cmd.ExecuteReader();
                return dr;
            }
            catch (Exception ex)
            {

                cerrarConexion();
                throw new Exception("Error operaciones buscar medicamento" + ex.Message);
            }
        }

        public int eliminarMedicamento(int cod)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("eliminar_medicamento", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@cod", cod));
                abrirConexion();
                int resp = cmd.ExecuteNonQuery();
                cerrarConexion();
                return resp;
            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("error elminar procedimiento" + ex.Message);
            }
        }

        public int modificarMedicamento(Medicamento med)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("actualizar_medicamento", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@cod", med.Codigo_medicamento));
                cmd.Parameters.Add(new SqlParameter("@nombre", med.Nombre));
                abrirConexion();
                int resp = cmd.ExecuteNonQuery();
                cerrarConexion();
                return resp;
            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("error actualizar procedimiento" + ex.Message);
            }
        }

        public SqlDataReader sqlSeleccion(String sql)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                abrirConexion();
                SqlDataReader dr = cmd.ExecuteReader();
                return dr;


            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("Error al realizar el select en operaciones" + ex.Message);
            }
        }

        public int existeUsuario(Usuario user)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("procedure_login", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@user", user.Nombre));
                cmd.Parameters.Add(new SqlParameter("@pass", user.Contrasenia));
                conn.Open();
                int id = Convert.ToInt32(cmd.ExecuteScalar());
                conn.Close();
                return id;

            }
            catch (Exception ex)
            {
                conn.Close();
                throw new Exception("Error procedimientoUsuario" + ex.Message);
            }
        }*/
    }
}
