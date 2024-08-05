
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registrar Clientes</title>
  <!-- libreria para que aparezca animacion en la pag web -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <!-- libreria para que aparezca el icono en la pag web con animacion -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGSRegistrarse/hamburguesa.png">
  <!-- para que agregar iconos -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/registrarse.css">
</head>

<body>
  <div class="contenedor">
    <!--  header menu movible -->
    <header class="header">
      <div class="logotivo">
        <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png" width="230px" height="130px" alt="Imagen logotivo">
      </div>
      <div class="logo">
        <p><span>FAST<br>FOOD</span></p>
      </div>
      <nav class="menu">
        <ul class="navegacion">
          <li><a href="index.jsp">&#x25A3;INICIO</a></li>
          <li><a href="nosotros.jsp">&#x25A3;NOSOTROS</a></li>
          <li><a href="tienda.jsp">&#x25A3;TIENDA</a></li>
          <li><a href="CONTACTANOS.jsp">&#x25A3;CONTACTANOS</a></li>
        </ul>
      </nav>
    </header><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <!-- animate__bounceOut se agrega en una clase para que funcione la animación -->
    <h1 class="animate__bounceOut">Registrar Cliente</h1>
    <form action="">
      <label>
        <i class="fa-solid fa-people-group fa-bounce" style="color: #4b1f51;"></i>
        <em>Nombres y Apellidos:</em>
        <input type="text" name="nombres" autocomplete="off">
        <span></span>
      </label>
      <br><br>

      <label>
        <i class="fa-regular fa-envelope"></i>
        <em>Email:</em>
        <input type="email" name="email" autocomplete="off">
        <span></span>
      </label>
      <br><br>

      <label>
        <i class="fa-solid fa-phone fa-beat"></i>
        <em>Telefono:</em>
        <input type="text" name="telefono" autocomplete="off">
        <span></span>
      </label>
      <br><br>

      <label>
        <i class="fa-solid fa-location-arrow fa-beat"></i>
        <em>Direcci&oacuten</em>
        <input type="text" name="direccion" autocomplete="off">
        <span></span>
      </label>
      <br><br>

      <label>
        <i class="fa-solid fa-key"></i>
        <em>Contraseña</em>
        <input type="password" name="contraseña" autocomplete="off">
        <span></span>
      </label>
      <br><br>

      <label>
        <i class="fa-solid fa-key"></i>
        <em>Confirmar Contraseña</em>
        <input type="password" name="contraseña" autocomplete="off">
        <span></span>
      </label>
      <br><br>

      <!-- Textarea -->
      <!-- <i class="fa-solid fa-comments fa-bounce" style="color: #4b1f51;"></i>
      <label for="message"><em>Dejanos tu Pedido:</em></label><br>
      <textarea id="message" name="message" rows="6" cols="65" placeholder="Dejanos tu sugerencia"></textarea>
      <br>-->
      <!-- checkbox -->
      <!--<input type="checkbox" id="check_Leido" value="1"><em>He leído y acepto todas las promociones de TAYPA FASTFOOD</em><br>
      <br> -->
      <button class="btn"><img class="img enviar" src="${pageContext.request.contextPath}/IMGS/IMGSRegistrarse/enviar.png" alt="Imagen enviar">&nbsp;&nbsp;Enviar</button><br><br>
      <a class="crear" href="Ingresar.jsp">Iniciar Sesión</a>
    </form>

    <script src="JS/registrarse.js"></script>
</body>
<br><br><br><br><br><br><br><br><br>
<footer>
    <a class="crear" href="listadeRegistrarse.jsp">Lista de Registrados</a><br><br>
  <marquee scrolldelay="1" style="background-color: rgb(173, 44, 167);">
    <h2 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h2>
  </marquee>
</footer>

</html>
