<!DOCTYPE html>
<html lang="en">
<head>
    @include('layouts.partials.headers')
</head>
<body id="page-top">


    <div id="wrapper">

    @include('layouts.partials.sidebar')


        <div id="content-wrapper" class="d-flex flex-column" >        
            <!-- Content Wrapper -->
            <div id="content" >

                @include('layouts.partials.topbar')

                <div class="container-fluid">        
                    <div style="width:100%;   background: #fff; padding: 2em;">
                        @yield('contenido')
                    </div>
                </div>
                
            </div>

        </div>

        
    </div>

    
   <!-- Scroll to Top Button-->
   <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
   </a>


    @include('layouts.partials.scripts')
</body>
</html>