<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;



use App\Clases\Usuarios;

class UsuariosController extends Controller{

    private $usuarios;

    public function __construct(){

        $this->usuarios  =  new Usuarios();
    }

    public function registrarUsuario(Request $request){

        $nombre = $request->nombre;
        $apellidos= $request->apellidos;
        $correo=$request->correo;
        $usuario=$request->usuario;
        $contrasena=$request->contrasena;
        $area=$request->area;
        $id_rol=3; //Usuarios externos
    

        return $this->usuarios->ingresarUsuario($nombre , $apellidos  , $correo  , $usuario , $contrasena , $area , $id_rol );


    }
    

}





?>