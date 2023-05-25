<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crud - Proyecto Guía de Suplementos Deportivos</title>
    <link rel="stylesheet" href="estilos.css">
</head>

<body>
    <div class="main-block">
        <img src="img/logo.png" alt="Logo" class="logo">
        <h1>Guía de Suplementos Deportivos</h1>
        <form action="" method="POST" id="formulario" autocomplete="off">
            <h2>¡Comencemos!</h2>
            <p>Regístrate para difrutar de todo nuestro contenido</p><br>
            <?php
            include "modelo/conexion_bd.php";
            include "controlador/controlador_registrar.php";
            ?>
            <div class="padre">
                <div>
                    <label for="nombres"><strong>Nombres:</strong></label>
                    <input type="text" id="nombres" name="nombres" placeholder="Ingresa tus nombres" required>
                </div>
                <div>
                    <label for="apellidos"><strong>Apellidos:</strong></label>
                    <input type="text" id="apellidos" name="apellidos" placeholder="Ingresa tus apellidos" required>
                </div>

                <div>
                    <label for="telefono"><strong>Teléfono:</strong></label>
                    <input type="text" id="telefono" name="telefono" placeholder="Ingresa un teléfono"
                        pattern="[0-9]{10}" required>
                </div>

                <div>
                    <label for="correo"><strong>Correo:</strong></label>
                    <input type="email" id="correo" name="correo" placeholder="Ingresa un correo" required>
                </div>

                <div>
                    <label for="contrasena"><strong>Contraseña:</strong></label>
                    <input type="password" id="contrasena" name="contrasena" placeholder="Ingresa una contraseña"
                        required>
                </div>

                <div class="form_action--button">
                    <input class="boton" type="submit" value="Registrar" id="btn_registrar" name="btn_registrar">
                </div>
            </div>
        </form>
    </div>
</body>

</html>