<?php

$dbHost     = "localhost";
$dbUsername = "root";
$dbPassword = "40milpesos_enunpardeminutos#";
$dbName     = "id5152188_tfast";
$userTable    = "users";
$infoTable = "info";


$conexion = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName);
if($conexion->connect_error){die ("Fail MYSQL : " . $conexion->connect_error);}

?>
