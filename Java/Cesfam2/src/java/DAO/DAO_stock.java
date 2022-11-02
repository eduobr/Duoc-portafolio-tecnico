
package DAO;

import clases.Cl_conexion;
import clases.Cl_StockDisponible;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.activation.DataSource;
import javax.annotation.Resource;
import org.apache.log4j.FileAppender;


public class DAO_stock {
    
    public int insertarStock(Cl_StockDisponible stock) {
       try {
            Connection cone;
            cone= new Cl_conexion().Conectar();
            CallableStatement cst= cone.prepareCall("{CALL INSERTARSTOCK(?,?,?,?)}");
            cst.setInt(1, stock.getCodStock());
            cst.setInt(2, stock.getCantidad());
            cst.setDate(3, stock.getFecha());
            cst.setInt(4, stock.getCodMed());
           
             
          return cst.executeUpdate();
            
            
            
            
            
        } catch (Exception e)
        {
            System.out.println("Error:"+e.getMessage());
            return 0;
        }
    }


  
    public int stockDisponible(String nombreMedicamento) {

       try {
             Connection cone;
            cone= new Cl_conexion().Conectar();
            String sql = "{CALL BUSCAR_MED(?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);

           cstmt.setString(1, nombreMedicamento);

           cstmt.registerOutParameter(2, Types.INTEGER);

           cstmt.execute();

           final ResultSet rs = cstmt.getResultSet();

           int cantidad = cstmt.getInt(2);
           
           System.out.println("cantidad : "+cantidad);
           return cantidad;
           
        } catch (SQLException ex) {
            System.out.println("error"+ex.getMessage());
            return 0;
        }
    }


    public int ModificarStock(int codStock, int cantidad, Date fecha, int codMed) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

    
    
    
}
