
package clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Cl_conexion {
   private Connection conexion;

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public Connection Conectar() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            String BaseDeDatos = "jdbc:Oracle:thin:@localhost:1521:XE";
            conexion = DriverManager.getConnection(BaseDeDatos, "cesfamfinal", "cesfamfinal");
            if (conexion != null) {
                System.out.println("Conexion Exitosa");

            } else {
                System.out.println("Conexion fallida");

            }
            return conexion;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    /////////////////////////////////////////
    public boolean sqlOperacion(String sql) {
        try {
            //insertar, eliminar y actualizar
            PreparedStatement pstm = conexion.prepareCall(sql);
            //log.warn("Ejecuto Instruccion sqlOperacion");
            return pstm.executeUpdate() > 0;
        } catch (Exception e) {
            System.out.println("Error Ejecutar:" + e.getMessage());
            return false;
        }
    }

    public ResultSet sqlSeleccion(String sql) {
        try {
            //metodos select
            PreparedStatement pstm = conexion.prepareCall(sql);
            ResultSet rs = pstm.executeQuery();
            //log.warn("Ejecuto Instruccion sqlSeleccion");
            return rs;
        } catch (Exception e) {
            System.out.println("Error Seleccion:" + e.getMessage());
            return null;
        }
    }  
}
