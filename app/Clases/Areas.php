<?php

namespace App\Clases;

use DB;

class Areas{

    public function listarAreas(){
        $areas=DB::select("SELECT * FROM areas");
        return $areas;
    }

    public function listarAreasActivas(){
        $areas=   DB::select("SELECT * FROM areas WHERE estado=1");
        return $areas;
    }


    public function obternerArea($id_area){
        $area =  DB::select("SELECT * FROM areas WHERE id_area = ? ;" ,[$id_area]);
        return $area;
    }

    public function ingresarArea($nombre){
        $estado=1;
        $result  =  DB::select("INSERT INTO area (area, estado)  VALUES (?,?);" ,[$nombre,$estado]);
        return $result;
    }

}


?>