/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import clases.Cl_Medicamento;
import clases.Cl_Medico;
import clases.Cl_conexion;
import clases.Cl_receta;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Coke
 */
public class DAO_Medico {

    public boolean insertarReceta(int duracion, int cant, int codPre, int codMe) {
        try {
            Connection cone;
            cone = new Cl_conexion().Conectar();
            String sql = "{CALL AGREGAR_RECETA(?,?,?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);
            cstmt.setInt(1, duracion);
            cstmt.setInt(2, cant);
            cstmt.setInt(3, codPre);
            cstmt.setInt(4, codMe);
            cstmt.execute();
            final ResultSet rs = cstmt.getResultSet();
            return true;

        } catch (SQLException ex) {
            System.out.println("error" + ex.getMessage());
            return false;
        }
    }
    
    public List<Cl_Medicamento> comboReceta() throws SQLException {
    Connection conn = null;
    CallableStatement cstmt = null;
    ResultSet rs = null;
    String sql = "{call comboReceta(?)}";
    List<Cl_Medicamento> recet = new ArrayList<Cl_Medicamento>();

    try {
        conn = new Cl_conexion().Conectar();
         cstmt = conn.prepareCall(sql);

            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.executeUpdate();
            rs = (ResultSet) cstmt.getObject(1);

        while (rs.next()) {
            Cl_Medicamento medi = new Cl_Medicamento();
            medi.setCodMedicamento(Integer.parseInt(rs.getString("CODMEDICAMENTO")));
            medi.setNombre(rs.getString("NOMBRE"));
            recet.add(medi);
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

    return recet;
}
    
    public List<Cl_receta> verReceta1(int codPres) throws SQLException {
    Connection conn = null;
    CallableStatement cstmt = null;
    ResultSet rs = null;
    String sql = "{call VERRECETA1(?,?)}";
    //List<Cl_Medicamento> receta = new ArrayList<Cl_Medicamento>();
    List<Cl_receta> receta = new ArrayList<Cl_receta>();

    try {
        conn = new Cl_conexion().Conectar();
         cstmt = conn.prepareCall(sql);
            cstmt.setInt(1, codPres);
            cstmt.registerOutParameter(2, OracleTypes.CURSOR);
            cstmt.executeUpdate();
            rs = (ResultSet) cstmt.getObject(2);

        while (rs.next()) {
            Cl_Medicamento medi = new Cl_Medicamento();
            Cl_receta re = new Cl_receta();
           // medi.setNombre(rs.getString("NOMBRE"));
            //medi.setTipo(rs.getString("TIPO"));
            re.setCantidad(rs.getInt("CANTIDAD"));
            re.setDuracion(rs.getInt("DURACIONMEDICACION"));
            re.setNombre(rs.getString("NOMBRE"));
            re.setTipo(rs.getString("TIPO"));

            receta.add(re);
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

    return receta;
}
}
