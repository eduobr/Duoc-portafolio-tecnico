using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaConexion;
using CapaAccesoDatos;


namespace CapaLogicaNegocios
{
    public class DaoMedicamento
    {
        private Operaciones operaciones;

        public DaoMedicamento()
        {
            operaciones = new Operaciones();
        }

        public int agregarMedicamento(Medicamento med)
        {
            try
            {
                return operaciones.agregarMedicamento(med);

            }
            catch (Exception e)
            {
                throw new Exception("error en dao agregarMedicamento" + e.Message);
            }
        }

        public int agregarStock(Medicamento med)
        {
            try
            {
                return operaciones.agregarStock(med);

            }
            catch (Exception e)
            {
                throw new Exception("error en dao agregarStock" + e.Message);
            }
        }

        public int descontarMedicamento(Medicamento med)
        {
            try
            {
                return operaciones.descontarMedicamento(med);

            }
            catch (Exception e)
            {
                throw new Exception("error en dao agregarStock" + e.Message);
            }
        }
    }
}
