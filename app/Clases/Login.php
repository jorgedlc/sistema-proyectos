<?php

namespace App\Clases;
use DB;

class Login{

    public function login($usuario  , $contrasena){
        $login = DB::select("SELECT * FROM usuarios WHERE usuario=? AND contrasena=?;" , [$usuario , $contrasena]);
        return $login;    
    }


    public function listarUsuarios(){
        $usuarios = DB::select("SELECT * FROM usuarios INNER JOIN roles ON roles.id_rol = usuarios.id_rol;");
        return $usuarios;
    }

    public function ingresarUsuario($nombre  , $apellido  , $correo  , $usuario  , $contrasena  , $area , $id_rol){

        $fecha_creacion =  date('Y-m-d');
        $estado=1;

        $result = DB::select("INSERT INTO usuarios (nombre, apellidos  , correo , usuario  , contrasena , area  , id_rol , fecha_creacion, estado) ",
        [$nombre , $apellido , $contrasena , $area , $id_rol , $fecha_actual , $estado]);

        return $result;
    }




}



?>