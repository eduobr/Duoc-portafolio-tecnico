using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaAccesoDatos
{
    public class Prescripcion
    {
        public int CodPres { get; set; }
        public String Rut { get; set; }
        public String Nombre { get; set; }
        public String Diagnostico { get; set; }

        public string imprimir()
        {
            return string.Format("\n Rut:{0}, Nombre:{1}, Diagnostico:{2}",Rut,Nombre,Diagnostico);
        }
    }
}
