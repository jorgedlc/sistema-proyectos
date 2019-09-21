<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/prueba', function() {
    return view('prueba');
});

Route::get('/login', function(){
    return View('login2');
});

Route::get('/registro',function(){
    return View('registro');
});

Route::post('/ingresar','loginController@ingresar');
Route::post('/registrar' ,'UsuariosController@registrarUsuario');



Route::get('/', function () {
    return view('welcome');
});




//Route::resource('login','loginController');


Route::get('proyectos','ProyectosController@index');
Route::get('detalle','ProyectosController@detalleProyecto');