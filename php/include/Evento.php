<?Php

class Evento {

	public $codEvento;
    public $nombre;
    public $descripcion;
    public $localidad;
    public $fecha;
    public $provincia;
    public $cartel;


    public function __construct($codEvento, $nombre, $descripcion, $localidad, $fecha, $provincia, $cartel)
    {
        $this->codEvento = $codEvento;
        $this->nombre = $nombre;
        $this->descripcion = $descripcion;
        $this->localidad = $localidad;
        $this->fecha = $fecha;
        $this->provincia = $provincia;
        $this->cartel = $cartel;
    }


    //Getters y setters
    public function getCodEvento()
    {
        return $this->codEvento;
    }
    public function setCodEvento($codEvento): void
    {
        $this->codEvento = $codEvento;
    }

    public function getNombre()
    {
        return $this->nombre;
    }
    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function getDescripcion()
    {
        return $this->descripcion;
    }
    public function setDescripcion($descripcion): void
    {
        $this->descripcion = $descripcion;
    }

    public function getLocalidad()
    {
        return $this->localidad;
    }
    public function setLocalidad($localidad): void
    {
        $this->localidad = $localidad;
    }

    public function getFecha()
    {
        return $this->fecha;
    }
    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function getProvincia()
    {
        return $this->provincia;
    }
    public function setProvincia($provincia): void
    {
        $this->provincia = $provincia;
    }

    public function getCartel()
    {
        return $this->cartel;
    }
    public function setCartel($cartel): void
    {
        $this->cartel = $cartel;
    }
}
?>