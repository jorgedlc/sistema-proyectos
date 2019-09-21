<?php


namespace App\Clases;

use DB;


class Tipo_Recurso{


    public function listarTiposRecursos(){
        $tipos_recursos =  DB::select("SELECT * FROM tipo_recurso");
        return $tipos_recursos;
    }






}



?>