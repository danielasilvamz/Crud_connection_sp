<?php
if (!empty($_POST["btn_registrar"])) {
    $nombres = $_POST["nombres"];
    $apellidos = $_POST["apellidos"];
    $telefono = $_POST["telefono"];
    $correo = $_POST["correo"];
    $contrasena = $_POST["contrasena"];

    $consulta = "call registrarUsuario('$nombres', '$apellidos', '$telefono', '$correo', '$contrasena')";
    
    $sql = $conexion->query($consulta);
    if ($sql == 1) {
        echo '<script>alert("Usuario registrado correctamente");</script>';
        echo '<script>window.location.href = "perfil.php";</script>';
    } else {
        echo '<script>alert("Error al registrar");</script>';
    }
}
?>