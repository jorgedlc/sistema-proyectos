@extends('plantilla')

@section('seccion')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                  
                    <a href="/estado_proyecto/create" class="btn btn-primary btn-sm">Nueva Nota</a>
                </div>

                <div class="card-body"> 
                     
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">estado</th>
                            <th scope="col">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($estado as $item)
                            <tr>
                                <th scope="row">{{ $item->id }}</th>
                                <td>{{ $item->nombre }}</td>
                                <td>{{ $item->estado }}</td>
                                <td> <a href=" {{route('estado_proyecto.edit',$item->id)}}" class="btn btn-info btn-sm">editar</td>
                                <td>  <form action="{{route('estado_proyecto.destroy',$item->id) }}" method="POST" class="d-inline">
                                    @method('DELETE')   
                                    @csrf
                                    <button class="btb btn-danger btn-Sm" TYPE="submit"> Eliminar</button>
                                     </form>
                                     </td>
                                  
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
         
                </div>
            </div>
        </div>
    </div>
</div>
@endsection