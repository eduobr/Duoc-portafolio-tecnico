<%-- 
    Document   : index
    Created on : 25-04-2017, 1:29:46
    Author     : Coke
--%>
 <%
    HttpSession se = request.getSession();
    if (se.getAttribute("usuario") == null) {
        request.setAttribute("mensaje", "Ingreso no Valido");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CESFAM Portafolio</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@include file="navbar.jsp" %>
	<!-- foto -->
	<div class="banner">
		<div class="container">
			
		</div>
		
	</div>
	<div class="banner-bottom">
		<div class="container">
                    <h4>Los CES y<span> CESFAM </span>proporcionan cuidados básicos en salud. </h4>
			<p>con acciones de promoción, prevención, curación, tratamiento, cuidados domiciliarios y rehabilitación de la salud; y atienden en forma ambulatoria. </p>
		</div>
	</div>
	<!-- centro-->
	<div class="features">
		<div class="container">
			<div class="col-md-4 feature-grids">
				<h3 class="title">¿QUE <span>ASEMOS?</span></h3>
				<p>Dentro de las funciones que tiene el CESFAM se encuentra 
                                    la entrega de medicamentos básicos, esta entrega se 
                                    realiza en la Unidad de Farmacia y el control de los
                                    medicamentos entregados se realiza a través de una 
                                    tarjeta de medicamentos cuyo portador es el paciente 
                                    y es escrita a mano.</p>
				<p>Este proyecto se centrará en la automatización del sistema
                                    de registro de medicamentos entregados a los pacientes
                                    del CESFAM.</p>
			</div>
			<div class="col-md-4 feature-grids">
                            <img src="images/medicoInicio.jpg" alt=""/>
			</div>
			<div class="col-md-4 feature-grids">
				<h3 class="title">Dudas</h3>
				<div class="pince">
					<div class="pince-left">
						<h5>01</h5>
					</div>
					<div class="pince-right">
						<h4>Los pacientes realizan todas sus atenciones médicas en el CESFAM </h4>
						<p>Una vez que son atendidos, y si el médico lo encuentra necesario, les son recetados medicamentos para sus respectivos tratamientos.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="pince">
					<div class="pince-left">
						<h5>02</h5>
					</div>
					<div class="pince-right">
						<h4>Cantidad de Medicamentos </h4>
						<p>En el caso de tratamientos , le son entregados al paciente la totalidad de los medicamentos que utilizará en cantidades justas</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="pince">
					<div class="pince-left">
						<h5>03</h5>
					</div>
					<div class="pince-right">
						<h4>¿No esta el Medicamento? </h4>
						<p>En el caso que farmacia no tenga stock de algún medicamento, se le indica al paciente que se acerque en una ocasión posterior para el retiro de éstos.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--Las fotos-->
	<div class="projects">
		<div class="container">
			<div class="col-md-3 project-right ">
				<h3 class="title">Nuestro <span> Proyecto</span></h3>
				<p>La estrategia está en trabajar de manera sectorizada, con equipos a cargo de familias. El enfoque de atención es BIOPSICOSOCIAL (biológica y psicológica).</p>
			</div>
			<div class="col-md-9 project-left">
				<!-- flex-slider -->
				<div class="work-bottom">
					<div class="nbs-flexisel-container"><div class="nbs-flexisel-inner">
						<ul id="flexiselDemo1" class="nbs-flexisel-ul" style="left: -285px; display: block;">																																		
							<li class="nbs-flexisel-item" style="width: 285px;">
								<div class="project-grids">
									<img src="images/img1.jpg" alt="">
									<div class="team-bottom">
									</div>
								</div>
							</li>
							<li class="nbs-flexisel-item" style="width: 285px;">
								<div class="project-grids">
									<img src="images/img2.jpg" alt="">
									<div class="team-bottom">
									</div>
								</div>
							</li>
							<li class="nbs-flexisel-item" style="width: 285px;">
								<div class="project-grids">
									<img src="images/img3.jpg" alt="">
									<div class="team-bottom">
									</div>
								</div>
							</li>
							<li class="nbs-flexisel-item" style="width: 285px;">
								<div class="project-grids">
									<img src="images/img4.jpg" alt="">
									<div class="team-bottom">
									</div>
								</div>
							</li>
						</ul>
						<div class="nbs-flexisel-nav-left" style="top: 138px;"></div><div class="nbs-flexisel-nav-right" style="top: 138px;"></div></div></div>
							<script type="text/javascript">
								$(window).load(function() {
									$("#flexiselDemo1").flexisel({
										visibleItems: 4,
										animationSpeed: 1000,
										autoPlay: true,
										autoPlaySpeed: 3000,    		
										pauseOnHover: true,
										enableResponsiveBreakpoints: true,
										responsiveBreakpoints: { 
											portrait: { 
												changePoint:480,
												visibleItems: 2
											}, 
											landscape: { 
												changePoint:640,
												visibleItems: 3
											},
											tablet: { 
												changePoint:768,
												visibleItems: 3
											}
										}
									});
									
								});
							</script>
							<script type="text/javascript" src="js/jquery.flexisel.js"></script>				
						<!-- //flex-slider -->	
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- SERVICIOS-->
	<div class="services">
		<div class="container">
			<h3 class="title"> Servicios</h3>
			<div class="services-info">
				<div class="servc-icon">
                                    <a href="atencionPaciente.jsp" class="diamond"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					<p class="servc-text">Atencion Paciente</p>
					</a>
				</div>
				<div class="servc-icon">
                                    <a href="stockDisponible.jsp" class="diamond"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
					<p class="servc-text">Revisar Stock </p>
					</a>
				</div>
				
				<div class="servc-icon">
                                    <a href="ayuda.jsp" class="diamond"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					<p class="servc-text">¿Ayuda?</p>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
        <%@include file="contacto.jsp" %>
	<!-- script del boton para subir al inicio-->
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <script src="js/bootstrap.js"></script>
    </body>
</html>
