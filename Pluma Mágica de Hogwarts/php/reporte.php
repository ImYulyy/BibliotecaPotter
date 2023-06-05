<?php
require('fpdf/fpdf.php'); // Ruta hacia el archivo FPDF
require('conexion.php'); // Incluir el archivo de conexión

// Consulta a la base de datos
$query = "SELECT id, nombre, correo, contraseña FROM usuarios";
$resultado = mysqli_query($conexion, $query);

// Crear el objeto FPDF
$pdf = new FPDF('L'); // 'L' indica orientación apaisada (landscape)
$pdf->AddPage();

// Configurar la fuente y el tamaño del texto
$pdf->SetFont('Arial', 'B', 12);

// Definir los anchos de las columnas
$anchoID = 30;
$anchoNombre = 50;
$anchoCorreo = 80; // Ajustar el ancho de la columna del correo
$anchoContraseña = 40;

// Agregar título
$pdf->Cell(0, 10, utf8_decode('Reporte de cuenta de los usuarios'), 0, 1, 'C');
$pdf->Ln(10); // Salto de línea

// Crear la cabecera del reporte
$pdf->Cell($anchoID, 10, 'ID', 1);
$pdf->Cell($anchoNombre, 10, 'Nombre', 1);
$pdf->Cell($anchoCorreo, 10, 'Correo', 1);
$pdf->Cell($anchoContraseña, 10, 'Contra', 1);
$pdf->Ln(); // Salto de línea

// Agregar los datos de la consulta al reporte
while ($row = mysqli_fetch_assoc($resultado)) {
    $pdf->Cell($anchoID, 10, $row['id'], 1);
    $pdf->Cell($anchoNombre, 10, $row['nombre'], 1);
    $pdf->Cell($anchoCorreo, 10, $row['correo'], 1);
    $pdf->Cell($anchoContraseña, 10, $row['contraseña'], 1);
    $pdf->Ln(); // Salto de línea
}

// Generar el archivo PDF
$pdf->Output('Reporte de usuarios.pdf', 'D');
?>
