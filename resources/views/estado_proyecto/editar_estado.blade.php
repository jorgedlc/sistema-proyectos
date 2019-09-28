@extends('plantilla')

@section('seccion')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
 
                    <a href="/estado_proyecto" class="btn btn-primary btn-sm">Volver a lista de notas...</a>
                </div>
               <h4>id: {{ $edit_estado->id }}</h4> 
                <div class="card-body">     
                  @if ( session('mensaje') )
                    <div class="alert alert-success">{{ session('mensaje') }}</div>
                  @endif
                  <form method="POST" action="   {{route('estado_proyecto.update',$edit_estado->id)}}">
                  @method('PUT')
                    @csrf

                    <input
                      type="text"
                      name="nombre"
                      placeholder="Nombre"
                      class="form-control mb-2"
                      value="{{$edit_estado->nombre}}"
                    />
                    <input
                      type="text"
                      name="estado"
                      placeholder="estado"
                      class="form-control mb-2"
                      value="{{$edit_estado->estado}}"
                    />
                    <button class="btn btn-primary btn-block" type="submit">editar</button>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection