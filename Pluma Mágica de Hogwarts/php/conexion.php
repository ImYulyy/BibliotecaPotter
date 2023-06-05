<?php
// Datos de conexión a la base de datos
$host = 'localhost'; // Dirección del servidor de MySQL
$usuario = 'root'; // Usuario de MySQL
$contrasena = 'Privado'; // Contraseña de MySQL
$base_datos = 'login1'; // Nombre de la base de datos a la que te quieres conectar

$conexion = mysqli_connect($host, $usuario, $contrasena, $base_datos);

// Verificar si la conexión fue exitosa
if (!$conexion) {
    die('Error al conectar a la base de datos: ' . mysqli_connect_error());
}

// Verificar si hay algún error adicional
if (mysqli_error($conexion)) {
    die('Error al conectar a la base de datos: ' . mysqli_error($conexion));
}

?>
