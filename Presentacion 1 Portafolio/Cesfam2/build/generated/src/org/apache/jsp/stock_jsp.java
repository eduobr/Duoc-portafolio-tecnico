package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class stock_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Stock</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"img/fondo.jpg\">\n");
      out.write("        <form class=\"form-horizontal\" style=\"margin-top: 30px\">\n");
      out.write("            \n");
      out.write("            <center>\n");
      out.write("            <table border=\"0\" class=\"table-bordered\" >\n");
      out.write("                <thead>\n");
      out.write("                   \n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <th colspan=\"3\"><center><h1>Stock</h1></center></th>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr >\n");
      out.write("                        <td>Medicamento </td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtNombreMedicamento\" class=\"form-control\" placeholder=\"Ingrese el Medicamento\" /></td>\n");
      out.write("                        <td><input type=\"button\" value=\"Buscar\" name=\"btnBuscar\" class=\"btn btn-primary\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Stock</td>\n");
      out.write("                        <td colspan=\"2\"><input type=\"text\" name=\"txtStock\" value=\"\" disabled=\"\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("                <nav class=\"navbar navbar-collapse\" style=\"margin-top: 30px \">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                        \n");
      out.write("                        <li ><a href=\"Menu.jsp\" ><span class=\"glyphicon glyphicon-circle-arrow-left\" ></span> Volver</a></li>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            </nav>\n");
      out.write("                </center>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
