<?php

namespace App\Http\Controllers;



use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;


class ProyectosController extends Controller{


    public function index(){
        return View('proyectos.proyectos');
    }

    public function detalleProyecto(){
        return View('proyectos.detalle');
    }


}








?>