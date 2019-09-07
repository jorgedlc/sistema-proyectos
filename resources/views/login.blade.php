<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link media="all" type="text/css" rel="stylesheet" href="{{URL::asset('css/estilo1.css')}}">
    <title>Login</title>
  </head>
  <body style="background-color:#0C596D">
    <div class="container" id="menuLogin">
      <form class="" action="index.html" method="post" >
          <img class="rounded mx-auto d-block" src="{{URL::asset('Img/login.png')}}" width="100px" height="100px"> <br> <br>
          <h2>Gestion de proyectos</h2> <br>
          <input class="text-center" type="text" style="width:200px; display: block; margin:0 auto" placeholder="Ingresar Usuario"> <br>
          <input class="text-center" type="password" style="width:200px; display: block; margin:0 auto" placeholder="Ingresar Contrasena"> <br>
          <input  type="submit" name="" style="width:80px; display: block; margin:0 auto" class="btn btn-primary"" value="Log In" >
      </form>
    </div>


  </body>
</html>
