<?php
include "modelo/conexion_bd.php";
$id = $_GET["id"];

$sql = $conexion->query("select * from Usuarios where id=$id");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Perfil de Usuario</title>
    <link rel="stylesheet" href="estilos_actualizar.css">
</head>

<body>
    <div class="main">
        <div class="imagenes_1">
            <img src="img/pesa.png" alt="Pesa" class="img img_pesa">
            <img src="img/proteina.png" alt="Proteina" class="img img_proteina">
            <img src="img/shaker.png" alt="Shaker" class="img img_shaker">
        </div>
        <div class="imagenes_2">
            <img src="img/pesa.png" alt="Pesa" class="img img_pesa">
            <img src="img/proteina.png" alt="Proteina" class="img img_proteina">
            <img src="img/shaker.png" alt="Shaker" class="img img_shaker">
        </div>
        <div class="formulario">
            <form action="" method="POST" id="formulario_perfil">
                <h1>Actualizar Perfil</h1>
                <input type="hidden" name="id" value="<?= $_GET["id"] ?>">
                <?php
                include "controlador/controlador_actualizar.php";
                while ($datos = $sql->fetch_object()) { ?>
                    <div class="grupo_formulario">
                        <label for=nombres><strong>Nombres:</strong></label>
                        <input type="text" class="control_formulario" id="nombres" name="nombres"
                            value="<?= $datos->nombres ?>" required>
                    </div>
                    <div class="grupo_formulario">
                        <label for=apellidos><strong>Apellidos:</strong></label>
                        <input type="text" class="control_formulario" id="apellidos" name="apellidos"
                            value="<?= $datos->apellidos ?>" required>
                    </div>
                    <div class="grupo_formulario">
                        <label for=telefono><strong>Teléfono:</strong></label>
                        <input type="text" class="control_formulario" id="telefono" name="telefono"
                            value="<?= $datos->telefono ?>" pattern="[0-9]{10}" required>
                    </div>
                    <div class="grupo_formulario">
                        <label for=correo><strong>Correo:</strong></label>
                        <input type="email" class="control_formulario" id="correo" name="correo" value="<?= $datos->email ?>"
                            required>
                    </div>
                    <div class="grupo_formulario">
                        <label for=contrasena><strong>Contraseña:</strong></label>
                        <input type="password" class="control_formulario" id="contrasena" name="contrasena"
                            value="<?= $datos->contrasena ?>" required>
                    </div>
                <?php }
                ?>

                <div class="botones">
                    <div class="boton">
                        <button type="submit" id="btn_guardar" name="btn_guardar" class="btn_guardar"
                            value="ok">Guardar</button>
                    </div>
                    <div class="boton">
                        <button type="button" id="btn_cancelar" class="btn_cancelar"
                            onclick="window.location.href = 'perfil.php'">Cancelar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

</html>