<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistema Gestion Proyectos - Login </title>
    @include('layouts.partials.headers')


    <style>
    
    .flex-container-login{

        display:flex; 
        height: 100vh; 
        justify-content: center; 

    }

    .container-imagen{
        width:50%; 
        position: relative;
    }

    .layer-image{

        position: absolute; 
        top:0;  
        left: 0;  
        background: rgba(0,0,0,.55); 
        min-width: 100%;
        min-height: 100%; 
        z-index:9999;

    }

    .image-login{
        max-width: 100%; 
        height: 100%;  
    }

    .container-login{
        display: flex; 
        justify-content: center; 
        align-items: center;   
        width: 50%; 
        background: #5D0A31 ; 
    }

    .inputs-login{
        border-radius: 2em;  
        background:transparent; 
        color:white;
    }

    .btn-login{
        border-radius: 2em;  
        width: 100%; 
        background: white; 
        color:black;
    }

    .details-login{
        text-align: center; 
        font-size: 0.8em;
    }

    .form-login{
        width: 60%; 
        height:50%; 
        display: flex; 
        justify-content: space-between; 
        flex-direction: column;  
        align-items: center;  
        border-radius: 5px;  
        background: #5d0a28 ;  
        border:1px solid #BDBDBD;  
        padding: 3em;
    }

    </style>

</head>
<body>
    

<div class="flex-container-login">

<div class="container-imagen">
    <img src="{{ asset('Img/fondo_login.jpeg') }}"   class="image-login">
    
    <div class="layer-image"></div>
</div>

<div class="container-login">

    <form class="form form-login" id="frmLogin" >


        @csrf
        <div style="padding:2em;">
                <img src="{{ asset('Img/utec_logo.png') }}" style="max-width: 100%;" alt="">
        </div>
        
    
        <br>

        <div class="form-group"  style="width:100%;"  >
            <input type="text" name="usuario" id="usuario"  placeholder="Usuario" class="form-control inputs-login"    autocomplete="off"  />                    
        </div>

        <div class="form-group" style="width:100%;">
            <input type="password" name="contrasena" id="contrasena"  placeholder="Contraseña" class="form-control inputs-login" autocomplete="off">
        </div>
        
        
        <div style="width:100%;">
            <button class="btn btn-primary btn-outline btn-login" type="submit"  >Ingresar</button>                    
        </div>
            
        <br>

        <div class="details-login">
            <p style="color:#BDBDBD;">¿Aun no tienes una cuenta?<a href="/registro" style="color:#1DA1F2;" >  Registrate</a></p>
            <p> <a href="" style="color:#1DA1F2;"> ¿Has olvidado tu contraseña?</a>  </p>
        </div>

    </form>

</div>

</div>


<!--Estilos de uso comun--->
@include('layouts.partials.scripts')
<script src="{{ asset('js/custom/login.js')}}"  ></script>
</body>
</html>



