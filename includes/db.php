<?php

$host = "MYSQL8001.site4now.net";
$user = "aab177_alex351";
$password = "ELxdmaster28";
$database = "db_aab177_alex351";


$conexion = mysqli_connect($host, $user, $password, $database);
if (!$conexion) {
    die("Error de conexión a la base de datos: " . mysqli_connect_error());
}
if(!$conexion){
echo "No se realizo la conexion a la basa de datos, el error fue:".
mysqli_connect_error() ;


}

?>