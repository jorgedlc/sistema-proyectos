<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistema Gestion Proyectos - Login </title>
     @include('layouts.partials.headers')
</head>
<body>
    



<div class="" style="display:flex; height: 100vh;  justify-content: center;    ">

<div style="width:50%; position: relative;">
    <img src="https://images.pexels.com/photos/7112/woman-typing-writing-windows.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" style="max-width: 100%; height: 100%;  "  >

    <div style="position: absolute;   top:0;  left: 0;  background: rgba(0,0,0,.65);  min-width: 100%; min-height: 100%; z-index:9999;"   ></div>
</div>
<div style="border:1px solid #BDBDBD; display: flex; justify-content: center; align-items: center;   width: 50%;  ">

    <form class="form"   id="frmRegistrarUsuario"   style="width: 75%; height: 95%;  display: flex; justify-content: space-between; flex-direction: column;  align-items: center;  border-radius: 5px;  background: #fff; border:1px solid #BDBDBD;  padding: 3em;">

        @csrf

        <h3 style="font-weight: 350;">Registrarse</h3>

        <br>

        <div class="form-group" style="width: 100%;">
            
            <input type="text" name="nombre" id="nombre" class="form-control" style="border-radius: 2em;"   placeholder="Nombres"  autocomplete="off"   required >
        </div>

        <div class="form-group" style="width: 100%;">
            
            <input type="text" name="apellidos" id="" class="form-control" style="border-radius: 2em;"   placeholder="Apellidos"   autocomplete="off" required >
        </div>

        
        <div class="form-group" style="width: 100%;">
                
                <input type="email" name="correo" id="correo" class="form-control" style="border-radius: 2em;"   placeholder="Correo"  autocomplete="off" required >
        </div>

        <div class="form-group" style="width: 100%;">                        
                <input type="text" name="area" id="area" class="form-control" style="border-radius: 2em;"  placeholder="Area"  autocomplete="off" required >
        </div>

        
        <div class="form-group" style="width: 100%;">                    
                <input type="text" name="usuario" id="usuario" class="form-control" style="border-radius: 2em;"  placeholder="Usuario"  autocomplete="off" required  >
        </div>

        
        <div class="form-group" style="width: 100%;">                        
                <input type="password" name="contrasena" id="contrasena" class="form-control" style="border-radius: 2em;"  placeholder="Contraseña" style="font-weight:bold;  "  required>  
        </div>

        
        <div class="form-group" style="width: 100%;">
                
                <input type="password" name="confirmacion" id="confirmacion" class="form-control" style="border-radius: 2em;"  placeholder="Confirmacion de contraseña"  required >
        </div>


        <div class="form-group" style="width: 100%;">
            <button  type="submit"  class="btn btn-primary btn-outline" style="border-radius: 2em;  width: 100%; "  >Registrarme</button>
        </div>



    </form>

</div>

</div>

@include('layouts.partials.scripts')
<script src="{{ asset('js/custom/registro.js')}}"  ></script>


</body>
</html>



