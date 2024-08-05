<%-- 
    Document   : tienda
    Created on : 24 may. 2024, 3:36:21 a. m.
    Author     : ALAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- libreria para que aparezca animacion en la pag web -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png">
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/tienda.css">
    <script src="https://kit.fontawesome.com/56cbaac43a.js" crossorigin="anonymous"></script>
    <title>TAYPA FASTFOOD</title>
        
</head>
<body>
    <div class="contenedor">
        <!--  header menu movible -->
        <header class="headerprincipal">
            <div class="logotivop">
                <img class="logo" src="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png" width="230px" height="130" alt="Imagen logotivo">
            </div>
            <div class="logoprincipal">
                <p ><span class="namelogo">FAST<br>FOOD</span></p>
            </div>
            <nav class="menuprincipal">
                <ul class="navegacion">
                    <li><a href="index.jsp">&#x25A3;INICIO</a></li>
                    <li><a href="nosotros.jsp">&#x25A3;NOSOTROS</a></li>
                    <li><a href="tienda.jsp">&#x25A3;TIENDA</a></li>
                    <li><a href="CONTACTANOS.jsp">&#x25A3;CONTACTANOS</a></li>
                    <li><a href="Ingresar.jsp">INICIAR SESI&Oacute;N</a><a href="registrase.jsp">REGISTRARSE</a></li>
                </ul>
            </nav>
            <nav id="carrito">
                <i class="fa-solid fa-cart-shopping" style="color: #cd10e6;">
                    <div class="buy-card">
                        <ul class="nav-card">
                            <li>Imagen</li>
                            <li>Nombre</li>
                            <li>Precio</li>
                            <li>Cantidad</li>
                            <li> </li>     
                        </ul>
                        <div class="lista_pedidos">
                        <!-- Se empleo al inicio como referencia
                            <img src="IMGS/img2.jpg">
                            <p>Hamburguesa Doble Carne</p>
                            <p>S/. 10</p>
                            <p>1</p>
                            <p><span>X</span></p>-->
                        </div>
                        <!--<h4>Total:</h4>-->
                        <!-- <button id="vaciar_carrito"><h3>Vaciar Carrito</h3></button> --> 
                        <button type="button" id="ver_carrito"><h3>Ver Carrito</h3></button>
                    </div>
                </i>
            </nav>
        </header><br><br><br><br><br><br><br><br><br><br>
        <body>
        <div class="titulo">
                <h2>Anuncios</h2><br>
            </div>
        <div class="videospubli">
        <video class="anunciovideo" autoplay loop muted>
            <source src="${pageContext.request.contextPath}/VIDEOS/VideoTienda.mp4" type="video/mp4">
        </video>
        <video class="anunciovideo3" autoplay loop muted>
            <source src="${pageContext.request.contextPath}/VIDEOS/VideoTienda3.mp4" type="video/mp4">
        </video>

        </div>
    <div class="contenedor">
            <div class="titulo">
                <h2>PLATOS</h2><br>
            </div>
            <div class="platos" id="lista-pedidos">
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img2.jpg">
                    <h1>Hamburguesa Doble Carne</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <p></p>
                            <li>Queso</li>
                            <li>Hamburguesa Artesanal (x2)</li>
                            <li>Huevo frito</li>
                            <li>Papas al hilo</li>
                            <li>Pan</li>
                            <li>Salsas caceras</li>
                        </ul>
                    </div>
                            <div class="precio">
                                <h3>S/. 10</h3>
                            </div>
                            <button class="agregar-carrito" data-id="1">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img3.jpg">
                    <h1>Club Sandwich</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Palta</li>
                            <li>Papas fritas</li>
                            <li>Chorizo</li>
                            <li>Pan</li>
                            <li>Queso</li>
                            <li>Pollo desilachado</li>
                            <li>Tomate</li>
                            <li>Huevo frito</li>
                            <li>Salsas caceras</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 18</h3>
                        </div>
                        <button class="agregar-carrito" data-id="2">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img4.jpg">
                    <h1>Salchi Royal</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Queso</li>
                            <li>Papas fritas</li>
                            <li>Salchicha Nacional</li>
                            <li>Huevo Frito</li>
                            <li>Ensalada de lechuga fresca</li>
                            <li>Salsas caceras</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 15</h3>
                        </div>
                        <button class="agregar-carrito" data-id="3">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img5.jpg">
                    <h1>Salchi Taypa</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Chorizo</li>
                            <li>Papas fritas</li>
                            <li>Salchicha Nacional</li>
                            <li>Huevo Frito</li>
                            <li>Ensalada de lechuga fresca</li>
                            <li>Trozos de carne</li>
                            <li>Tocino</li>
                            <li>Salsas caceras</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 18</h3>
                        </div>
                        <button class="agregar-carrito" data-id="4">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img6.jpg">
                    <h1>Bisteck a lo Pobre</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Bisteck de carne a la plancha</li>
                            <li>Papas fritas</li>
                            <li>Huevo Frito</li>
                            <li>Arroz</li>
                            <li>Platano frito</li>
                            <li>Salsas cacera</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 20</h3>
                        </div>
                        <button class="agregar-carrito" data-id="5">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img7.jpg">
                    <h1>Mostrito</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Crujiente y jugosa alita de pollo broaster</li>
                            <li>Papas fritas</li>
                            <li>Huevo Frito</li>
                            <li>Arroz Chaufa</li>
                            <li>Ensalasa de lechuga fresca</li>
                            <li>Salsas caceras</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 23</h3>
                        </div>
                        <button class="agregar-carrito" data-id="6">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img8.jpg">
                    <h1>Tallarin Saltado</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Deliciosos y jugosos tallarines saltados</li>
                            <li>Trozos de carne o pollo</li>
                            <li>Tomate</li>
                            <li>Cebolla</li>
                            <li>Cebollita china</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 25</h3>
                        </div>
                        <button class="agregar-carrito" data-id="7">Agregar al Carrito</button>
                </div>
                <div class="plato">
                    <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img9.jpg">
                    <h1>Alitas BBQ</h1>
                    <div class="lista">
                        <ul style="list-style-type: none;">
                            <li>Jugosas y deliciosas piezas de pollo bañadas en salsa BBQ</li>
                            <li>Papas fritas</li>
                            <li>Ensalada de lechuga fresca</li>
                            <li>Salsas caceras</li>
                        </ul>
                    </div>
                        <div class="precio">
                            <h3>S/. 25</h3>
                        </div>
                        <button class="agregar-carrito" data-id="8">Agregar al Carrito</button>
                </div>
            </div>
            <div class="comida--titulo">
                <h2>BEBIDAS Y JUGOS</h2>
            </div>
            <div class="platos" id="lista-pedidos">
                <div class="bebidas">
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img10.png">
                        <h1>Chicha</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Frozen Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 8</h3>
                            </div>
                            <button class="agregar-carrito" data-id="9">Agregar al Carrito</button>
                    </div>
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img11.png">
                        <h1>Limonada</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Frozen Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 8</h3>
                            </div>        
                            <button class="agregar-carrito" data-id="10">Agregar al Carrito</button>
                    </div>
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img12.png">
                        <h1>Gaseosas</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Inka Kola</li>
                                <li>Coca Kola</li>
                                <li>Sprite</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 5</h3>
                            </div>                                   
                            <button class="agregar-carrito" data-id="11">Agregar al Carrito</button>
                    </div>
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img14.png">
                        <h1>Papaya</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 8</h3>
                            </div>                                   
                            <button class="agregar-carrito" data-id="12">Agregar al Carrito</button>
                    </div>
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img14.png">
                        <h1>Fresa</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 12</h3>
                            </div>                                   
                            <button class="agregar-carrito" data-id="13">Agregar al Carrito</button>
                    </div>
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img14.png">
                        <h1>Piña</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 10</h3>
                            </div>                                   
                            <button class="agregar-carrito" data-id="14">Agregar al Carrito</button>
                    </div>           
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img14.png">
                        <h1>Mango</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 10</h3>
                            </div>                                   
                            <button class="agregar-carrito" data-id="15">Agregar al Carrito</button>
                    </div>       
                    <div class="plato">
                        <img src="${pageContext.request.contextPath}/IMGS/IMGSTienda/img15.png">
                        <h1>Surtido</h1>
                        <div class="lista">
                            <ul  style="list-style-type: none;">
                                <li>Helada</li>
                                <li>Sin Helar</li>
                            </ul>
                        </div>
                            <div class="precio">
                                <h3>S/. 9</h3>
                            </div>                                   
                            <button class="agregar-carrito" data-id="16">Agregar al Carrito</button> 
                    </div>
                </div>
            </div>
    </div>
    <script src="JS/tienda.js"></script>
</body>

<footer>
    <marquee scrolldelay="5" style="background-color: rgb(173, 44, 167);font-size:30px"><h4 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h4></marquee>
</footer>

</html>

