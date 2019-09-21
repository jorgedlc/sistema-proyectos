<?php

namespace App\Clases;

use DB;

class Seguimiento{


        public function ingresarSeguimiento($id_proyecto){
            $fecha_creacion = date('Y-m-d');
            $seguimiento = DB::select("INSERT INTO seguimientos (id_proyecto,fecha_creacion) VALUES (?,?);",[$id_proyecto , $fecha_creacion]);
            return $seguimiento;
        }


        public function listarPresupuestoSeguimiento($id_seguimiento){

        
        }



}


?>