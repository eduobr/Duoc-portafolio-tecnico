package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class atencionPaciente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/navbar.jsp");
  }

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>CESFAM ATENCION PACIENTE</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>CESFAM Portafolio</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"keywords\" content=\"CESFAM\" />\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <link href=\"css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <script src=\"js/jquery-1.11.1.min.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/easing.js\"></script>\t\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            jQuery(document).ready(function ($) {\n");
      out.write("                $(\".scroll\").click(function (event) {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"navbar-header navbar-left\">\n");
      out.write("                                    <h1><a href=\"index.jsp\"><img src=\"images/logoCesfam.png\" width=\"120\" alt=\"\">CESFAM</a></h1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"header-text navbar-left\">\n");
      out.write("\t\t\t\t\t<p>Somos un centro de salud p??blica dedicado a mantener y mejorar los niveles de salud y bienestar de la comunidad<p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t\t<div class=\"header-right\">\n");
      out.write("\t\t\t\t\t<div class=\"top-nav-text\">\n");
      out.write("\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li>Contacto Cesfam: <span>+12 345 6789</span></li>\n");
      out.write("\t\t\t\t\t\t\t<li>Email : <a class=\"email-link\" href=\"mailto:example@mail.com\">Perkeaso@Cesfam.cl</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"social-icons\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\"></a></li><!-- iconos eskina arria -->\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"pin\"></a></li><!-- iconos eskina arria -->\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"in\"></a></li><!-- iconos eskina arria -->\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse navbar-right\" id=\"bs-example-navbar-collapse-1\">\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\"><a href=\"index.jsp\"><span>I</span><span>N</span><span>I</span><span>C</span><span>I</span><span>O</span></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"about.html\" class=\"link link--yaku\"><span>S</span><span>T</span><span>O</span><span>C</span><span>K</span></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"codes.html\" class=\"link link--yaku\"><span>A</span><span>T</span><span>E</span><span>N</span><span>C</span><span>I</span><span>O</span><span>N</span></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"contact.html\" class=\"link link--yaku\"><span>A</span><span>Y</span><span>U</span><span>D</span><span>A</span></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t</nav>\t\t\n");
      out.write("\t</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <div class=\"banner about-bnr\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("        <div class=\"about\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h3 class=\"title1\">About<span> Us</span></h3>\n");
      out.write("\t\t\t<div class=\"about-info\">\n");
      out.write("\t\t\t\t<div class=\"col-md-8 about-grids grid-top\">\n");
      out.write("\t\t\t\t\t<div class=\"servcs-info\">\n");
      out.write("\t\t\t\t<div class=\"col-md-10 sevcs-grids\">\n");
      out.write("\t\t\t\t\t<h4><span>01. </span>Formulario Del Paciente</h4>\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t<form >\n");
      out.write("                                                    <table class=\"table\" >\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Rut</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtRut\" placeholder=\"ej.(18 111 111) solo numeros\" style=\"width:250px;\" required=\"\">   </td>                                                   \n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Nombre</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtNombrePaciente\" style=\"width:250px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Apellido Paterno</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtApellidoPPaciente\" style=\"width:250px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Apellido Materno</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtApellidoMPaciente\" style=\"width:250px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Edad</h5></td>\n");
      out.write("                                                            <td><input type=\"number\" name=\"txtEdadPaciente\" min=\"1\" max=\"120\" style=\"width:50px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Telefono</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtTelefonoPaciente\"  style=\"width:250px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">E-mail</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtEmailPaciente\" style=\"width:250px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td><h5 style=\"color: #000\">Direcion</h5></td>\n");
      out.write("                                                            <td><input type=\"text\" name=\"txtDirPaciente\"  style=\"width:250px;\" required=\"\"></td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td colspan=\"2\">\n");
      out.write("                                                                <input type=\"submit\" value=\"Grabar\">\n");
      out.write("                                                            </td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                    </table>\n");
      out.write("                \n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                            \t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\t\t\n");
      out.write("\t\t\t\t\t<div class=\"about-row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-4 about-imgs\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/img5.jpg\" alt=\"\" class=\"img-responsive zoom-img\"/>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-4 about-imgs\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/img6.jpg\" alt=\"\"  class=\"img-responsive zoom-img\"/>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-4 about-imgs\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/img7.jpg\" alt=\"\"  class=\"img-responsive zoom-img\"/>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-4 about-grids\">\n");
      out.write("\t\t\t\t\t<div class=\"offic-time\">\n");
      out.write("\t\t\t\t\t\t<div class=\"time-top\">\n");
      out.write("\t\t\t\t\t\t\t<h4>Horario Atenci??n :</h4>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"time-bottom\">\n");
      out.write("\t\t\t\t\t\t\t<h5>Lun-Vie:08am-05pm </h5>\n");
      out.write("\t\t\t\t\t\t\t<h5>Extencion:Hasta las 08pm</h5>\n");
      out.write("\t\t\t\t\t\t\t<p>La poblaci??n a cargo de cada CESFAM var??a entre los 2 mil y 30 mil habitantes, aproximadamente. </p>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"testi\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"title1\">Testimo<span>nios</span></h3>\n");
      out.write("\t\t\t\t\t\t<!--//End-slider-script -->\n");
      out.write("\t\t\t\t\t\t<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("\t\t\t\t\t\t <script>\n");
      out.write("\t\t\t\t\t\t\t// You can also use \"$(window).load(function() {\"\n");
      out.write("\t\t\t\t\t\t\t$(function () {\n");
      out.write("\t\t\t\t\t\t\t  // Slideshow 5\n");
      out.write("\t\t\t\t\t\t\t  $(\"#slider5\").responsiveSlides({\n");
      out.write("\t\t\t\t\t\t\t\tauto: true,\n");
      out.write("\t\t\t\t\t\t\t\tpager: false,\n");
      out.write("\t\t\t\t\t\t\t\tnav: true,\n");
      out.write("\t\t\t\t\t\t\t\tspeed: 500,\n");
      out.write("\t\t\t\t\t\t\t\tnamespace: \"callbacks\",\n");
      out.write("\t\t\t\t\t\t\t\tbefore: function () {\n");
      out.write("\t\t\t\t\t\t\t\t  $('.events').append(\"<li>before event fired.</li>\");\n");
      out.write("\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\tafter: function () {\n");
      out.write("\t\t\t\t\t\t\t\t  $('.events').append(\"<li>after event fired.</li>\");\n");
      out.write("\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t  });\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t\t  </script>\n");
      out.write("\t\t\t\t\t\t<div  id=\"top\" class=\"callbacks_container\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"rslides\" id=\"slider5\">\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"testi-slider\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h4>\" NO VEIA BIEN.</h4>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Hasta que me sacaron los ojos mejoro mi vision totalmente.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"testi-subscript\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p><a href=\"#\">Toyen Cuatro,</a>coment??</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"sbscrpt\"> </span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"testi-slider\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h4>\" UN FIERRO ME ATRAVESO EL BRAZO.</h4>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Pude equilibrar el dolor cuando me enterraron un segundo fierro en el otro brazo.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"testi-subscript\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p><a href=\"#\">Choc Man,</a>coment??</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"sbscrpt\"> </span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"testi-slider\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h4>\" ENTRE CON UNA ENFERMEDAD.</h4>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Al salir tube sida y pude cumplir mi sue??o de ser amarillo.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"testi-subscript\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p><a href=\"#\">Amet Doe,</a>coment??</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"sbscrpt\"> </span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
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
