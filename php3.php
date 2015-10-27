<?php
$nombre_del_server = "localhost";
$nombre_de_usuario = "root";
$password = "root";
$nombre_de_db = "dungeons";

// creando la conexión
$conexion = new mysqli($nombre_del_server, $nombre_de_usuario,
                       $password, $nombre_de_db);
// revisando conexión
if ($conexion->connect_error) {
    die ("no me pude conectar a la base de datos :(" . $conexion->connect_error);
}

$nombre = $_POST["nombre"];
$valor_venta = $_POST["valor_venta"];
$valor_compra = $_POST["valor_compra"];

$sql = "INSERT INTO item(nombre, valor_venta, valor_compra) VALUES('$nombre', '$valor_venta', '$valor_compra');";

if (mysqli_query($conexion, $sql)) {
    echo "MUY BIEN!!! :D";
} else {
    echo "MALDICIÓN!! algo salió mal :( <br />" . mysqli_error($conexion);
}

mysqli_close($conexion);
?>
