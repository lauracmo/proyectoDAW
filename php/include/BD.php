<?php
require_once "datos_conexionPDO.php";
require_once "Evento.php";
require_once "Ruta.php";
require_once "Usuario.php";
class Base
{

    private static function ejecutarConsulta()
    {
        try {
            $conexion = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASSWORD);
            $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $conexion->exec("SET CHARACTER SET utf8");
        } catch (PDOException $e) {
            echo 'ERROR - No se ha podido conectar con la BD: ' . $e->getMessage();
        }
        return $conexion;
    }


    public static function getUsuario($user, $passwd)
    {
        try{
            $sql = "SELECT usuario FROM usuarios WHERE usuario = :usr AND password = :passwd ";
            $conexion = self::ejecutarConsulta();
            $resultado = $conexion->prepare($sql);
            $afectados = $resultado->execute(array(":usr" => $user, ":passwd" => $passwd));
            $fila = $resultado->fetch();
            $resultado->closeCursor();
            $conexion = null;
            if ($fila != false) {
                $usuario = $fila[0];
                return $usuario;
            } else {
                $usuario = false;
                return $usuario;
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function addUsuario($user, $passwd)
    {
    try{
        $sql = "INSERT INTO usuarios (usuario, password) VALUES (:usr, :passwd)";
        $conexion = self::ejecutarConsulta();
        $resultado = $conexion->prepare($sql);
        $afectados = $resultado->execute(array(":usr" => $user, ":passwd" => $passwd));
        $resultado->closeCursor();
        $conexion = null;
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    return $afectados;
    }
}

