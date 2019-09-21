<?php

namespace App\Http\Controllers;



use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\Clases\Tipo_Recurso;

class ProyectosController extends Controller{

    private $tipo_recurso;

    public function __construct(){

        $this->tipo_recurso =  new Tipo_Recurso();

    }


    public function index(){
        return View('proyectos.proyectos');
    }

    public function detalleProyecto(){
        return View('proyectos.detalle');
    }

    public function crearProyecto(Request $request){

        $tipos_recursos= $this->tipo_recurso->listarTiposRecursos();
        return view('proyectos.crear_proyecto', compact('tipos_recursos'));
    }


}








?>