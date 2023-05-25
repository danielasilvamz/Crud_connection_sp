<?php
if (!empty($_GET["id"])) {
    $id = $_GET["id"];
    $sql = $conexion->query("delete from Usuarios where id=$id");
    if ($sql == 1) {
        echo '<script>alert("Su cuenta fue eliminada correctamente");</script>';
        echo '<script>window.location.href = "index.php";</script>';
    } else {
        echo '<script>alert("Error al eliminar su cuenta");</script>';
    }
}
?>