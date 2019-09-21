$(document).ready(function(){



    $('#frmRegistrarUsuario').submit(function(event){

        event.preventDefault();

        let contrasena =  $('#contrasena').val();
        let confirmacion =   $('#confirmacion').val()




        if(contrasena==confirmacion){

            
            let form =  $(this).serialize();

            $.ajax({
                url:'/registrar',
                method:'POST',
                data:form,
                dataType:'text'
            }).done(function(data){
                if(parseInt(data)>0){       
                    
                const Toast = Swal.mixin({
                    toast: true,
                    position: 'top-end',
                    showConfirmButton: false,
                    timer: 3000
                  })
                  
                  Toast.fire({
                    type: 'success',
                    title:  `Registro realizado con exito`
                  }).then(()=>{
                    window.location = "/login";
                  })                
                }else{
                    //Controlar flujo de fallo
                }
            });

        }else{
            
            Swal.fire({
                type: 'error',
                title: 'Oops...',
                position: 'top-end',
                text: 'Las contraseñas ingresadas son diferentes, favor intente de nuevo!'                                            
            });

            $('#contrasena').val("");
            $('#confirmacion').val("");


        }




    })



});