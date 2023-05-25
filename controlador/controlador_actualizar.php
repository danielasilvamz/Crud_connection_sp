<?php
if (!empty($_POST["btn_guardar"])) {
    $id = $_POST["id"];
    $nombres = $_POST["nombres"];
    $apellidos = $_POST["apellidos"];
    $telefono = $_POST["telefono"];
    $correo = $_POST["correo"];
    $contrasena = $_POST["contrasena"];
    $sql = $conexion->query("update Usuarios set nombres='$nombres', apellidos='$apellidos', telefono='$telefono', email='$correo', contrasena='$contrasena' where id=$id");
    if ($sql == 1) {
        echo '<script>alert("¡Datos modificados!");</script>';
        echo '<script>window.location.href = "perfil.php";</script>';
    } else {
        echo '<script>alert("Error al actualizar el perfil");</script>';
    }
}
?>