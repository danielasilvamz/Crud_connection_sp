<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil de Usuario</title>
    <link rel="stylesheet" href="estilos_perfil.css">
</head>

<body>
    <script>
        function eliminar() {
            var respuesta = confirm("Estás seguro que deseas borrar tu cuenta?");
            return respuesta;
        }
    </script>
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
        <div class="container">
            <h1>Perfil</h1>
            <?php
            include "modelo/conexion_bd.php";
            include "controlador/controlador_borrar.php";
            ?>
            <div class="table">
                <table class="list" id="storeList">
                    <thead>
                        <tr>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Teléfono</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql = $conexion->query("select * from Usuarios order by id desc limit 1");
                        while ($datos = $sql->fetch_object()) { ?>
                            <div class="elementos_tabla">
                                <tr>
                                    <td>
                                        <?= $datos->nombres ?>
                                    </td>
                                    <td>
                                        <?= $datos->apellidos ?>
                                    </td>
                                    <td>
                                        <?= $datos->telefono ?>
                                    </td>
                                    <td>
                                        <?= $datos->email ?>
                                    </td>
                                    <td>
                                        **********
                                    </td>
                                </tr>
                            </div>
                                <div class="botones">
                                <div class="boton">
                                    <button type="button" id="btn_actualizar" class="btn_actualizar"
                                        onclick="window.location.href = 'actualizar_perfil.php?id=<?= $datos->id ?>'">Actualizar</button>
                                </div>
                                <div class="boton_abajo">
                                    <a onclick="return eliminar()" href="perfil.php?id=<?= $datos->id ?>"
                                        class="btn_borrar"> Borrar Cuenta</a>
                                </div>
                            </div>
                        <?php }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>