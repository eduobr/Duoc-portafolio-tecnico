
package clases;


public class Cl_receta {
    private int codreceta;
    private int duracion;
    private int cantidad;
    private String isentregado;
    private String isreservado;
    private String nombre;
    private String tipo;
    private int codprescripcion;
    private int codmedicamento;
    private Cl_Medicamento med;

    public Cl_receta() {
    }


    public Cl_receta(int codreceta, int duracion, int cantidad, String isentregado, String isreservado, int codprescripcion, int codmedicamento) {
        this.codreceta = codreceta;
        this.duracion = duracion;
        this.cantidad = cantidad;
        this.isentregado = isentregado;
        this.isreservado = isreservado;
        this.codprescripcion = codprescripcion;
        this.codmedicamento = codmedicamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    

    public Cl_Medicamento getMed() {
        return med;
    }

    public void setMed(Cl_Medicamento med) {
        this.med = med;
    }

    public int getCodreceta() {
        return codreceta;
    }

    public void setCodreceta(int codreceta) {
        this.codreceta = codreceta;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getIsentregado() {
        return isentregado;
    }

    public void setIsentregado(String isentregado) {
        this.isentregado = isentregado;
    }

    public String getIsreservado() {
        return isreservado;
    }

    public void setIsreservado(String isreservado) {
        this.isreservado = isreservado;
    }

    public int getCodprescripcion() {
        return codprescripcion;
    }

    public void setCodprescripcion(int codprescripcion) {
        this.codprescripcion = codprescripcion;
    }

    public int getCodmedicamento() {
        return codmedicamento;
    }

    public void setCodmedicamento(int codmedicamento) {
        this.codmedicamento = codmedicamento;
    }

    @Override
    public String toString() {
        return "Cl_receta{" + "codreceta=" + codreceta + ", duracion=" + duracion + ", cantidad=" + cantidad + ", isentregado=" + isentregado + ", isreservado=" + isreservado + ", codprescripcion=" + codprescripcion + ", codmedicamento=" + codmedicamento + '}';
    }
    
    
    
}
