using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaConexion;
using CapaAccesoDatos;

namespace CapaLogicaNegocios
{
    public class DaoUsuario
    {
        private Operaciones operaciones;

        public DaoUsuario()
        {
            operaciones = new Operaciones();
        }

        
        public string IniciarSesion(Usuario un)
        {
            try
            {
                return operaciones.IniciarSesion(un);
                
            }
            catch (Exception e)
            {
                throw new Exception("error en dao IniciarSesion1" + e.Message);

            }
        }
        

    }
}
