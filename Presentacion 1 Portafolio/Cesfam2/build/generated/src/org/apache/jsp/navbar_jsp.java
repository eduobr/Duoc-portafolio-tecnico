package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class navbar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\t\t\t<p>Somos un centro de salud pública dedicado a mantener y mejorar los niveles de salud y bienestar de la comunidad<p>\n");
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
