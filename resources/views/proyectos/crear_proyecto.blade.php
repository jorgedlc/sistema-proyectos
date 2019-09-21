@extends('layouts.app')



@section('contenido')


          <div style="width:100%;   background: #fff; padding: 2em;">


            <br>
            <hr>
            <h3 class="text-center">Crear Nueva Solicitud</h3>
            <hr>
            <br>

            <p>Llena el siguinete formulario para hacer una Solicitud de proyecto</p>


            <!-- Nav tabs -->
          <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home">Datos Generales</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1">Presupuesto</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu2">Actvidades</a>
              </li>
            </ul>
            
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane container active" id="home">

              <br>
              <hr>
              <h6 class="text-center">Datos generales</h6>
              <hr>
              <br>


            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Nombre del proyecto</label>
                        <input type="text" name="" id="" class="form-control">
                      </div>
                </div>            
              </div>
  
  
  
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Fecha Inicio</label>
                    <input type="date" name="" id="" class="form-control">
                  </div>              
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Fecha de finalización</label>
                    <input type="date" name="" id="" class="form-control">
                  </div>
                </div>
              </div>
  
              <div class="row">
                <div class="col-md-12">
                  <label for="">Fuente de financiamiento</label>
                  <input type="text" name="" id="" class="form-control">
  
                </div>
              </div>
  
  
              <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Área de desarollo</label>
                      <select name="" id="" class="form-control select2" >
                          <option value="">Infraestructura</option>
                          <option value="">Recursos Humanos</option>
                          <option value="">Procesos</option>
                          <option value="">Nuevos ambientes de aprendizaje</option>
                      </select>
                    </div>
                  </div>          
                </div>
  
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Objetivo:</label>
                        <textarea name="" id="" cols="30" rows="2" class="form-control"></textarea>
                    </div>                  
                  </div>
                </div>
  
                <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                          <label for="">Descripción:</label>
                          <textarea name="" id="" cols="30" rows="2" class="form-control"></textarea>
                      </div>                    
                    </div>
                </div>
                
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="">Resultado Esperado</label>
                      <input type="text" name="" id="" class="form-control">
                    </div>
                  </div>
                </div>
  
                <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                          <label for="">Breve Justificación:</label>
                          <textarea name="" id="" cols="30" rows="2" class="form-control"></textarea>
                      </div>                    
                    </div>
                </div>
  
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="">Aliado Estrategico</label>
                      <input type="text" name="" id="" class="form-control">
                    </div>
                  </div>
                </div>


              </div>
              <div class="tab-pane container fade" id="menu1">
                
                  <br>
                  <hr>
                  <h6 class="text-center">Presupuesto</h6>
                  <hr>
                  <br>


                  <div class="container">

                    <button class="btn btn-sm btn-outline-primary" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"  >                      
                        Agregar Recurso
                    </button>

                    <br>
                    <br>


                    <table class="table">
                      <thead>
                        <tr>
                          <th>Nombre del recurso</th>
                          <th>Tipo de recurso</th>
                          <th>Costo Unitario</th>
                          <th>Cantidad</th>
                          <th>Costo Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Recurso</td>
                          <td>Tipo</td>
                          <td>$50</td>
                          <td>2</td>
                          <td>$100</td>
                        </tr>
                        <tr>
                            <td>Recurso</td>
                            <td>Tipo</td>
                            <td>$50</td>
                            <td>2</td>
                            <td>$100</td>
                          </tr>
                          <tr>
                              <td>Recurso</td>
                              <td>Tipo</td>
                              <td>$50</td>
                              <td>2</td>
                              <td>$100</td>
                            </tr>
                            <tr>
                                <td>Recurso</td>
                                <td>Tipo</td>
                                <td>$50</td>
                                <td>2</td>
                                <td>$100</td>
                              </tr>
                              <tr>
                                  <td>Recurso</td>
                                  <td>Tipo</td>
                                  <td>$50</td>
                                  <td>2</td>
                                  <td>$100</td>
                                </tr>
                                <tr>
                                    <td>Recurso</td>
                                    <td>Tipo</td>
                                    <td>$50</td>
                                    <td>2</td>
                                    <td>$100</td>
                                  </tr>
                                  <tr>
                                      <td>Recurso</td>
                                      <td>Tipo</td>
                                      <td>$50</td>
                                      <td>2</td>
                                      <td>$100</td>
                                    </tr>


                      </tbody>


                    </table>

                  </div>
    
              </div>
              <div class="tab-pane container fade" id="menu2">

                <div class="row">

                    <br>


                    <div class="col-md-12">
                        <hr>
                        <h5 class="text-center">Actividades</h5>
                        <hr>
                        <br>                    
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <button class="btn btn-outline-primary btn-sm" type="button"  data-toggle="modal" data-target="#myModal2"  >Agregar Actividad</button> 
                          </div>                        
                    </div>
                      
                    <br><br>

                  <table class="table">
                    <thead>
                      <tr>
                        <th>Nombre Actividad</th>
                        <th>Duracion</th>
                        <th>Responsable</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Actividad</td>
                        <td>Meses</td>
                        <td>Nombre responsable</td>
                      </tr>
                      <tr>
                          <td>Actividad</td>
                          <td>Meses</td>
                          <td>Nombre responsable</td>
                        </tr>
                        <tr>
                            <td>Actividad</td>
                            <td>Meses</td>
                            <td>Nombre responsable</td>
                          </tr>
                          <tr>
                              <td>Actividad</td>
                              <td>Meses</td>
                              <td>Nombre responsable</td>
                            </tr>
                            <tr>
                                <td>Actividad</td>
                                <td>Meses</td>
                                <td>Nombre responsable</td>
                              </tr>
                              <tr>
                                  <td>Actividad</td>
                                  <td>Meses</td>
                                  <td>Nombre responsable</td>
                                </tr>
                                <tr>
                                    <td>Actividad</td>
                                    <td>Meses</td>
                                    <td>Nombre responsable</td>
                                  </tr>

                    </tbody>

                  </table>

                </div>

              </div>
            </div>


          </div>
   

@endsection