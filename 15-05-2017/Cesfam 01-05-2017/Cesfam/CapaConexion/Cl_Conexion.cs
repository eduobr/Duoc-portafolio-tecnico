using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Oracle.DataAccess.Client;


namespace CapaConexion
{
    public class Conexion
    {
        private OracleConnection conn;
        private String cadena = "Data Source=XE;USER ID=BASEBETA;PASSWORD=BASEBETA";

        public Conexion()
        {
            try
            {
                if (conn == null)
                {
                    conn = new OracleConnection(cadena);
                    //Console.WriteLine("entre");

                }
            }
            catch (Exception ex)
            {

                Console.WriteLine("error" + ex.Message);
            }

        }

        //retornamos el estado de la conexion
        public OracleConnection obtenerConexion()
        {
            return conn;
        }

    }
}
