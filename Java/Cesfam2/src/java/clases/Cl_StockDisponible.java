/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Date;


public class Cl_StockDisponible {
    
    private int codStock;
    private int cantidad;
    private Date fecha;
    private int codMed;

    public Cl_StockDisponible() {
    }

    public Cl_StockDisponible(int codStock, int cantidad, Date fecha, int codMed) {
        this.codStock = codStock;
        this.cantidad = cantidad;
        this.fecha = fecha;
        this.codMed = codMed;
    }

    public int getCodStock() {
        return codStock;
    }

    public void setCodStock(int codStock) {
        this.codStock = codStock;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCodMed() {
        return codMed;
    }

    public void setCodMed(int codMed) {
        this.codMed = codMed;
    }

    @Override
    public String toString() {
        return "Cl_StockDisponible{" + "codStock=" + codStock 
                + ", cantidad=" + cantidad 
                + ", fecha=" + fecha 
                + ", codMed=" + codMed + '}';
    }
    
}
