<?php
require_once 'C:\xampp\htdocs\Pluma Mágica de Hogwarts\php\conexion.php';

$DatosInconrrectos = "";

if(isset($_POST['correo']) && isset($_POST['pass'])) {
    $correo = $_POST['correo'];
    $pass = $_POST['pass'];

    if(!empty($correo) && !empty($pass)) {
        $sql = "SELECT * FROM usuarios WHERE correo=? AND contraseña=?";
        $stmt = mysqli_prepare($conexion, $sql);
        mysqli_stmt_bind_param($stmt, "ss", $correo, $pass);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if(mysqli_num_rows($result) == 1) {
            // El usuario ha sido encontrado en la base de datos
            header("Location: /Pluma Mágica de Hogwarts/html/Pluma Mágica de Hogwarts.html");
            exit;
        } else {
            // El usuario no existe en la base de datos o las credenciales son incorrectas
            $DatosInconrrectos = "Correo y/o contraseña incorrectos.";
        }

        mysqli_stmt_close($stmt);
    } else {
        $DatosInconrrectos = "Los campos no pueden estar vacíos";
    }
}

include 'C:/xampp/htdocs/Pluma Mágica de Hogwarts/html/login-iniciarSesion.html';
?>

<script>
    
</script>