<?php
require_once 'C:\xampp\htdocs\Pluma Mágica de Hogwarts\php\conexion.php';

$cuentaRegistrada = "";

if(isset($_POST['user']) && isset($_POST['correo']) && isset($_POST['pass'])) {
    $user = $_POST['user'];
    $correo = $_POST['correo'];
    $pass = $_POST['pass'];

    if(!empty($user) && !empty($correo) && !empty($pass)) {
        // Comprobar si el correo ya está registrado
        $sql_check_email = "SELECT correo FROM usuarios WHERE correo = ?";
        $stmt_check_email = mysqli_prepare($conexion, $sql_check_email);
        mysqli_stmt_bind_param($stmt_check_email, "s", $correo);
        mysqli_stmt_execute($stmt_check_email);
        $result_check_email = mysqli_stmt_get_result($stmt_check_email);

        if(mysqli_num_rows($result_check_email) > 0) {
            // El correo ya está registrado
            $cuentaRegistrada = "El correo<br><span style=\"font-weight: bold;\">". $correo ."</span><br>ya está registrado.";
            
        } else {
            // Insertar el nuevo usuario en la base de datos
            $sql_insert_user = "INSERT INTO usuarios (nombre, correo, contraseña) VALUES (?, ?, ?)";
            $stmt_insert_user = mysqli_prepare($conexion, $sql_insert_user);
            mysqli_stmt_bind_param($stmt_insert_user, "sss", $user, $correo, $pass);
            mysqli_stmt_execute($stmt_insert_user);
            mysqli_stmt_close($stmt_insert_user);

            $cuentaRegistrada = "La cuenta se registro correctamente";
        }

        mysqli_stmt_close($stmt_check_email);
    } else {
        $cuentaRegistrada = "Los campos no pueden estar vacíos";
    }
}

include '../html/login-registrarse.html';
?>
