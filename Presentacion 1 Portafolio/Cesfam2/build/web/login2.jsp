<%
    HttpSession s=request.getSession();
    s.removeAttribute("usuario");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/palLogin.css" rel="stylesheet" type="text/css"/> 
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Login</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
                <form class="form-signin" action="index.jsp" method="post">
                <input type="text" class="form-control" placeholder="Usuario" id="txtUsuario"name="txtUsuario" required autofocus>
                <input type="password" class="form-control" placeholder="Clave" id="txtClave" name="txtClave" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="btnAccion" value="login" >
                    Ingresar</button>
                
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Recordarme
                </label>
                </form>
            </div>
                   </div>
    </div>
</div>
    </body>
</html>
