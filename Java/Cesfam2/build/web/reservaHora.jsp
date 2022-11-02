<%-- 
    Document   : reservaHora
    Created on : 03-may-2017, 10:24:07
    Author     : LC1300XXXX
--%>
 <%
    HttpSession se = request.getSession();
    if (se.getAttribute("usuario") == null) {
        request.setAttribute("mensaje", "Ingreso no Valido");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="clases.Cl_Medico"%>
<%@page import="DAO.DAO_Recepcionista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="navbarRecepcionista.jsp" %>
        <div class="banner about-bnr">
            <div class="container">
            </div>
        </div>
         <%
    request.setAttribute("rut1", se.getAttribute("rutpac"));

%>

        <div class="about">
            <div class="container">
                <h3 class="title1">HORA DE <span>ATENCION</span></h3>
                <div class="about-info">
                    <div class="col-md-8 about-grids grid-top">
                        <div class="servcs-info">
                            <div class="col-md-10 sevcs-grids">
                                <h4><span>01. </span>Fijar Fecha Y hora</h4>
                                <div class="contact-form">
                                    <form action="ServletRecepcionista" method="post" onsubmit="return confirm('Agregado')"> <%-- --%>
                                        <table class="table" >
                                            <tr>
                                                <td><h5 style="color: #000">Fecha de Atencion</h5></td>
                                                <td><input type="date" name="dtFecha"  required="" style="color: #000"></td>                                                 
                                            </tr>
                                            <tr >
                                                <td><h5 style="color: #000">Hora Atencion</h5></td>
                                                <td><input type="number" name="txthora"  style="width:40px;" placeholder="HH" min="0" max="23" required="" ><FONT SIZE=4 style="color: #000;">:</font>    
                                                    <input type="number" name="txtmin"  style="width:42px;" placeholder="MM" min="0" max="59" required=""></td> 
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Box Nº</h5></td>
                                                <td>
                                                    <select name="cboBox" style="color: #000">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select>
                                                </td>                                                   
                                            </tr>
                                            <tr>
                                                <% DAO_Recepcionista d = new DAO_Recepcionista();
                                                    List<Cl_Medico> lista = d.comboEspecialidad();
                                                    se.setAttribute("lis", lista);
                                                %>

                                                <td><h5 style="color: #000">Especialidad Medica </h5></td>
                                                <td>   <select name="cboEsp" style="color: #000">
                                                        <option value="0" >Seleccione</option>
                                                        <c:forEach items="${lis}" var="item">
                                                            <option value="${item.rut}">${item.especialidad}</option>
                                                        </c:forEach>
                                                    </select> 
                                                </td>                                                   
                                            </tr>
                                            <tr hidden="">
                                                <td><input type="text" name="txtrutPac" required="" value="${rut1}"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <input type="submit" name="btnAccion" value="Reservar">
                                                </td>
                                            </tr>
                                        </table>

                                    </form>
                                </div>			
                            </div>

                            <div class="clearfix"> </div>
                        </div>		
                        <div class="about-row">
                            <div class="col-md-4 about-imgs">
                                <img src="images/img5.jpg" alt="" class="img-responsive zoom-img"/>
                            </div>
                            <div class="col-md-4 about-imgs">
                                <img src="images/img6.jpg" alt=""  class="img-responsive zoom-img"/>
                            </div>
                            <div class="col-md-4 about-imgs">
                                <img src="images/img7.jpg" alt=""  class="img-responsive zoom-img"/>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="col-md-4 about-grids">
                        <div class="offic-time">
                            <div class="time-top">
                                <h4>Horario Atención :</h4>
                            </div>
                            <div class="time-bottom">
                                <h5>Lun-Vie:08am-05pm </h5>
                                <h5>Extencion:Hasta las 08pm</h5>
                                <p>La población a cargo de cada CESFAM varía entre los 2 mil y 30 mil habitantes, aproximadamente. </p>
                            </div>
                        </div>

                        <script src="js/responsiveslides.min.js"></script>
                        <script>

                                        $(function () {
                                            // Slideshow 5
                                            $("#slider5").responsiveSlides({
                                                auto: true,
                                                pager: false,
                                                nav: true,
                                                speed: 500,
                                                namespace: "callbacks",
                                                before: function () {
                                                    $('.events').append("<li>before event fired.</li>");
                                                },
                                                after: function () {
                                                    $('.events').append("<li>after event fired.</li>");
                                                }
                                            });

                                        });
                        </script>
                    </div>
                </div>	
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <%@include file="contacto.jsp" %>
</body>
</html>
