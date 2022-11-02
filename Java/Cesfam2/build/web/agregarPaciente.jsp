<%-- 
    Document   : agregarPaciente
    Created on : 03-may-2017, 10:30:36
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
        <title>JSP Page</title>
        <script type="text/javascript" src="js/alertify.js"></script>
        <link rel="stylesheet" href="css/alertify.core.css" />
        <link rel="stylesheet" href="css/alertify.default.css" />
        <link href="css/extra.css" rel="stylesheet" type="text/css"/>
        <script>
            function verificarRut(rut) {
                var valor = rut.value.replace('.', '');
                valor = valor.replace('-', '');
                cuerpo = valor.slice(0, -1);
                dv = valor.slice(-1).toUpperCase();
                rut.value = cuerpo + '-' + dv
                if (cuerpo.length < 7) {
                    alertify.alert("<b>RUT Incompleto</b> faltan caracteres", function () {
                    alertify.error("RUT Incompleto.");
                    document.getElementById("rut").focus();
				});
                    return false;
                }
                suma = 0;
                multiplo = 2;
                for (i = 1; i <= cuerpo.length; i++) {
                    index = multiplo * valor.charAt(cuerpo.length - i);
                    suma = suma + index;
                    if (multiplo < 7) {
                        multiplo = multiplo + 1;
                    } else {
                        multiplo = 2;
                    }
                }
                dvEsperado = 11 - (suma % 11);
                dv = (dv == 'K') ? 10 : dv;
                dv = (dv == 0) ? 11 : dv;
                if (dvEsperado != dv) {
                    alertify.alert("<b>RUT Invalido</b> el rut ingresado <b>NO</b> existe", function () {
                    alertify.error("RUT Invalido.");
                    document.getElementById("rut").focus();
				});
                    return false;
                }
                alertify.success("RUT <b>Correcto.</b>");
            }
            function correcto() {
                var verificar = true;
                                    if (verificarRut())
                                    {
                                        verificar = false;
                                    }
                                    if (document.getElementById('paci').value.length < 25)
                                    {
                                        verificar = false
                                    }
                                    if (!verificar) {
                                        alert('Ingrese Un Rut Valido');
                                    }
                                    return verificar;
            }
        </script>
    </head>
    <body>
        <%@include file="navbarRecepcionista.jsp" %>
        <div  class="carousel slide" data-ride="carousel" >

            <div class="carousel-inner" role="listbox">

                <div class="item active"> 
                    <img src="images/cesfamlargol.jpg" alt="">
                </div>

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
                                    <form action="ServletRecepcionista" method="post" onsubmit="return correcto()"> <%-- --%>
                                        <table class="table" >
                                            <tr>
                                                <td><h5 style="color: #000">Rut</h5></td>
                                                <td><input type="text"  name="txtRut" id="rut" style="width:200px;" required="" onchange="verificarRut(this)" placeholder="Ingrese Rut sin puntos">
                                                    
                                                </td>                                                   
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Nombre</h5></td>
                                                <td><input type="text" name="txtNombrePaciente" id="nom" style="width:200px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Apellido Paterno</h5></td>
                                                <td><input type="text" name="txtApellidoPPaciente" id="ap1" style="width:200px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Apellido Materno</h5></td>
                                                <td><input type="text" name="txtApellidoMPaciente" id="ap2" style="width:200px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Edad</h5></td>
                                                <td><input type="number" name="txtEdadPaciente" style="color: #000" id="ed" min="1" max="120" style="width:50px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Telefono</h5></td>
                                                <td><input type="text" name="txtTelefonoPaciente" id="tel" style="width:200px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">E-mail</h5></td>
                                                <td><input type="text" name="txtEmailPaciente" id="email" style="width:250px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td><h5 style="color: #000">Direccion</h5></td>
                                                <td><input type="text" name="txtDirPaciente" id="dir" style="width:250px;" required=""></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <input type="submit" name="btnAccion" value="Grabar">
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
                        </div></br></br></br></br></br></br>
                        <div class="offic-time">
                            <div class="time-top">
                                <h4>Para Reservar Hora :</h4>
                            </div>
                            <div class="time-bottom">
                                <h5>Lun-Vie:08am-05pm </h5>

                                <p>Sus datos serán verificados antes de asignar una Hora Médica.. </p>
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
