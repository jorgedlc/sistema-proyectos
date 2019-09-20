@extends('layouts.app')





@section('contenido')



<br>
                <hr>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="solicitudes2.html">Proyectos</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Renovacion tecnologica de los equipos  de cominicacion de datos</li>
                  </ol>
              </nav>
                
                <hr>
                <br>
                


                <div class="row">
                  <div class="col-md-12">
                    <hr>
                    <h3>Renovacion tecnologica de los equipos  de cominicacion de datos</h3>
                    <hr>
                  </div>
                </div>
  
                <br>
                <br>

                <div class="row">
  
  
                  <div class="col-md-6">
  
  
                    <div class="row">
  
  
                      <div class="col-md-12">
  
                        <div class="form-group">
                          <label for=""><b>Fecha Inicio</b></label>
                          <p>Septiembre  12 , 2019</p>
                        </div>
  
                        <div class="form-group">
                          <label for=""><b>Objetivo</b></label>
                          <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur harum quia, dolor recusandae atque suscipit corrupti incidunt animi commodi dicta, cupiditate nemo perferendis maxime dolorem, modi itaque ullam debitis nostrum.</p>
                        </div>
  
  
                        <div class="form-group">
                          <label for=""> <b>Area de desarrollo</b>  </label>
                          <p>Recursos Humanos</p>
                        </div>
                      </div>
  
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for=""><b>Fuente de financiamiento</b>  </label>
                          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quidem vero laboriosam asperiores sapiente est atque. Maxime deserunt blanditiis </p>
                        </div>
  
  
                      </div>
  
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for=""><b>Descripcion</b> </label>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam, doloribus molestiae facilis repudiandae dolorem dolores facere possimus commodi sapiente distinctio dignissimos aspernatur sed ab quasi impedit ratione aliquid magnam natus.</p>
                          </div>
                        </div>
                        
                        <div class="col-md-12">
                            <div class="form-group">
                              <label for=""><b>Resultado esperado:</b></label>
                              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque dolore dolores eligendi vero. Aliquid possimus delectus soluta? Debitis incidunt, id iure numquam accusantium ex excepturi exercitationem cumque eum sit aliquid?</p>
                            </div>
                        </div>
  
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for=""><b>Justificacion</b></label>
                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatibus voluptates placeat magnam eveniet maiores similique tempora, consequuntur quibusdam, ratione at labore iusto omnis accusamus quia veniam, nisi quisquam magni nemo.</p>
                          </div>
                        </div>
  
                        <div class="col-md-12">
                            <div class="form-group">
                              <label for="">Aliado estrategico</label>
                              <p>UTEC</p>
                            </div>
                        </div>
  
                    </div>  
  
                    <div class="descripcion_proyecto"  style="border:1px solid black;" >
                      
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="detalles_proyecto">
  
                      <div class="row">
  
                          <div class="col-md-12">
  
                              <div class="row">
                                  <div class="col-md-12">
                                      <hr>
                                      <h5>Detalles de propuesta</h5>          
                                      <hr>
                                  </div>
                                  <div class="col-md-12"   >                              
                                      <ul  style=" list-style: none; display: flex; flex-direction: column; justify-content: space-between; height: 100px; margin:0; "  >
                                          <li><a href="presupuesto.html" style="text-decoration: none; background: #f2f2f2; padding: 5px;"  >Presupuesto  </a></li>
                                          <li><a href="cronograma.html"  style="text-decoration: none; background: #f2f2f2; padding: 5px;"    >Cronograma  de actividades</a></li>
                                          <li><a href="" style="text-decoration: none; background: #f2f2f2; padding: 5px;"    >Documentos</a></li>
                                          <li><a href="" style="text-decoration: none; background: #f2f2f2; padding: 5px;" data-toggle="modal" data-target="#myModal2"  >Estado</a></li>
                                      </ul>
                                  </div>
                              </div>
    
                          </div>
                          
                          <hr>
  
                          <div class="col-md-12">
  
                            <div class="row">
                              <div class="col-md-12">
                                <br>
                                  <hr>
                                  <h5>Estado Actual de la Solicitud:</h5>
                                  <hr>
                              </div>
                              <div class="col-md-12">
                                                          
                              <p class="text-success">Creado</p>
  
                              </div>                            
                            </div>
  
                            <br>
                            <hr>                            
                            <h5>Resumen</h5>
                            <hr>
                            <div class="col-md-12">
                               <table class="table" >
                                 <thead style="background: #5d0a28; color:white;">
                                    <tr>
                                        <th># Actividades</th>
                                        <th>Tiempo</th>
                                        <th>Monto presupuestado</th>
                                      </tr> 
                                 </thead>
                                 <tbody>
                                    <tr>
                                      <td>54</td>
                                      <td>4 meses</td>
                                      <td>$3,750</td>
  
  
                                    </tr>
  
  
                                 </tbody>
                                  
                               </table>
  
                            </div>
  
  
  
  
                          </div>
                          
                      </div>                    
                    </div>
                  
                  </div>                
  
                </div>
  


@endsection