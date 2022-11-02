using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaAccesoDatos
{
    public class Medicamento
    {
        public int Codigo { get; set; }
        public String Nombre { get; set; }
        public String Componentes { get; set; }
        public String Tipo { get; set; }
        public int Gramaje { get; set; }
        public DateTime FecVencimiento { get; set; }
        public int Cantidad { get; set; }
    }
}
