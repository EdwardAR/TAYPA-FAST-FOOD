<?php
include('servicio/productoServicio.php');
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['carrito'])) {
    echo 'EL JSON ES =>'.$_POST['carrito'].'<br><br>';
    $carritofinal = json_decode($_POST['carrito']);
    //echo json_encode($carritofinal->carrito);
    $productoServicio = new productoServicio; 
    if ($productoServicio->insertarPedido($carritofinal))
        echo 'FUNCIONO';
    else
        echo 'F';
} else
    echo 'NO SE HA ENVIADO'


?>

