<?php


namespace  App\Clases;

use DB;



class Actividades{

    public function listarActividades($idProyecto){
        $actividades =  DB::select("SELECT * FROM actividades WHERE id_proyecto =  ? ;" , [$idProyecto]);
        return $actividades;
    }


    public function ingresarActividad( $id_proyecto , $actividad,  $descripcion  , $fecha_inicio , $fecha_final){
        $estado=1;
        $fecha_creacion = date('Y-m-d');
        $actividad = DB::select("INSERT INTO actividades (id_proyecto , actividad , descripcion , fecha_inicio , fecha_final  , fecha_creacion , estado)",
        [$id_proyecto , $actividad , $descripcion , $fecha_inicio ,  $fecha_final , $fecha_creacion , $estado ]);

        return $actividad;
    }


}


?>