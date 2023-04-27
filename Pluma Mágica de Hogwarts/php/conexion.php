<?php
// Datos de conexión a la base de datos
$host = 'localhost'; // Dirección del servidor de MySQL
$usuario = 'root'; // Usuario de MySQL
$contrasena = '071120'; // Contraseña de MySQL
$base_datos = 'login1'; // Nombre de la base de datos a la que te quieres conectar

// Conexión a la base de datos
$conexion = mysqli_connect($host, $usuario, $contrasena, $base_datos);

// Verificar si la conexión fue exitosa
if (!$conexion) {
    die('Error al conectar a la base de datos: ' . mysqli_connect_error());
}
?>
