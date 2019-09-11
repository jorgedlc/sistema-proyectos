<?php

namespace App\Http\Controllers;
use App;
use Illuminate\Http\Request;

class EstadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $estado=App\EstadoProyecto::all();
        return view('estado_proyecto/ver_estado',compact('estado'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('estado_proyecto/estado_crear');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nombre'=>'required',
            'estado'=>'required'
                        ]);
        $estado_crear = new App\EstadoProyecto();
        $estado_crear->nombre = $request->nombre;
        $estado_crear->estado = $request->estado;
        $estado_crear->save();
    
        return back()->with('mensaje', 'estado Agregado!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit_estado=App\EstadoProyecto::findOrFail($id);
        return view('/estado_proyecto/editar_estado',compact('edit_estado'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $estadoupdate=App\EstadoProyecto::find($id);
        
          $estadoupdate->nombre=$request->nombre;
          $estadoupdate->estado=$request->estado;
 
          $estadoupdate->save();
      return back()->with('mensaje','estado actualizada');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $delete_estado=App\EstadoProyecto::find($id);
        $delete_estado->delete();
    
      return back();
    }
}
