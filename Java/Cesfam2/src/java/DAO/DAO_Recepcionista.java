/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import clases.Cl_Medico;
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
import java.util.ArrayList;
//import java.util.Date;
import java.util.List;
import javax.activation.DataSource;
import javax.annotation.Resource;
import oracle.jdbc.OracleTypes;
import org.apache.log4j.FileAppender;
/**
 *
 * @author Coke
 */
public class DAO_Recepcionista {
    
    public boolean ingresarPaciente(String rut,String nom,String ape1,String ape2,int edad,String tel,String email,String dir) {

       try {
            Connection cone;
            cone= new Cl_conexion().Conectar();
            String sql = "{CALL INGRESAR_PACIENTE(?,?,?,?,?,?,?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);

           cstmt.setString(1, rut);
           cstmt.setString(2, nom);
           cstmt.setString(3, ape1);
           cstmt.setString(4, ape2);
           cstmt.setInt(5, edad);
           cstmt.setString(6, tel);
           cstmt.setString(7, email);
           cstmt.setString(8, dir);           

           cstmt.execute();

           final ResultSet rs = cstmt.getResultSet();
           
           return true;
           
        } catch (SQLException ex) {
            System.out.println("error"+ex.getMessage());
            return false;
        }
    }


    
    public boolean ingresarAtencion(int box,String fecha,String rut_Pacient,String rut_Med) {

       try {
            Connection cone;
            cone= new Cl_conexion().Conectar();
            String sql = "{CALL INGRESAR_ATENCION(?,?,?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);

           cstmt.setInt(1, box);
           cstmt.setString(2, fecha);
           cstmt.setString(3, rut_Pacient);
           cstmt.setString(4, rut_Med);

           cstmt.execute();
           final ResultSet rs = cstmt.getResultSet();
           return true;
           
        } catch (SQLException ex) {
            System.out.println("error"+ex.getMessage());
            return false;
        }
    }
    
    public List<Cl_Medico> comboEspecialidad() throws SQLException {
    Connection conn = null;
    CallableStatement cstmt = null;
    ResultSet rs = null;
    String sql = "{call comboEspecialidad(?)}";
    List<Cl_Medico> bilers = new ArrayList<Cl_Medico>();

    try {
        conn = new Cl_conexion().Conectar();
         cstmt = conn.prepareCall(sql);

            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.executeUpdate();
            rs = (ResultSet) cstmt.getObject(1);

        while (rs.next()) {
            Cl_Medico med = new Cl_Medico();
            med.setRut(rs.getString("RUT"));
            med.setEspecialidad(rs.getString("ESPECIALIDAD"));
            bilers.add(med);
        }
    } finally {

            if (rs != null) {
                rs.close();
            }

            if (cstmt != null) {
                cstmt.close();
            }

            if (conn != null) {
                conn.close();
            }

        }

    return bilers;
}

}
