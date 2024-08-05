iniciarsesion.php <?php
    session_start();
    include('conexion.php');

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        function validate($data){
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        $Usuario = validate($_POST['usuario']);

        $Clave = validate($_POST['clave']);

        if(empty($Usuario)){
            header("Location: Ingresar.php?error=El usuario es requerido");
            exit();
        }elseif(empty($Clave)){
            header("Location: Ingresar.php?error=La clave es requerido");
            exit();
        }else{
            //hashing
            //$Clave = password_hash($Clave, PASSWORD_DEFAULT);
            //usa la tabla usuarios
            $Sql = "SELECT * FROM usuarios WHERE Usuario = '$Usuario' AND Clave = '$Clave'";
            $result = mysqli_query($conexion,$Sql);

            if(mysqli_num_rows($result)==1){
                $row = mysqli_fetch_assoc($result);

                if($row['Usuario']==$Usuario && $row['Clave']==$Clave){
                    $_SESSION['Usuario'] = $row['Usuario'];
                    $_SESSION['Nombre_Completo'] = $row['Nombre_Completo'];
                    $_SESSION['Id'] = $row['Id'];
                    header("Location: indexUsers.php");
                    exit();
                }else{
                    header("Location: Ingresar.php?error=El usuario o las claves son incorrectas");
                    exit();
                }
            }else{
                header("Location: Ingresar.php?error=El usuario o las claves son incorrectas");
                exit();
            }
        }    
    }else{
        header("Location: Ingresar.php");
        exit();
    }


            /*$query = $conexion ->query($Sql);

            if($query -> num_rows==1){
                $UsuarioQ = $query ->fetch_assoc();

                $Id = $UsuarioQ['Id'];
                $NombreUsuario = $UsuarioQ['NombreUsuario'];
                $Clave = $UsuarioQ['Clave'];
                $NombreCompleto = $UsuarioQ['NombreCompleto'];

                if($Usuario==$NombreUsuario){
                    $_SESSION['Id'] = $Id;
                    $_SESSION['NombreUsuario'] = $NombreUsuario;
                    $_SESSION['NombreCompleto'] = $NombreCompleto;

                    echo "<script>
                            alert('Bienvenido' + $NombreCompleto);
                            location.href = 'indexUsers.php'
                    </script>";
                }else{
                    header('Location: Ingresar.php?error="El usuario o la clave incorrecta"');
                }
                }else {
                    header('Location: Ingresar.php?error="El usuario o la clave incorrecta"');
                    }
            }else {
                header('Location: Ingresar.php?error="El usuario o la clave incorrecta"');
            }
        }*/
        
    
            
    


    