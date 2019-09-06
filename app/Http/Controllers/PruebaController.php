<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;


class PruebaController extends Controller{


        public function roles(){

            $roles =  DB::table('dbo.Roles')->get();


            return $roles;

            
        }

}





?>