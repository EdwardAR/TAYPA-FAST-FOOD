
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>DataTables.js</title>
        <!-- Para que aparezca el icono en la pestaña -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/IMGS/IMGS ICON/logo taypa.png">
        <!-- Bootstrap-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
        <!-- DataTable -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" />
        <!-- Font Awesome -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <!-- Custom CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/datatable.css" />
        <script src="JS/tienda.js" type="text/javascript"></script>
    </head>
    <br>
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
        </header> <br><br> 
        <body><br>
            <h1><center>TABLA DE PEDIDOS</center></h1><br>
            <div class="container my-4">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <table id="datatable_users" class="table table-striped">
                            <caption>
                                Tabla de Pedidos
                            </caption>
                            <thead>
                                <tr>
                                    <th class="centered">Nro. Pedido</th>
                                    <th class="centered">Producto<br></th>
                                    <th class="centered">Precio</th>
                                    <th class="centered">Cantidad</th>
                                    <!-- <th class="centered">Nombres del Cliente</th>
                                    <th class="centered">Email</th>
                                    <th class="centered">Direccion</th>
                                    <th class="centered">Telefono</th>
                                    <th class="centered">Pedidos</th>
                                    <th class="centered">Estado</th> -->

                                    <th class="centered">Opciones</th>
                                </tr>
                            </thead>
                            <tbody id="tableBody_users"></tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4 offset-md-5">
                        <form class="procesar" action="procesar.php" method="POST">
                            <input type="hidden" id="carrito" name="carrito" />
                            <input class="boton" type="submit" value="PROCESAR COMPRA"/>

                        </form>
                    </div>
                </div>
            </div>
            <!-- Bootstrap-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
            <!-- jQuery -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <!-- DataTable -->
            <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
            <!-- Custom JS -->
            <script src="JS/DataTable.js"></script>
        </body>
        <script>
                                        const carrito = JSON.parse(localStorage.getItem("carrito")) || [];
                                        document.getElementById("carrito").value = JSON.stringify({carrito: carrito, idusuario: 1, fecha_pedido: new Date()});
        </script>

        <footer>
            <marquee scrolldelay="5" style="background-color: rgb(173, 44, 167);font-size:30px"><h4 class="textofinal">©2024 TAYPA FAST FOOD Peru Company. Todos los Derechos Reservados.</h4></marquee>
        </footer>
</html>

