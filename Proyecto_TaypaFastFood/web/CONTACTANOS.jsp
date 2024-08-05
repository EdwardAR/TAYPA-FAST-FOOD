<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TAYPA FASTFOOD- CONTACTANOS</title>
    <!-- libreria para que aparezca animacion en la pag web -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/logo taypa.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/stylecontactanos.css">
    <!--concatenar con css de contactanos-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/CONTACTANOS.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="contactanos.js">
</head>

<body>
    <!--replicar header-->
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
                    <li>
                        <a href="Ingresar.jsp">INICIAR SESIÓN</a>
                        <a href="registrase.jsp">REGISTRARSE</a>
                    </li>
                </ul>
            </nav>
        </header>

        <aside class="presentacion">
            <div class="informacion">
                <h1>¡Te damos la bienvenida a TAYPA FASTFOOD!</h1>
                <div class="textopublicitario">
                    <p>Desde ahora realiza tus pedidos más rápido vía Whatsapp o correo electrónico. </p> <br>
                    <p>¡Te responderemos en minutos!</p>
                </div>
                <div class="informacion--boton">
                    <button type="button" onclick="location.href='tienda.jsp'">Visita nuestra Tienda virtual</button>
                    <br>
                </div>
            </div>
            <div class="presentacion--imagen">
                <img src="${pageContext.request.contextPath}/IMGS/IMGS TAYPA FASTFOOD PROYECTO/portada.png" alt="Imagen presentacion">
            </div>
        </aside>
        <!--INFORMACIÓN-->
        <br>
        <main class="info--contactanos">
            <div class="box-info">
                <article class="info">
                    <h1>CONT&Aacute;CTATE CON
                        NOSOTROS</h1>
                    <p>¡Estamos listos para recibir tu pedido!</p>
                    <p>Rellena el formulario y te responderemos inmediatamente.</p> <br>
                    <p> <img src="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/telefono.png" alt="telefono"> +51 999 999 999</p><br>
                    <p> <img src="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/correo.png"> taypafastfood@gmail.com</p><br>
                    <p> <img src="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/ubicacion.png"> JR Pedro Ruiz 204 - Breña</p><br>
                </article>
                <div class="horario">
                    <br>
                    <h1>HORARIO DE ATENCIÓN</h1>
                    <ul class="working-hours">
                        <li> Lunes <span> 8:00pm - 11:30pm </span></li>
                        <li> Martes <span> 8:00pm - 11:30pm</span></li>
                        <li> Miercoles <span> 8:00pm - 11:30pm</span></li>
                        <li> Jueves <span> 8:00pm - 11:30pm</span></li>
                        <li> Viernes <span> 6:00pm - 12:30am</span></li>
                        <li> Sábado <span> 6:00pm - 12:30am</span></li>
                        <li> Domingo <span> 6:00pm - 12:30am</span></li>
                    </ul>
                </div>
                <div class="Wsp">
                    <br>
                    <h2>¡También puedes hacer tus pedidos vía Whatsapp!</h2>
                    <a href="https://walink.co/2df083" target="_blank" rel="noopener noreferrer"><img src="${pageContext.request.contextPath}/IMGS/IMGSContactanos/IMGS ICON/Whatsapp.png" alt="Hablemos por Whatsapp" title="Hablemos por Whatsapp"></a>
                </div>
            </div>
        </main>
        <section class="form-pedido">
            <div class="row">
                <form action="https://formsubmit.co/u21317379@utp.edu.pe" method="POST">
                <!--<form method="POST">-->
                    <!--<fieldset>-->
                        <h1>Haz tu pedido aquí</h1>
                        <div class="input-group">
                            <label for="name">Nombres y Apellidos</label>
                            <input type="text" name="Nombres y Apellidos" id="Nombre" placeholder=" Ingresa sus  datos..." autocomplete="off">
                            <label for="email">E-mail</label>
                            <input type="email" name="Correo" id="Correo" placeholder=" Ingresa sus  E-mail..." autocomplete="off">
                            <label for="direccion">Direccion</label>
                            <input type="direccion" name="Direccion" id="Direccion" placeholder="Ingrese direccion de su domicilio.." autocomplete="off">
                            <label for="phone">Telefono</label>
                            <input type="tel" name="Telefono" id="Telefono" placeholder=" Ingresa tu tel&eacute;fono..." autocomplete="off">
                            <label for="message">Pedido</label>
                            <textarea name="Mensaje" id="Mensaje"  cols="30" rows="5" placeholder="Indícanos tu pedido.."></textarea>
                            <div class="form-txt">
                                <input type="checkbox" id="check_Leido" value="1" autocomplete="off">
                                <a href="#">Política de privacidad </a>
                                <input type="checkbox" id="check_Leido" value="1" autocomplete="off">
                                <a href="#">Términos y condiciones</a>
                            </div>
                             <!-- Mensaje de confirmación -->
                                <p>${mensajeConfirmacion}</p>
                            <!--<button class="buttonenviar" type="button"><a href="">Enviar</a></button>-->
                            <input class="btn" type="submit" value="Enviar">
                            <!--<input class="btn" href="dataTable.php" type="submit" value="Enviar">-->
                            <!--regresar a la misma pag-->
                            <input type="hidden" name="_next" value="http://127.0.0.1:5501/">
                            <!--quitar captcha-->
                            <input type="hidden" name="_captcha" value="false">
                        </div>
                    <!--</fieldset>-->
                </form>
            </div>
        </section>
        <br>
        <footer>
            <section class="links">
                <h2>Con&eacute;ctate con nostros</h2> <br>
                <a href="https://www.facebook.com/profile.php?id=100040639008585"><i class="fa-brands fa-facebook fa-2xl"></i></a>
                <a href="https://www.instagram.com/taypa.fast.food/"><i class="fa-brands fa-instagram fa-2xl"></i></a>
                <a href="" https://wa.me/51932920532?text=Buenas!%20Deseo%20ordenar%20una%20salchi%20taypa...%20"><i class="fa-brands fa-whatsapp fa-2xl"></i></a>
                <a href="https://www.tiktok.com/es"><i class="fa-brands fa-tiktok fa-2xl"></i></a>
            </section>
            <br>
            <marquee scrolldelay="5" style="background-color: rgb(173, 44, 167);font-size:30px">
                <h4 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h4>
            </marquee>
        </footer>
        <script src="js/contactanos.js"></script>
    </div>

</body>

</html>

