using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaAccesoDatos;
using CapaConexion;

namespace CapaLogicaNegocios
{
    public class DaoPrescripcion
    {
        private Operaciones operaciones;

        public DaoPrescripcion()
        {
            operaciones = new Operaciones();
        }

        public List<Prescripcion> listarPrescripciones()
        {
            return operaciones.cargarPrescripciones();
        }
    }
}
