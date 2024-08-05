
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TAYPA FASTFOOD</title>
    <!-- libreria para que aparezca animacion en la pag web -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
</head>

<body>
    <div class="contenedor">
        <!--  header menu movible -->
        <header class="header">
            <div class="logotivo">
                <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png" alt="Imagen logotivo">
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
                    <li><a href="Ingresar.jsp">&#x25A3;INICIAR SESIÓN</a><a href="${pageContext.request.contextPath}/registrase.jsp">REGISTRARSE</a></li>
                </ul>
            </nav>
        </header>
        </main><br><br><br><br><br><br><br><br><br><br>
        <aside class="presentacion">
            <div class="informacion">
                <h1>Ordena tu comida favorita </h1>
                <div class="textopublicitario">
                    <p>Hola, nuestra deliciosa comida esta esperando por ti.</p><br>
                    <p>"¡Te damos la bienvenida a nuestro mundo de sabores irresistibles! <br>
                        En TAYPA FASTFOOD, siempre estamos a tu alcance con nuestra deliciosa comida rápida
                        esperándote."</p><br>
                    <p>Siempre estamos cerca de ti con nuestra comida rapida en TAYPA FASTFOOD</p>
                </div>
                <div class="informacion--boton">
                    <button type="button"><a href="tienda.jsp">Explorar Comida</a></button>
                </div>
            </div>
            <div class="presentacion--imagen">
                <img src="${pageContext.request.contextPath}/IMGS/IMGS TAYPA FASTFOOD PROYECTO/portada.png" alt="Imagen presentacion">
            </div>
        </aside><br><br>

                <h2 class="anunciovideos">ANUNCIOS</h2>
            <!-- autoplay loop muted es para que el video se reproduzca sucesivamente -->
            <video class="video1" autoplay loop muted>
                <source src="${pageContext.request.contextPath}/VIDEOS/VIDEO PUBLICITARIO.mp4" type="video/mp4">
            </video>
            <video class="video2" autoplay loop muted>
                <source src="${pageContext.request.contextPath}/VIDEOS/VIDEO PUBLICITARIO 2.mp4" type="video/mp4">
            </video><br>
            <br>
            
            
        <main class="comida">
            <h2 class="comida--titulo">Nuestros platillos &#x2926;</h2>
            <div class="platos">
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/HAMBURGUESA DOBLE CARNE.jpg"
                        alt="HAMBURGUESA DOBLE CARNE">
                    <h1>&#x22B3;Hamburguesa Doble Carne&#x22B2;</h1>
                    <p>•Queso<br>
                        •Hamburguesa artesanal(x2)<br>
                        •Huevo frito<br>
                        •Papas al hilo<br>
                        •Pan</p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/CLUB SANDWICH.jpg" alt="CLUB SANDWICH">
                    <h1>&#x22B3;Club Sandwich&#x22B2;</h1>
                    <p>•Palta<br>
                        •Papas fritas<br>
                        •Chorizo<br>
                        •Pan<br>
                        •Queso<br>
                        •Pollo desilachado<br>
                        •Tomate<br>
                        •Huevo frito
                    </p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/SALCHI ROYAL.jpg" alt="SALCHI ROYAL">
                    <h1>&#x22B3;Salchi Royal&#x22B2;</h1>
                    <p>•Queso<br>
                        •Papas fritas<br>
                        •Salchicha nacional<br>
                        •Huevo frito<br>
                        •Ensalada de lechuga fresca<br>
                        •Salsas caceras </p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/SALCHI TAYPA.jpg" alt="SALCHI TAYPA">
                    <h1>&#x22B3;Salchi Taypa&#x22B2;</h1>
                    <p>•Chorizo<br>
                        •Papas fritas<br>
                        •Salchicha nacional<br>
                        •Huevo frito<br>
                        •Ensalada de lechuga fresca<br>
                        •Trozos de carne<br>
                        •Tocino<br>
                        •Salsas caceras</p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/BISTECK A LO POBRE.jpg" alt="BISTECK A LO POBRE">
                    <h1>&#x22B3;Bisteck a lo Pobre&#x22B2;</h1>
                    <p>•Bisteck de carne a la plancha<br>
                        •Papas fritas<br>
                        •Huevo frito<br>
                        •Arroz<br>
                        •Platano frito<br>
                        •Salsas caceras</p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/MOSTRITO.jpg" alt="MOSTRITO ">
                    <h1>&#x22B3;Mostrito&#x22B2;</h1>
                    <p>•Crujiente y jugosa alita de pollo broaster<br>
                        •Papas fritas<br>
                        •Huevo frito<br>
                        •Arroz chaufa<br>
                        •Ensalada de lechuga fresa<br>
                        •Salsas caceras</p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/TALLARIN SALTADO.jpg" alt="TALLARIN SALTADO ">
                    <h1>&#x22B3;Tallarin Saltado&#x22B2;</h1>
                    <p>•Deliciosos y jugosos tallarines saltados acompañados de trozos de carne o pollo<br>
                        •Tomate<br>
                        •Cebollita china. </p>
                </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/ALITAS BBQ.png" alt="ALITAS BBQ ">
                    <h1>&#x22B3;Alitas BBQ&#x22B2;</h1>
                    <p>•Jugosas y deliciosas piezas de pollo bañadas en salsa BBQ<br>
                        •Papas fritas<br>
                        •Ensalada de lechuga fresca<br>
                        •Salsas caceras</p>
                </article>
            </div><br><br>
            <h2 class="comida--titulo">Nuestros Jugos y Bebidas &#x2926;</h2>
            <div class="platos">
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/bebidas taypa.jpg" alt="bebidas taypa">
                    <h1>&#x22B3;Bebidas TAYPA FASTFOOD&#x22B2;</h1>
                    <p>•Chicha <br>
                        •Limonada <br>
                        •Gaseosas <br>
                        •Refrescos</p>
                    </article>
                <article class="plato">
                    <img src="IMGS/IMGS TAYPA FASTFOOD PROYECTO/jugos taypa.jpg" alt="jugos taypa">
                    <h1>&#x22B3;Jugos TAYPA FASTFOOD&#x22B2;</h1>
                    <p>•Papaya <br>
                        •Fresa <br>
                        •Piña <br>
                        •Mango <br>
                        •Mixto
                    </p>
                </article>
            </div>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>

<section class="Contáctanos" id="Contáctanos">
   <br><br><br>
    <h1 class="heading"><span> Info </span> Contáctanos</h1><br><br>
    <h2 class="heading">Encuentra tu TAYPA FAST FOOD &#x2926;</h2>
    <div class="row">
        <iframe class="map"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.6309800186887!2d-77.05362022410452!3d-12.068891742314813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8e14e1b2e55%3A0x3c67f15e15f551ff!2sD&#39;Roceli%20Caf%C3%A9!5e0!3m2!1ses-419!2spe!4v1696826185620!5m2!1ses-419!2spe"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade">
        </iframe>
        
    </div>
</section>

<footer>
   <marquee scrolldelay="1" style="background-color: rgb(173, 44, 167);font-size:45px">
        <h4 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h4>
    </marquee>
</footer>

</html>