package clases;



import DAO.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
//import java.util.Date;
import java.util.List;

public class test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, ParseException {
        Cl_conexion c = new Cl_conexion();
        c.Conectar();
//        daoPerke s = new daoPerke();
//        List<Cl_Medico> list = s.combo3();
//        for (Cl_Medico ob : list) { 
//            System.out.println(ob.getRut());
//            System.out.println(ob.getEspecialidad());
//        }
//           DAO_Recepcionista d = new DAO_Recepcionista();
//           int box = 1;
           //SimpleDateFormat sdf = new SimpleDateFormat("DD/MM/YYYY HH:mm");
          // String text = df.format("13/06/2017 19:30");
           //System.out.println(text);
          // java.util.Date fecha =  sdf.parse("13/06/2017 19:30");
           //java.sql.Date sqlDate = new java.sql.Date(fecha.getTime());
//        String rutPa = "11";
//        String rutMe = "1";
//        boolean resp = d.ingresarAtencion(box, (Date) fecha, rutPa, rutMe);
//        if (resp) {
//            System.out.println("Agrego");                  
//            
//        } else {
//              System.out.println("Cago");         }
        /*DAO_medicamento dao = new DAO_medicamento();        
        Cl_medicamento m = new Cl_medicamento(4,"asasas","wewewe","gfgfgfg",400,"12/05/2017",10);
        dao.Grabar(m);*/

//        //BufferedReader entrada = new BufferedReader(new InputStreamReader(System.in));
//        //int id;
//        Connection cn = null;
//        try {
//            // Carga el driver de oracle
//            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
//            // Conecta con la base de datos XE 
//            cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "cesfam", "cesfam");
//            // Llamada al procedimiento almacenado
////            CallableStatement cst = cn.prepareCall("{call AGREGAR_MEDICAMENTOS_STOCK (?,?,?,?,?,?,?)}");
//            //CallableStatement cst = cn.prepareCall("insert into stockdisponible values(?,?,?,?)");
//            
//            Date date = new Date();
//            DateFormat fecha = new SimpleDateFormat("dd/MM/YYYY");
//            String convertido = fecha.format(date.getTime());
////            java.sql.Date timestamp = new java.sql.Date(date.getTime());
////            Cl_StockDisponible stock = new Cl_StockDisponible(50, 1, timestamp, 2);
////            System.out.println("fecha:"+convertido);
////             //Definimos los tipos de los parametros de salida del procedimiento almacenado
////            cst.setInt(1, stock.getCodStock());
////            cst.setInt(2, stock.getCantidad());
////            cst.setDate(3,stock.getFecha());
////            cst.setInt(4, stock.getCodMed());
////            cst.setInt(5, 600);
////            cst.setString(6, "12/05/2017");
////            cst.setInt(7, 50);
//
//            // Ejecuta el procedimiento almacenado
////            cst.execute();
//            
//            
//            
////            DAO_stock daostock = new DAO_stock();
////            
////            
//////            
//////            daostock.insertarStock(stock);
////            
////            daostock.stockDisponible("p");
//            
////            System.out.println(timestamp);
//            System.out.println(convertido);
//          DAO_prescripcion dao = new DAO_prescripcion();
//            
//            Cl_prescripcion pres = new Cl_prescripcion();
//          
//            pres.setArea("jfhfhfhf");
//            pres.setDiagnostico("hjfhfhfhf");
//            pres.getFecha();
//            pres.setTratamiento("fdhfhdfh");
//
//           dao.insertarPrescripcion(pres,"1","");
//           
//           System.out.println(pres);
//            
//            
//        } catch (SQLException ex) {
//            System.out.println("Error: " + ex.getMessage());
//        } finally {
//            try {
//                cn.close();
//            } catch (SQLException ex) {
//                System.out.println("Error: " + ex.getMessage());
//            }
//        }

    }

}
