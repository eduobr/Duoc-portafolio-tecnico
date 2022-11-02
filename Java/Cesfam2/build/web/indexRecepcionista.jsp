<%-- 
    Document   : indexRecepcionista
    Created on : 03-may-2017, 9:03:47
    Author     : LC1300XXXX
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
        <title>CESFAM Recepcionista</title>
    </head>
    <body>
        <%@include file="navbarRecepcionista.jsp" %>
        <div  class="carousel slide" data-ride="carousel" >
            
            <div class="carousel-inner" role="listbox">

                <div class="item active"> 
                    <img src="images/Recep1.jpg" alt="">
                        <div class="carousel-caption">
                            <h1><b><font color="red">CESFAM: Recepcionista</font></b></h1>
                    </div>
                </div>
                
            </div>

        </div>
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
                            <img src="images/Recep2.jpg" alt=""/>
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
