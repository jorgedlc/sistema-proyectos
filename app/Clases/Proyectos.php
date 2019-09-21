<?php
namespace App\Clases;

use DB;


class Proyectos{


    public function ingresarProyecto($titulo, $descripcion , $id_usuario , $id_area , $id_estado ,  $fecha_inicio  , $fecha_final , 
    $fecha_creacion ,  $objetivo ,$fuente_financiamiento , $resultado_esperado , $justificacion ,  $aliado_estrategico ){

        $result = DB::select("INSERT INTO proyectos (titulo, descripcion, id_usuario ,id_area , id_estado , fecha_inicio , fecha_final , 
        fecha_creacion , objetivo , fuente_financiamiento , resultado_esperado , justificacion , aliado_esperado )",
        [$titulo, $descripcion , $id_usuario , $id_area , $id_estado ,  $fecha_inicio  , $fecha_final , 
        $fecha_creacion ,  $objetivo ,$fuente_financiamiento , $resultado_esperado , $justificacion ,  $aliado_estrategico]);


        $last_proyecto= DB::select("SELECT MAX(id_proyecto) AS id_proyecto FROM proyectos");

        $id=0;
        if(count($last_proyecto)>0){
            $id =  $last_proyecto[0]['id_proyecto'];
        }
        return $id;
    }


    public function listarProyectos(){
        $proyectos = DB::select("SELECT * FROM proyectos INNER JOIN areas ON areas.id_area =  proyectos.id_area
        INNER JOIN estados ON  estados.id_estado =   proyectos.id_estado
        ORDER BY proyectos.fecha_creacion DESC");
         return $proyectos; 
    }

    public function filtrar_proyectos($estado , $area , $fecha_inicial_filtro , $fecha_final_filtro , $nombre ){
        $proyectos =  DB::select("SELECT * FROM proyectos INNER JOIN areas ON areas.id_area =  proyectos.id_area
        INNER JOIN estados ON  estados.id_estado =   proyectos.id_estado
        WHERE proyectos.id_estado = ?  OR proyectos.id_area= ?  OR proyectos.titulo_proyecto = ? OR (fecha_creacion BETWEEN ? AND ? )
        ORDER BY proyectos.fecha_creacion DESC;" , [$estado ,  $area ,$fecha_inicial_filtro ,  $fecha_final_filtro] );
        return $proyectos;
    }


    public function cambiarEstadoProyecto($idProyecto , $estado){
        $result =DB::select("UPDATE proyectos SET estado= ? WHERE id_proyecto= ? ". [$estado , $idProyecto]);
        return $result;        
    }

    public function obtener_proyecto($id_proyecto){
        $proyecto  =  DB::select("SELECT * FROM proyectos WHERE id_proyecto=?",[$id_proyecto]);
        return $proyecto;
    }


}



?>