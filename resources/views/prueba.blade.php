@extends('layounts.plantillaOne')
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    @section('titulo')
  </head>


  <body>


    @section('contenido')

    <div class="input-group mb-3" style="width:50%;">
  <input type="text" class="form-control" placeholder="Realizar Busqueda" >
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="button" id="button-addon2">Buscar</button>
  </div>
</div>



    @endsection

  </body>

</html>
