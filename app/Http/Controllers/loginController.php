<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Clases\Login;


class loginController extends Controller
{
    private $login;


    public function __construct(){
        $this->login =  new Login();
    }


    public function index()
    {
        return view('login');
    }

    public function ingresar(Request $request){

        $usuario =   $request->usuario;
        $password =  $request->contrasena;
        
        return $this->login->login($usuario,$password);
    }

}
