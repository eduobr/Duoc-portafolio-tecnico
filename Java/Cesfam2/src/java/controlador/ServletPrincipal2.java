/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.DAO_Medico;
import DAO.DAO_prescripcion;
import DAO.DAO_stock;
import clases.Cl_Medicamento;
import clases.Cl_conexion;
import clases.Cl_prescripcion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CITT2017
 */
public class ServletPrincipal2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String boton = request.getParameter("btnAccion");

            if (boton.equals("login")) {
                login(request, response);
            }
            if (boton.equals("Buscar")) {
                mostarStock(request, response);
            }

            if (boton.equals("Verificar")) {
                verificarRut(request, response);
            }
            if (boton.equals("Grabar")) {
                agregarPrescripcion(request, response);
            }
            if (boton.equals("AgregarMed")) {
                agregarReceta(request, response);
            }
            if (boton.equals("Guardar y Salir")) {
                guardarReceta(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletPrincipal2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletPrincipal2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        HttpSession se = request.getSession();

        //String claveEncriptada = DigestUtils.md5Hex(clave);
        Connection cone = new Cl_conexion().Conectar();
        boolean resp = false;
        String retorno = "";
        String tipoUsuario = "";
        String rutMedico = "";
        String tipouser = "";
        String user = request.getParameter("txtUsuario");
        String pass = request.getParameter("txtClave");
        try {
            String sql = "{CALL RECUPERAR_TIPOUSU(?,?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);

            cstmt.setString(1, user);
            cstmt.setString(2, pass);
            cstmt.registerOutParameter(3, Types.VARCHAR);
            cstmt.execute();
            tipouser = cstmt.getString(3);

        } catch (Exception e) {
            request.setAttribute("mensaje", e.getMessage());
        } finally {
            if (tipouser.length() > 2) {
                if (tipouser.equals("medico")) {
                    String sql1 = "{CALL LOGIN_MED(?,?,?,?)}";
                    CallableStatement cstmt = cone.prepareCall(sql1);

                    cstmt.setString(1, user);
                    cstmt.setString(2, pass);
                    cstmt.registerOutParameter(3, Types.VARCHAR);
                    cstmt.registerOutParameter(4, Types.VARCHAR);
                    cstmt.execute();
                    rutMedico = cstmt.getString(4);
                    retorno = cstmt.getString(3);
                    response.sendRedirect("index.jsp");
                    se.setAttribute("usuario", retorno);
                    se.setAttribute("rutMed", rutMedico);

                }else if (tipouser.equals("recepcionista")) {
                    String sql1 = "{CALL LOGIN_REC(?,?,?)}";
                    CallableStatement cstmt = cone.prepareCall(sql1);

                    cstmt.setString(1, user);
                    cstmt.setString(2, pass);
                    cstmt.registerOutParameter(3, Types.VARCHAR);
                    cstmt.execute();
                    retorno = cstmt.getString(3);
                    response.sendRedirect("indexRecepcionista.jsp");
                    se.setAttribute("usuario", retorno);  
                }else{
                    request.setAttribute("error", "no existe el usuario");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("error", "no existe el usuario");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    }

    private void mostarStock(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession se = request.getSession();

        DAO_stock dao = new DAO_stock();
        int resp = dao.stockDisponible(request.getParameter("txtMedicamento"));
        if (resp > 0) {

            request.setAttribute("cantidad", resp);
            response.sendRedirect("stockDisponible.jsp");
            se.setAttribute("cantidad", resp);

        } else {
            request.setAttribute("cantidad", "error");
            response.sendRedirect("stockDisponible.jsp");
            se.setAttribute("cantidad", "No hay Stock");
        }
    }

    private void verificarRut(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        HttpSession se = request.getSession();
        Connection cone = new Cl_conexion().Conectar();
        String retorno = "";
        String resultado = "";
        String rut = request.getParameter("txtRut");
        try {
            String sql = "{CALL IMPRIMIR_PACIENTE(?,?,?,?,?,?,?)}";
            CallableStatement cstmt = cone.prepareCall(sql);

            cstmt.setString(1, request.getParameter("txtRut"));
            cstmt.registerOutParameter(2, Types.VARCHAR);
            cstmt.registerOutParameter(3, Types.VARCHAR);
            cstmt.registerOutParameter(4, Types.VARCHAR);
            cstmt.registerOutParameter(5, Types.VARCHAR);
            cstmt.registerOutParameter(6, Types.VARCHAR);
            cstmt.registerOutParameter(7, Types.VARCHAR);

            cstmt.execute();

            final ResultSet rs = cstmt.getResultSet();

            //retorno = cstmt.getString(3);
            retorno = new String("Nombre: " + cstmt.getString(2) + "\n\n" + "Edad: " + cstmt.getString(3) + "\n\n" + "Telefono: " + cstmt.getString(4) + "\n\n" + "Email: " + cstmt.getString(5) + "\n\n" + "Direccion: " + cstmt.getString(6));
            resultado = cstmt.getString(7);

        } catch (Exception e) {
            request.setAttribute("mensaje", e.getMessage());
        } finally {
            if (resultado.equals("0")) {
                //request.getRequestDispatcher("index.jsp").forward(request, response);
                request.setAttribute("paciente", "No existe el Paciente ");
                se.setAttribute("paciente", "No existe el Paciente ");
                request.getRequestDispatcher("atencionPaciente.jsp").forward(request, response);
            } else {
                request.setAttribute("paciente", retorno);
                se.setAttribute("paciente", retorno);
                se.setAttribute("rutP", rut);
                request.getRequestDispatcher("atencionPaciente.jsp").forward(request, response);
            }
        }
    }

    private void agregarPrescripcion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession se = request.getSession();

        String areaSalud = request.getParameter("txtAreaDeSalud");
        String diagnostico = request.getParameter("txtDiagnostico");
        String tratamiento = request.getParameter("txtTratamiento");
        String rutMedico = request.getParameter("txtRutMedico");
        String rutPaciente = request.getParameter("txtRutPaciente");
        String codPresc = "";

        DAO_prescripcion dao = new DAO_prescripcion();

        // boolean resp = dao.insertarPrescripcion(areaSalud, diagnostico, tratamiento, rutMedico, rutPaciente);
         String resp = dao.insertarPrescripcion(areaSalud, diagnostico, tratamiento, rutMedico, rutPaciente);
        
        if (resp.equals("no")) {
            response.sendRedirect("preescripcionPaciente.jsp");
            
        } else {
            response.sendRedirect("receta.jsp");
            se.setAttribute("codPre", resp);
        }

    }

    private void agregarReceta(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        HttpSession se = request.getSession();

        int duracion = Integer.parseInt(request.getParameter("txtDuracion"));
        int cantidad = Integer.parseInt(request.getParameter("txtCantidadMedicamento"));
        int codPresc= Integer.parseInt(request.getParameter("txtcodpre"));
        //int codPrescr= Integer.parseInt(se.getAttribute("cod").toString());
        int codMed= Integer.parseInt(request.getParameter("cboMed"));

        DAO_Medico dao = new DAO_Medico();

         boolean resp = dao.insertarReceta(duracion, cantidad, codPresc, codMed);
        
        if (resp) {
            response.sendRedirect("receta.jsp");
            se.setAttribute("codPre", codPresc);
            
            
        } else {
            response.sendRedirect("receta.jsp");
            se.setAttribute("codPre", codPresc);
        }
    }

    private void guardarReceta(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        HttpSession se = request.getSession();

        int duracion = Integer.parseInt(request.getParameter("txtDuracion"));
        int cantidad = Integer.parseInt(request.getParameter("txtCantidadMedicamento"));
        int codPresc= Integer.parseInt(request.getParameter("txtcodpre"));
        int codMed= Integer.parseInt(request.getParameter("cboMed"));
        DAO_Medico dao = new DAO_Medico();

         boolean resp = dao.insertarReceta(duracion, cantidad, codPresc, codMed);
        
        if (resp) {
            response.sendRedirect("index.jsp");
            
        } else {
            response.sendRedirect("receta.jsp");
            se.setAttribute("codPre", codPresc);
        }
    }

}
