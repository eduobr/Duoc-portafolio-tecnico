<%-- 
    Document   : ayuda
    Created on : 25-04-2017, 23:50:26
    Author     : Coke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CESFAM: AYUDA</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="banner about-bnr">
		<div class="container">
		</div>
	</div>
        <div class="about-servcs"> 
		<div class="container">
			<h3 CLASS="title1">Ayuda </h3>
			<h5>La Atención representa el contacto con la familia y la comunidad con el sistema de salud </h5>
			<div class="servcs-info">
				<div class="col-md-6 sevcs-grids">
					<h4><span>01. </span>¿Qué es un CESFAM?</h4>
					<p>Actualmente nuestro CESFAM atiende a la población mediante un nuevo modelo de atención, conocido como MODELO DE SALUD FAMILIAR.</p>			
				</div>
				<div class="col-md-6 sevcs-grids">
					<h4><span>02. </span>¿Cómo trabaja el CESFAM?</h4>
					<p>Dentro de las estrategias está el trabajar de manera sectorizada, lo que significa que tanto la dimensión biológica como la psicológica y la social se analiza y aplica en las familias.</p>			
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="servcs-info">
				<div class="col-md-6 sevcs-grids">
					<h4><span>03. </span>¿En que se enfoca el CESFAM?</h4>
					<p>Tiene un Enfoque Familiar y Comunitario, y, por tanto, se da más énfasis a la prevención y promoción de salud, se centra en las familias y la comunidad.</p>			
				</div>
				<div class="col-md-6 sevcs-grids">
					<h4><span>04. </span>Ventajas</h4>
					<p>- La población cuenta con un Equipo de Salud conocido y definido.</p>
<p>- El Equipo de Salud tiene conocimiento de la comunidad y entorno asignado.</p>
<p>- Facilita que los problemas de salud de las personas, familia, y comunidad sean conocidos por el Equipo de Salud..</p>			
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
        
        <%@include file="contacto.jsp" %>
        <script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <script src="js/bootstrap.js"></script>
    </body>
</html>
