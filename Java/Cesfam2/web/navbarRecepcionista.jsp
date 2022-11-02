<%-- 
    Document   : navbarRecepcionista
    Created on : 03-may-2017, 8:48:25
    Author     : LC1300XXXX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CESFAM Portafolio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="CESFAM" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <script src="js/jquery-1.11.1.min.js"></script> 
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>	
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
    </head>
    <body>
       
        <div class="header">
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
                                    <h4 style="color: black" >Bienvenido:  ${usuario}</h4>
                                    <h1><a href="indexRecepcionista.jsp"><img src="images/logoCesfam.png" width="120" alt="">CESFAM</a></h1>
				</div>
				<div class="header-text navbar-left">
					<p>Somos un centro de salud pública dedicado a mantener y mejorar los niveles de salud y bienestar de la comunidad<p>
				</div>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="header-right">
					<div class="top-nav-text">
						<ul>
                                                    <li>Pagina: <span><b>Recepcionista</b></span></li>
							<li>Email : <a class="email-link" href="mailto:example@mail.com">contacto@Cesfam.cl</a></li>
							<li>
								<ul >
                                                                    <a href="ServletCerrarSesion"><B>Cerrar Sesion</B></a>
								</ul>
							</li>
						</ul>
					</div>
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">					
						<ul class="nav navbar-nav navbar-left">
                                                    <li class="active"><a href="indexRecepcionista.jsp"><span>I</span><span>N</span><span>I</span><span>C</span><span>I</span><span>O</span></a></li>
                                                    <li><a href="agregarPaciente.jsp" class="link link--yaku"><span>R</span><span>E</span><span>S</span><span>E</span><span>R</span><span>V</span><span>A</span><span>R</span> <span>H</span><span>O</span><span>R</span><span>A</span></a></li>
                                                    <li><a href="ayudaRecepcionista.jsp" class="link link--yaku"><span>A</span><span>Y</span><span>U</span><span>D</span><span>A</span></a></li>
						</ul>		
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>	
		</nav>		
	</div>
    </body>
</html>
