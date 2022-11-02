<%-- 
    Document   : receta
    Created on : 25-04-2017, 21:36:23
    Author     : Coke
--%>
 <%
    HttpSession se = request.getSession();
    if (se.getAttribute("usuario") == null) {
        request.setAttribute("mensaje", "Ingreso no Valido");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
<%@page import="clases.Cl_receta"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="clases.Cl_Medicamento"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DAO_Medico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receta Paciente</title>
    </head>
    <body>
        <%
            request.setAttribute("cod", se.getAttribute("codPre"));
        %>
        <%@include file="navbar.jsp" %>
        <div class="banner about-bnr">
            <div class="container">
            </div>
        </div>

        <div class="about">
            <div class="container">
                <h3 class="title1"><span>RECETA</span></h3>
                <div class="about-info">
                    <div class="col-md-8 about-grids grid-top">
                        <div class="servcs-info">
                            <div class="col-md-10 sevcs-grids">
                                <h4><span>03. </span>Receta Medica</h4>
                                <div class="contact-form">
                                    <form action="ServletPrincipal2" method="post"> 
                                        <table class="table" >
                                            <tr>
                                                <% DAO_Medico dao = new DAO_Medico();
                                                    List<Cl_Medicamento> lista = dao.comboReceta();
                                                    se.setAttribute("lis", lista);
                                                %>

                                                <td><h5 style="color: #000">Medicamento </h5></td>
                                                <td>   <select name="cboMed" style="color: #000">
                                                        <option value="0" >Seleccione</option>
                                                        <c:forEach items="${lis}" var="item">
                                                            <option value="${item.codMedicamento}">${item.nombre}</option>
                                                        </c:forEach>
                                                    </select> 
                                                </td>                                                   
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Cantidad</h5></td>
                                                <td><input type="number" name="txtCantidadMedicamento" style="width:80px;" min="1" max="30" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Duracion Medicacion</h5></td>
                                                <td><input type="number" name="txtDuracion" placeholder=" en dias" style="width:80px;" min="1" max="360" required=""></td>
                                            </tr>
                                            <tr hidden="">
                                                <td>
                                                    <input type="text" name="txtcodpre" placeholder=" " style="width:200px;" required="" value="${cod}"> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <%
                                                    int codr1 = Integer.parseInt(se.getAttribute("codPre").toString());
                                                    //List<Cl_Medicamento> lista1 = dao.verReceta1(codr1);
                                                    List<Cl_receta> lista1 = dao.verReceta1(codr1);
                                                    se.setAttribute("lis1", lista1);
                                                %>   
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <button type="submit" class="btn btn-primary" name="btnAccion" value="AgregarMed" required><span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>Guardar y Agregar Otro Medicamento</button>
                                                    <FONT SIZE=4 style="color: #FFF">____</font>  
                                                    <a href="index.jsp" class="btn btn-primary" onclick="return confirm('Receta Guardada')">salir</a>
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
                                <h4>Receta Actual :</h4>
                            </div>
                            <div class="time-bottom">
                               <c:forEach items="${lis1}" var="receta" > <p id="refinal">${receta.nombre},${receta.tipo} Cant: ${receta.cantidad} Duracion: ${receta.duracion} Dias</p>
                                 </c:forEach> 
                            </div>
                        </div>
                        <div class="testi">
                            <h3 class="title1">Testimo<span>nios</span></h3>
                            <script src="js/responsiveslides.min.js"></script>
                            <script>
                                $(function () {
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
                            <div  id="top" class="callbacks_container">
                                <ul class="rslides" id="slider5">
                                    <li>
                                        <div class="testi-slider">
                                            <h4>" NO VEIA BIEN.</h4>
                                            <p>Hasta que me sacaron los ojos mejoro mi vision totalmente.</p>
                                            <div class="testi-subscript">
                                                <p><a href="#">Toyen Cuatro,</a>comentô</p>
                                                <span class="sbscrpt"> </span>
                                            </div>	
                                        </div>
                                    </li>
                                    <li>
                                        <div class="testi-slider">
                                            <h4>" UN FIERRO ME ATRAVESO EL BRAZO.</h4>
                                            <p>Pude equilibrar el dolor cuando me enterraron un segundo fierro en el otro brazo.</p>
                                            <div class="testi-subscript">
                                                <p><a href="#">Choc Man,</a>comentô</p>
                                                <span class="sbscrpt"> </span>
                                            </div>	
                                        </div>
                                    </li>
                                    <li>
                                        <div class="testi-slider">
                                            <h4>" ENTRE CON UNA ENFERMEDAD.</h4>
                                            <p>Al salir tube sida y pude cumplir mi sueño de ser amarillo.</p>
                                            <div class="testi-subscript">
                                                <p><a href="#">Amet Doe,</a>comentô</p>
                                                <span class="sbscrpt"> </span>
                                            </div>	
                                        </div>
                                    </li>
                                </ul>	
                            </div>
                        </div>
                    </div>	
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <%@include file="contacto.jsp" %>
    </body>
</html>
