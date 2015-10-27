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
} else {
    echo "conexión exitosa! :D";
}
?>
