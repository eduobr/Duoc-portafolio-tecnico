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
public class Cl_Medico {
    private String rut;
    private String nombre; 
    private String apellidoP; 
    private String apellidoM; 
    private int edad; 
    private String telefono; 
    private String especialidad; 
    private int codUsu;

    public Cl_Medico() {
    }

    public Cl_Medico(String rut, String nombre, String apellidoP, String apellidoM, int edad, String telefono, String especialidad, int codUsu) {
        this.rut = rut;
        this.nombre = nombre;
        this.apellidoP = apellidoP;
        this.apellidoM = apellidoM;
        this.edad = edad;
        this.telefono = telefono;
        this.especialidad = especialidad;
        this.codUsu = codUsu;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoP() {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP) {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM) {
        this.apellidoM = apellidoM;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public int getCodUsu() {
        return codUsu;
    }

    public void setCodUsu(int codUsu) {
        this.codUsu = codUsu;
    }

    @Override
    public String toString() {
        return "Cl_Medico{" + "rut=" + rut + ", nombre=" + nombre + ", apellidoP=" + apellidoP + ", apellidoM=" + apellidoM + ", edad=" + edad + ", telefono=" + telefono + ", especialidad=" + especialidad + ", codUsu=" + codUsu + '}';
    }
    
    
}
