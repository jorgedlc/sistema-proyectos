<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link media="all" type="text/css" rel="stylesheet" href="{{URL::asset('css/estilo1.css')}}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Sistema proyectos @yield('titulo')</title>
  </head>
  <body id="body">


      <header id="encabezado">
        @yield('encabezado')
        <img class="rounded mx-auto d-block" src="{{URL::asset('Img/proyectos.jpg')}}" width="99%" height="100%">
      </header>



      <section id="contenido">
        @yield('contenido')
      </section>



      <nav id="lateral">
        @yield('lateral')
        <div style="text-align: center;"><a href="#" id="epricipal" >Inicio</a></div>
        <hr style="background-color:white">
        <a href="#" id="enlace">Solicitudes de proyectos</a>
        <hr style="background-color:white">



  <nav id="menu">
  <ul>
   <li style="color:white">Gestion</a>
   <ul>
  <br>  <li> <a href="#">Proyectos aprobados</a></li>
   <li><a href="#">Proyectos rechazados</a></li>
   <li><a href="#">Seguimientos</a></li> <br>
   </ul>
 </li>
  </ul>
  </nav>
        <br><br><br> <br><br><br> <br><br><br>
        <hr style="background-color:white">
        <a id="enlace" href="#">Reportes</a>
        <br><br>
      </nav>

      <footer id="footer">
        @yield('pie')
        <small>EPRO - Derechos Reservados </small>
      </footer>


  </body>
</html>
