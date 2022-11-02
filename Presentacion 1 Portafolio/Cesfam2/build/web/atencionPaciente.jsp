<%-- 
    Document   : atencionPaciente
    Created on : 25-04-2017, 1:49:34
    Author     : Coke
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CESFAM ATENCION PACIENTE</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="banner about-bnr">
		<div class="container">
		</div>
	</div>
        
        <div class="about">
		<div class="container">
			<h3 class="title1">INGRESAR <span>PACIENTE</span></h3>
			<div class="about-info">
				<div class="col-md-8 about-grids grid-top">
					<div class="servcs-info">
				<div class="col-md-10 sevcs-grids">
					<h4><span>01. </span>Formulario Del Paciente</h4>
					<div class="contact-form">
                                            <form action="preescripcionPaciente.jsp" method="post"> <%-- poner action al servlet --%>
                                                    <table class="table" >
                                                        <tr>
                                                            <td><h5 style="color: #000">Rut</h5></td>
                                                            <td><input type="text" name="txtRut" placeholder="ej.(18 111 111) solo numeros" style="width:200px;" required="">   </td>                                                   
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">Nombre</h5></td>
                                                            <td><input type="text" name="txtNombrePaciente" style="width:200px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">Apellido Paterno</h5></td>
                                                            <td><input type="text" name="txtApellidoPPaciente" style="width:200px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">Apellido Materno</h5></td>
                                                            <td><input type="text" name="txtApellidoMPaciente" style="width:200px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">Edad</h5></td>
                                                            <td><input type="number" name="txtEdadPaciente" min="1" max="120" style="width:50px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">Telefono</h5></td>
                                                            <td><input type="text" name="txtTelefonoPaciente"  style="width:200px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">E-mail</h5></td>
                                                            <td><input type="text" name="txtEmailPaciente" style="width:250px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h5 style="color: #000">Direccion</h5></td>
                                                            <td><input type="text" name="txtDirPaciente"  style="width:250px;" required=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <input type="submit" value="Grabar">
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
					<div class="testi">
						<h3 class="title1">Testimo<span>nios</span></h3>
						<!--//End-slider-script -->
						<script src="js/responsiveslides.min.js"></script>
						 <script>
							// You can also use "$(window).load(function() {"
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
