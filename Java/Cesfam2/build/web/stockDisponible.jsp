<%-- 
    Document   : stockDisponible
    Created on : 25-04-2017, 22:43:13
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CESFAM STOCK DISPONIBLE</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="banner about-bnr">
		<div class="container">
		</div>
	</div>
        <div class="about-servcs"> 
		<div class="container">
                    <h3 CLASS="title1">Stock en Linea</h3></br>
                        <center>
                            <form action="ServletPrincipal2" method="post">
                        <table width="500">
                            <tr>
                            <td width="200"><h4>Nombre Medicamento </h4></td>
                                <td><input type="text" name="txtMedicamento" class="form-control" style="width:200px;" /></td>
                                <td><input type="submit" value="Buscar" name="btnAccion" class="btn btn-primary" /></td>
                            </tr></br>
                            <tr>
                                <td width="200" style="text-align: center">Cantidad Disponible:</td>
                                <td><div>
                                    ${cantidad}
                                </div></td>
                            </tr>
                        </table>
                                
            
                                </form>
                            
                            
                        </center>
                </div></br></br></br>		
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
				</div>
                        
			
		</div>
	</div>
        <%@include file="contacto.jsp" %>
        <script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <script src="js/bootstrap.js"></script>
    </body>
</html>
