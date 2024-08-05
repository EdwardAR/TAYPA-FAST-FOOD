<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
    <!-- Font awesone -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGSIniciarSesion/iniciarsesion.png">
    <!-- Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/ingresar.css" />

</head>
<div class="contenedor">
    <header class="header">
        <div class="logotivo">
            <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/logo taypa.png" width="230px" height="130px" alt="Imagen logotivo">
        </div>
        <div class="logo">
            <p>
                <span>
                    FAST
                    <br>
                    FOOD
                </span>
            </p>
        </div>
        <nav class="menu">
            <ul class="navegacion">
                <li>
                    <a href="index.jsp">▣INICIO</a>
                </li>
                <li>
                    <a href="nosotros.jsp">▣NOSOTROS</a>
                </li>
                <li>
                    <a href="tienda.jsp">▣TIENDA</a>
                </li>
                <li>
                    <a href="CONTACTANOS.jsp">▣CONTACTANOS</a>
                </li>
            </ul>
        </nav>
    </header>
    <br>

    <body>
        
        <div class="form">
            <form action="IniciarSesionServlet" method="POST">
                <h1>INICIAR SESIÓN</h1><br>
                <!--Usuario -->
                <i class="fa-solid fa-user"></i>
                <label for="">Usuario</label>
                <input type="text" name="usuario" placeholder="Ingrese su usuario" autocomplete="off">
                <br>
                <!--Contraseña -->
                <i class="fa-solid fa-unlock"></i>
                <label for="">Contraseña</label>
                <input type="password" name="clave" id="inputPass" placeholder="Ingrese su contraseña" autocomplete="off">
                <!--Ver contraseña -->
                <center>
                    <input type="checkbox" class="form-check-input" onclick="viewPassword()">
                    <label class="form-check-label">Ver Contraseña</label>
                    <hr><br>
                    <a href="IndexUsers.jsp"><button type="submit">Iniciar Sesión</button></a><br><br>
                    <a class="crear" href="registrase.jsp">Registrarse</a>
                </center>
            </form>
            <!-- Mostrar mensaje de error si existe -->
            <c:if test="${not empty errorMessage}">
                <div class="error-message">${errorMessage}</div>
            </c:if>
        </div>
        <!--Codigo para ver contraseña -->
        <script>
            function viewPassword() {
                let password = document.querySelector('#inputPass');
                if (password.type === 'password') {
                    password.type = 'text';
                } else {
                    password.type = 'password';
                }
            }
        </script>
    </body>
    <footer><br>
        
        <marquee scrolldelay="1" style="background-color: rgb(173, 44, 167);">
            <h2 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h2>
        </marquee>
    </footer>
    

</html>

