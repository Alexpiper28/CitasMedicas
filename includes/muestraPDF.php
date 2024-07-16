<?php


session_start();
error_reporting(0);
$varsesion = $_SESSION['nombre'];

	if($varsesion== null || $varsesion= ''){
     header("Location: _sesion/login.php");
	
	}

////////////////// CONEXION A LA BASE DE DATOS ////////////////////////////////////
$id = $_GET['id'];
include "db.php"; 
$consulta = "SELECT * FROM pacientes WHERE id = $id";
$resultado = mysqli_query($conexion, $consulta);
$usuario = mysqli_fetch_assoc($resultado);
?>
<?php include_once "header.php"; ?>

<!DOCTYPE html>
<html lang="es-MX">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Paciente</title>
    <link rel="stylesheet" href="../../css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../../css/2.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body>
    <?php include_once "header.php"; ?>
    <div class="container">
        <h3 class="text-center">Detalles del Paciente <?php echo $usuario ['nombre']; ?></h3>


        <form action="functions.php" method="POST">
            <input type="hidden" name="accion" value="genera_ticket">
            <input type="hidden" name="id_paciente" value="<?php echo htmlspecialchars($usuario['id']); ?>">
            <button type="submit" class="btn btn-secondary">Generar PDF</button>
        </form>
    </div>
    <?php include "../includes/footer.php"; ?>
</body>
</html>
