<?Php

class Ruta {

	public $codRuta;
    public $nombreRuta;
    public $mapa;
    public $recorrido;
    public $tiempo;
    public $distancia;
    public $valoracion;
    public $usuario;

    public function __construct($codRuta, $nombreRuta, $mapa, $recorrido, $tiempo, $distancia, $valoracion, $usuario)
    {
        $this->codRuta = $codRuta;
        $this->nombreRuta = $nombreRuta;
        $this->mapa = $mapa;
        $this->recorrido = $recorrido;
        $this->tiempo = $tiempo;
        $this->distancia = $distancia;
        $this->valoracion = $valoracion;
        $this->usuario = $usuario;
    }


    //Getters y setters
    public function getCodRuta()
    {
        return $this->codRuta;
    }

    public function setCodRuta($codRuta): void
    {
        $this->codRuta = $codRuta;
    }

    public function getNombreRuta()
    {
        return $this->nombreRuta;
    }
    public function setNombreRuta($nombreRuta): void
    {
        $this->nombreRuta = $nombreRuta;
    }

    public function getMapa()
    {
        return $this->mapa;
    }
    public function setMapa($mapa): void
    {
        $this->mapa = $mapa;
    }

    public function getRecorrido()
    {
        return $this->recorrido;
    }

    public function setRecorrido($recorrido): void
    {
        $this->recorrido = $recorrido;
    }

    public function getTiempo()
    {
        return $this->tiempo;
    }
    public function setTiempo($tiempo): void
    {
        $this->tiempo = $tiempo;
    }


    public function getDistancia()
    {
        return $this->distancia;
    }
    public function setDistancia($distancia): void
    {
        $this->distancia = $distancia;
    }


    public function getValoracion()
    {
        return $this->valoracion;
    }
    public function setValoracion($valoracion): void
    {
        $this->valoracion = $valoracion;
    }


    public function getUsuario()
    {
        return $this->usuario;
    }
    public function setUsuario($usuario): void
    {
        $this->usuario = $usuario;
    }


}
?>