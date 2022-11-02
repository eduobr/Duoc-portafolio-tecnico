
package DAO;

import clases.Cl_conexion;
import clases.Cl_prescripcion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;


public class DAO_prescripcion {
     public String insertarPrescripcion(String area, String diag, String trat,String rutM,String rutP) {
         String res = "";
       try {
            Connection cone;
            cone= new Cl_conexion().Conectar();
            String sql = "{CALL AGREGAR_PRESCRIPCION(?,?,?,?,?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);

           cstmt.setString(1, area);
           cstmt.setString(2, diag);
           cstmt.setString(3, trat);
           cstmt.setString(4, rutM);
           cstmt.setString(5, rutP);  
           cstmt.registerOutParameter(6, OracleTypes.INTEGER);

           cstmt.execute();

           final ResultSet rs = cstmt.getResultSet();
           int o =  cstmt.getInt(6);
           res = ""+o;
           return res;
           
        } catch (SQLException ex) {
            res = "no";
            return res;
        }
    }
}

