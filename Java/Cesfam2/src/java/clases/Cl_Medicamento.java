/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Coke
 */
public class Cl_Medicamento {
    int codMedicamento;
    String nombre;
    String componentes;
    String tipo;
    int gramaje;

    public Cl_Medicamento() {
    }

    public Cl_Medicamento(int codMedicamento, String nombre, String componentes, String tipo, int gramaje) {
        this.codMedicamento = codMedicamento;
        this.nombre = nombre;
        this.componentes = componentes;
        this.tipo = tipo;
        this.gramaje = gramaje;
    }

    public int getCodMedicamento() {
        return codMedicamento;
    }

    public void setCodMedicamento(int codMedicamento) {
        this.codMedicamento = codMedicamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getComponentes() {
        return componentes;
    }

    public void setComponentes(String componentes) {
        this.componentes = componentes;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getGramaje() {
        return gramaje;
    }

    public void setGramaje(int gramaje) {
        this.gramaje = gramaje;
    }

    @Override
    public String toString() {
        return "Cl_Medicamento{" + "codMedicamento=" + codMedicamento + ", nombre=" + nombre + ", componentes=" + componentes + ", tipo=" + tipo + ", gramaje=" + gramaje + '}';
    }
    
    
}
