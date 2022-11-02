/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Date;
import java.text.DateFormat;


/**
 *
 * @author CITT2017
 */
public class Cl_prescripcion {
    private int codPres;
    private String area;
    private String diagnostico;
    private Date fecha;
    private String tratamiento;
    private String rutMed;
    private String rutPaci;

    public Cl_prescripcion() {
    }

    public Cl_prescripcion(int codPres, String area, String diagnostico, Date fecha, String tratamiento, String rutMed, String rutPaci) {
        this.codPres = codPres;
        this.area = area;
        this.diagnostico = diagnostico;
        this.fecha = fecha;
        this.tratamiento = tratamiento;
        this.rutMed = rutMed;
        this.rutPaci = rutPaci;
    }

    public int getCodPres() {
        return codPres;
    }

    public void setCodPres(int codPres) {
        this.codPres = codPres;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(String tratamiento) {
        this.tratamiento = tratamiento;
    }

    public String getRutMed() {
        return rutMed;
    }

    public void setRutMed(String rutMed) {
        this.rutMed = rutMed;
    }

    public String getRutPaci() {
        return rutPaci;
    }

    public void setRutPaci(String rutPaci) {
        this.rutPaci = rutPaci;
    }

    @Override
    public String toString() {
        return "Cl_prescripcion{" + "codPres=" + codPres + ", area=" + area + ", diagnostico=" + diagnostico + ", fecha=" + fecha + ", tratamiento=" + tratamiento + ", rutMed=" + rutMed + ", rutPaci=" + rutPaci + '}';
    }

  

    

    

    
    
    
}
