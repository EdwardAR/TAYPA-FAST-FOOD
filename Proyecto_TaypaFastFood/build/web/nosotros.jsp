<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TAYPA FASTFOOD</title>
    <!-- libreria para que aparezca animacion en la pag web -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!--  para que aparezca el icono en la pestaña -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/nosotros.css" />
    <title>Sobre nosotros</title>
  </head>
  <body>
    <div class="contenedor">
        <aside class="presentacion">
            <div class="presentacion--imagen">
                <center><div class="contenedor">
                <!--  header menu movible -->
                <header class="header">
                    <div class="logotivo">
                        <img class="logo" src="${pageContext.request.contextPath}/IMGS/NOSOTROS/logo taypa.png" alt="Imagen logotivo">
                    </div>
                    <div class="logo">
                        <p ><span>FAST<br>FOOD</span></p>
                    </div>
                    <nav class="menu">
                        <ul class="navegacion">
                            <li><a class="button button-danger" href="index.jsp" >&#x25A3;Regresar</a></li>
                        </ul>
                    </nav>
                </header>
                    </div></center>
        <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
        <script src="script.js"></script>

    </header>
      <div class="banner">
        </div>
      </div>
      <div class="max-width">
        <section class="home-section section">
          <article class="section-column">
            <h1>Nuestra historia</h1>
            <p class="section-text text-normal">
              
Fundada el 22 de abril de 2020 en Lima-Perú , abriendo nuestra primera y unica tienda por el momento en el primer piso de nuestra casa ubicado en el Jiron Pedro Ruiz Gallo #200 en el distrito de Breña fueron tiempos dificiles debido 
a la pandemia ya que el rubro de la comida fue uno de los mas golpeados por lo que muchas empresas tuvieron que cerrar debido 
a la poca ganancia que se generaba ya que habia muchas restricciones por parte del estado. No ha sido facil mantenernos 
en el rubro de la comida ya que dependemos de nuestros clientes pero gracias a nuestra sazón y servicio de calidad, contamos con un publico ya ganado en estos años y seguimos mejorando cada dia que pasa para que ellos puedan disfrutar de nuestros platillos. 

<br>¡Una pequeña empresa generosa con alma de clase mundial!
Somos una empresa cuya filosofía de vida está enfocada en la GENEROSIDAD por dar, por servir; 
ofreciendo lo mejor de cada uno de nosotros.</br>
            
          </article>
          <figure class="section-image-container">
          
            <img src="${pageContext.request.contextPath}/IMGS/NOSOTROS/imagen3.jpg" alt="imagen de seccion 1" />
          </figure>
        </section><br><br>

        <section clas="section">
        
        <h1 class="heading"><span> Sobre </span> Nosotros</h1><br><br>
          <ul class="feature-list">
            <li>
              <div class="feature-card">
                <figure class="feature-image">
                  
                  <img src="${pageContext.request.contextPath}/IMGS/NOSOTROS/caracteristica1.png" alt="imagen caracteristica" />
                </figure>
                <div class="feature-content">
                  <p class="texto-normal-2-dark-blue feature-title">Delivery gratis</p>
                  <p class="texto-de-avisos-grey">Entregamos el producto a sus respectivos hogares y el delivery es totalmente gratis, tenemos el objetivo de satisfacer las necesidades de nuestros clientes.</p>
                </div>
              </div>
            </li>

            <li>
              <div class="feature-card">
                <figure class="feature-image">
                  <img src="${pageContext.request.contextPath}/IMGS/NOSOTROS/caracteristica2.png"  alt="imagen caracteristica" />
                </figure>
                <div class="feature-content">
                  <p class="texto-normal-2-dark-blue feature-title">Nuestros Valores</p>
                  <p class="texto-de-avisos-grey">* Honestidad</p>
                  <p class="texto-de-avisos-grey">* Responsabilidad</p>
                  <p class="texto-de-avisos-grey">* Respeto</p>
                  <p class="texto-de-avisos-grey">* Compromiso</p>
                </div>
              </div>
            </li>

            <li>
              <div class="feature-card">
                <figure class="feature-image">
                  <img src="${pageContext.request.contextPath}/IMGS/NOSOTROS/caracteristica3.png"  alt="imagen caracteristica" />
                </figure>
                <div class="feature-content">
                  <p class="texto-normal-2-dark-blue feature-title">Calidad del producto</p>
                  <p class="texto-de-avisos-grey">Cada platillo que nuestros clientes pidan son elaborados con ingredientes de alta calidad.</p>
                </div>
              </div>
            </li>
          </ul>
        </section><br><br>

       <section class="section">
        <h1 class="heading"><span> Reseña de </span> Nuestros Clientes</h1><br><br>

          <div class="slider">
            <div class="slider-item slider-item-visible">
              <div class="review-card">
                <figure class="review-image">
            
                  <img src= "${pageContext.request.contextPath}/IMGS/NOSOTROS/cliente1.jpg"  alt="cliente imagen" />
                </figure>
                <div class="review-content">
                  <h3>Jessica Martinez</h3>
                  <p class="texto-de-avisos-grey">
                    En otros lados me cobraban el delivery, pero en esta empresa eso era gratis solo tenía que pagar por el producto solicitado nada más y estaba en una reunión familiar todos estaban conforme con eso.
                  </p>
                </div>
              </div>
            </div>

         
              <div class="review-card">
                <figure class="review-image">
                  <img src= "${pageContext.request.contextPath}/IMGS/NOSOTROS/cliente3.jpg"  alt="cliente imagen" />
                </figure>
                <div class="review-content">
                  <h3>Carlos Pérez</h3>
                  <p class="texto-de-avisos-grey">Me hicieron un descuento en el producto que pedí con el 50 por ciento por haber demorado en la entrega de delivery.</p>
                </div>
              </div>
            

            
              <div class="review-card">
                <figure class="review-image">
                  <img src= "${pageContext.request.contextPath}/IMGS/NOSOTROS/cliente2.jpg" alt="cliente imagen" />
                </figure>
                <div class="review-content">
                  <h3>Julia Sosa</h3>
                  <p class="texto-de-avisos-grey">Estaba en el cumpleaños de una amiga y pedimos una bebida bueno llego en el momento justo a nuestra fiesta todos estábamos contentas.</p>
                </div>
              
            
        </section>

        <section class="section">
          <div class="reclamaciones-link">
            <a class="button button-danger" href="LibroReclamaciones.jsp">Libro de reclamaciones</a>
          </div>
        </section>
    
  </body><br><br><br>

  <footer>
    <marquee scrolldelay="5" style="background-color: rgb(173, 44, 167);font-size:30px"><h4 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h4></marquee>
  </footer>
  
</html>