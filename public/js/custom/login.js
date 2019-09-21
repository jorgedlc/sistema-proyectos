$(document).ready(function(){



    $('#frmLogin').submit(function(event){
        event.preventDefault();

        let form =  $(this).serialize();

        $.ajax({
            url:'/ingresar',
            data:form,
            method:'POST',
            dataType:'json',        
        }).done(function(login){
            if(login.length > 0){

                let datos =  login[0];

                let nombre =  datos.nombre;
                let apellidos =  datos.apellidos;

                const Toast = Swal.mixin({
                    toast: true,
                    position: 'top-end',
                    showConfirmButton: false,
                    timer: 3000
                  })
                  
                  Toast.fire({
                    type: 'success',
                    title:  `Bienvenido ${nombre} ${apellidos}`
                  }).then(()=>{
                    window.location = "/proyectos";
                  })



            }else{
                Swal.fire({
                    type: 'error',
                    title: 'Oops...',
                    position: 'top-end',
                    text: 'Usuario o contraseña invalidos!'                    
                });
            }
        })


    });



});


