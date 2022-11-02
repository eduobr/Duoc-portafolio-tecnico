<%-- 
    Document   : navbar
    Created on : 25-04-2017, 1:38:45
    Author     : Coke
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
                        <h1><a href="index.jsp"><img src="images/logoCesfam.png" width="120" alt="">CESFAM</a></h1>
                    </div>
                    <div class="header-text navbar-left">
                        <p>Somos un centro de salud pública dedicado a mantener y mejorar los niveles de salud y bienestar de la comunidad<p>
                        <p hidden="">${rutMed} </p>  
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
                                <li>Contacto Cesfam: <span>+12 345 6789</span></li>
                                <li>Email : <a class="email-link" href="mailto:example@mail.com">contacto@Cesfam.cl</a></li>
                                <li>
                                    <ul>
                                        <a href="ServletCerrarSesion"><B>Cerrar Sesion</B></a>
				    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">					
                            <ul class="nav navbar-nav navbar-left">
                                <li class="active"><a href="index.jsp"><span>I</span><span>N</span><span>I</span><span>C</span><span>I</span><span>O</span></a></li>
                                <li><a href="stockDisponible.jsp" class="link link--yaku"><span>S</span><span>T</span><span>O</span><span>C</span><span>K</span></a></li>
                                <li><a href="atencionPaciente.jsp" class="link link--yaku"><span>A</span><span>T</span><span>E</span><span>N</span><span>C</span><span>I</span><span>O</span><span>N</span></a></li>
                                <li><a href="ayuda.jsp" class="link link--yaku"><span>A</span><span>Y</span><span>U</span><span>D</span><span>A</span></a></li>
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
