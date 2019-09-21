<?php

namespace  App\Clases;

use DB;


class Usuarios{

    public function obtenerUsuario($id_usuario){
        $usuario  =  DB::select("SELECT * FROM usuarios WHERE id_usuario =  ? ;" , [$id_usuario]);
        return $usuario;
    }


    public function ingresarUsuario($nombre , $apellidos  , $correo  , $usuario , $contrasena , $area , $id_rol ){

        $fecha_creacion =  date('Y-m-d');
        $estado=1;

        $id = DB::table('usuarios')->insertGetId(
            ['nombre'=>$nombre ,
             'apellidos'=>$apellidos , 
             'correo'=>$correo , 
             'usuario'=>$usuario , 
             'contrasena'=>$contrasena , 
             'area'=>$area , 
             'id_rol'=>$id_rol ,
             'fecha_creacion'=>$fecha_creacion , 
             'estado'=>$estado]
        );

        return $id;
    }



}


?>