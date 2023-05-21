<?php
include_once("./include/BD.php");
    $usuario = Base::getUsuario($_GET['user'], $_GET['passwd']);
    if(!$usuario){
        echo "false";
    }else{
        echo $usuario;
    }
    ?>
