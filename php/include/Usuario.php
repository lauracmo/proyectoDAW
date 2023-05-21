<?Php

class Usuario {

    public $codusuario;
    public $usuario;
    public $password;
    public $nombre;
    public $apellidos;
    public $edad;
    public $telefono;
    public $direccion;
    public $moto;


    public function __construct($codusuario, $usuario, $password, $nombre, $apellidos, $edad, $telefono, $direccion, $moto)
    {
        $this->codusuario = $codusuario;
        $this->usuario = $usuario;
        $this->password = $password;
        $this->nombre = $nombre;
        $this->apellidos = $apellidos;
        $this->edad = $edad;
        $this->telefono = $telefono;
        $this->direccion = $direccion;
        $this->moto = $moto;
    }

    //Getters y setters
    public function getCodusuario()
    {
        return $this->codusuario;
    }
    public function setCodusuario($codusuario): void
    {
        $this->codusuario = $codusuario;
    }

    public function getUsuario()
    {
        return $this->usuario;
    }
    public function setUsuario($usuario): void
    {
        $this->usuario = $usuario;
    }

    public function getPassword()
    {
        return $this->password;
    }
    public function setPassword($password): void
    {
        $this->password = $password;
    }

    public function getNombre()
    {
        return $this->nombre;
    }
    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function getApellidos()
    {
        return $this->apellidos;
    }
    public function setApellidos($apellidos): void
    {
        $this->apellidos = $apellidos;
    }

    public function getEdad()
    {
        return $this->edad;
    }
    public function setEdad($edad): void
    {
        $this->edad = $edad;
    }

    public function getTelefono()
    {
        return $this->telefono;
    }
    public function setTelefono($telefono): void
    {
        $this->telefono = $telefono;
    }

    public function getDireccion()
    {
        return $this->direccion;
    }
    public function setDireccion($direccion): void
    {
        $this->direccion = $direccion;
    }

    public function getMoto()
    {
        return $this->moto;
    }
    public function setMoto($moto): void
    {
        $this->moto = $moto;
    }


}
?>