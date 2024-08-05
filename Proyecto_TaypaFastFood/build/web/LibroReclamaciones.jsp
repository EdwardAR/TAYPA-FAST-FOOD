<%-- 
    Document   : LibroReclamaciones
    Created on : 24 may. 2024, 3:16:20 a. m.
    Author     : ALAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/librodereclamaciones.css">
    <title>Libro de reclamaciones</title>
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png">
  </head>
  <body>
    <div class="contenedor"> 
            <header class="header">
                <div class="logotivo">
                    <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/logo taypa.png" width="230px" height="130px" alt="Imagen logotivo">
                </div>
                <div class="logo">
                    <p class="acompañante">FAST<br>FOOD</p>
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
                        <li> 
                            <a href="Ingresar.jsp">INICIAR SESIÓN</a>
                            <a href="registrase.jsp">REGISTRARSE</a>
                        </li>
                    </ul>
                </nav>
            </header> 
            <br><br><br><br><br>
        
        <div class="desarrollo">

        <h1>Libro de Reclamaciones</h1><br>

        <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGS ICON/librorecla.png" width="230px" height="230px" alt="icono"><br>

        <p>Te presentamos el Libro de Reclamaciones, una herramienta útil para la protección de tus derechos, <br>
            que debe estar disponible en todos los establecimientos comerciales o plataformas de ventas por <br>
            internet que cuenten con una sucursal en el país.Este libro te permite presentar tus quejas o <br>
            reclamos por inconvenientes que surjan frente a la compra de un producto o adquisición de un servicio. <br>
            El proveedor tiene la obligación de ponerlo a tu disposición cuando lo solicites, en formato físico o virtual.<br>
            También, puedes acceder a este libro a través de las empresas prestadoras de servicios públicos <br>
            (agua y alcantarillado, luz y gas natural, infraestructura de transporte de uso público y telecomunicaciones) <br>
            e instituciones bancarias y financieras, conforme a sus propias normas.</p>
      </div>
      <br><br><br><br>
      <div class="preguntas">
            <h2>¿Qué es el Libro de Reclamaciones? </h2>

            <p>Es una herramienta útil para la presentación de tus quejas y reclamos ante un proveedor <br>
                por inconvenientes surgidos tras la compra de un producto o servicio. Todo proveedor debe ponerlo<br>
                a tu disposición en cada uno de sus establecimientos comerciales o plataformas de ventas por internet, <br>
                de contar con una sucursal en el país. </p><br><br>

             <h2>¿Qué es una queja?</h2>
             <p>
                Se realiza para manifestar el malestar o descontento del consumidor respecto a la atención al público, <br>
                es decir, no guarda relación directa con el producto o servicio adquirido. El proveedor tiene la obligación<br>
                de dar respuesta a la queja en el plazo de 15 días hábiles no prorrogables.<br>
                <b>• Por ejemplo:</b> la atención descortés del personal de venta en una tienda. 
             </p><br><br>

             <h2>¿Qué es un reclamo?</h2>
             <p>
                Se realiza cuando el consumidor no se encuentra conforme con el producto adquirido o <br>
                con el servicio recibido. El proveedor tiene la obligación de dar respuesta al reclamo <br>
                en el plazo de 15 días hábiles no prorrogables.<br>
                <b>• Por ejemplo:</b> la entrega de un producto defectuoso o la ejecución de un servicio en condiciones distintas a las informadas.
             </p><br><br>
             <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGS ICON/article.jpg" alt="icono"><br>
      </div>

  <script type="text/javascript" src="/TAYPA FASTFOOD CODE/JS/LibroReclamo.js"></script>
  </body><br><br><br><br>

  <footer>
    <marquee scrolldelay="1" style="background-color: rgb(173, 44, 167);font-size:30px">
        <h4 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h4>
    </marquee>

</footer>
</html>


