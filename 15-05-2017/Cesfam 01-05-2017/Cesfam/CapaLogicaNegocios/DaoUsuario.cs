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

        public int existe_Usuario(Usuario user)
        {
            try
            {
                return operaciones.existeUsuario(user);
            }
            catch(Exception e)
            {
                throw new Exception("error en dao existeUsuario" + e.Message);
            }
        }
    }
}
