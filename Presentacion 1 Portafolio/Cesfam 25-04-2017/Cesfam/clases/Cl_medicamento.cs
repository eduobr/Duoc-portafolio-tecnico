using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace clases
{
   public class Cl_medicamento
    {

        private int codMedicamento;

        public int CodMedicamento
        {
            get { return codMedicamento; }
            set { codMedicamento = value; }
        }

        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        private string componentes;

        public string Componentes
        {
            get { return componentes; }
            set { componentes = value; }
        }



        private string tipo;

        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }

        private int gramaje;

        public int Gramaje
        {
            get { return gramaje; }
            set { gramaje = value; }
        }

        private DateTime fecVencimiento;

        public DateTime FecNacimiento
        {
            get { return fecVencimiento; }
            set { fecVencimiento = value; }
        }

        private int cantidad;

        public int Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }



        
    }
}
