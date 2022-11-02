<%
    HttpSession s = request.getSession();
    s.removeAttribute("usuario");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar a Cesfam</title>
        <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">  
        <link rel="stylesheet" href="css/palLogin.css">  
        <style>
            html {
                height:100%;
                width:100%;
            }
            body{
                background:#8ba987 url('images/cesf.jpg') no-repeat center center;
                background-size:100% 100%;
            }
        </style>
    </head>
    <body>
        <div class="login">
            <header class="header">
                <span class="text"><% if (request.getAttribute("error") != null) {
                    %><FONT SIZE=6 ><% out.println(request.getAttribute("error")); %></font><%
                    } else if (request.getAttribute("mensaje") != null) {
                    %><FONT SIZE=6 ><% out.println(request.getAttribute("mensaje")); %></font><%
                   } else {
                    %>Cesfam <% }%></span>
                <span class="loader"></span>
            </header>
            <form action="ServletPrincipal2" method="post"> 
                <input class="input" type="text" placeholder="Usuario" id="txtUsuario" name="txtUsuario" required="">
                <input class="input" type="password" placeholder="Contraseña" id="txtClave" name="txtClave" required="">
                <button class="btn" type="submit" name="btnAccion" value="login"></button>
            </form>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="js/palLogin.js"></script>
        <%--<script src="js/index.js"></script> --%>
    </body>
</html>
