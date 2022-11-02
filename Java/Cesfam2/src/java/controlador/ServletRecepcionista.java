/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.DAO_Recepcionista;
import clases.Cl_conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Coke
 */
public class ServletRecepcionista extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String boton = request.getParameter("btnAccion");

            if (boton.equals("Grabar")) {
                agregarPAciente(request, response);
            }
            if (boton.equals("Reservar")) {
                reservarHora(request, response);
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
        } catch (ParseException ex) {
            Logger.getLogger(ServletRecepcionista.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ParseException ex) {
            Logger.getLogger(ServletRecepcionista.class.getName()).log(Level.SEVERE, null, ex);
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

    private void agregarPAciente(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession se = request.getSession();
        
        DAO_Recepcionista dao = new DAO_Recepcionista();
        String rut = request.getParameter("txtRut");
        String nombre = request.getParameter("txtNombrePaciente");
        String apellidoP = request.getParameter("txtApellidoPPaciente");
        String apellidoM = request.getParameter("txtApellidoMPaciente");
        int edad = Integer.parseInt(request.getParameter("txtEdadPaciente"));
        String telefono = request.getParameter("txtTelefonoPaciente");
        String email = request.getParameter("txtEmailPaciente");
        String direccion = request.getParameter("txtDirPaciente");
        
        boolean resp = dao.ingresarPaciente(rut, nombre, apellidoP, apellidoM, edad, telefono, email, direccion);
        if (resp) {
            response.sendRedirect("reservaHora.jsp");                   
            se.setAttribute("rutpac", rut);
            
        } else {
            response.sendRedirect("agregarPaciente.jsp");
        }
    }

    private void reservarHora(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        
        HttpSession se = request.getSession();
        
        DAO_Recepcionista dao = new DAO_Recepcionista();
        int box = Integer.parseInt(request.getParameter("cboBox"));
        int hora = Integer.parseInt(request.getParameter("txthora"));
        int minutos = Integer.parseInt(request.getParameter("txtmin"));
        String rutMedico = request.getParameter("cboEsp");
        String rutPac = request.getParameter("txtrutPac");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        //DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
        //Date fec = df.parse(request.getParameter("dtFecha"));
        Date fec = sdf.parse(request.getParameter("dtFecha"));
        //String fec = request.getParameter("dtFecha");
        String fech = sdf.format(fec);
        String fecha= ""+fech+" "+hora+":"+minutos;
        
//        response.sendRedirect("reservaHora.jsp");   
//        se.setAttribute("ru", fec);
            boolean resp = dao.ingresarAtencion(box, fecha, rutPac, rutMedico);
        if (resp) {
            response.sendRedirect("ayudaRecepcionista.jsp");                   
            
        } else {
            response.sendRedirect("reservaHora.jsp");
            se.setAttribute("ru", fec);
            
        }
        
    }

}
