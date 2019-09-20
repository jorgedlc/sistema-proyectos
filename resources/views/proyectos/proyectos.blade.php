@extends('layouts.app')


@section('contenido')

<br>
              <hr>
              <h3 class="text-center">Proyectos</h3>
              <hr>
              <br>
              <br>

              <div class="row">
                <div class="col-md-6">


                </div>                

                <br>
                <br>                


                <div class="col-md-6">
                  <!-- Topbar Search -->                
                    <div class="input-group">
                      <input type="text" class="form-control bg-light border-0 small" placeholder="Buscar por nombre" aria-label="Search" aria-describedby="basic-addon2">
                      <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                          <i class="fas fa-search fa-sm"></i>
                        </button>
                      </div>
                    </div>                

                </div>
                

              </div>


              <div class="row">

                <div class="col-md-3">
                  <label for="">Area</label>
                  <select name="" id="" class="form-control select2">
                    <option value="">--Seleccione--</option>
                    <option value="">Informatica</option>                    
                    <option value="">Mantenimiento</option>
                    <option value="">Recursos Humanos</option>
                    <option value="">Infraestructura</option>
                    <option value="">Procesos</option>
                    <option value="">Nuevos Ambientes de Aprendizaje</option>
                  </select>
                </div>
                
                <div class="col-md-3">
                  <label for="">Estado</label>
                  <select name="" id="" class="form-control select2">
                    <option value="">--Seleccione--</option>
                    <option value="">Creado	</option>
                    <option value="">Aprobado</option> 
                    <option value="">Cancelado</option> 
                    <option value="">En ejecucion</option>
                    <option value="">Finalizado</option>
                  </select>
                </div>

                <div class="col-md-3">
                  <label for="">Fecha Creacion</label>
                  <input type="date" name="" id="" class="form-control">                
                </div>

                <div class="col-md-3">
                  <label for="">&nbsp;</label>
                  <input type="date" name="" id="" class="form-control">
                </div>


              </div>

              <br>

              <div class="row">

                <div class="col-md-6">
                    <div class="card border-left-primary">
                        <div class="card-body">
                          <h5 class="card-title text-primary" style="background:#f2f2f2; padding:0.8em;">  Implementacion de ERP/CRM</h5>
                          <p class="card-text">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas labore recusandae ..                            
                          </p>
                          <p>
                            <span><b>Fecha</b> Septiembre 10 , 2019</span>
                          </p>
                          <p>
                            <span> <b>Área:</b> Infraestructura </span>
                          </p>
                          <p>
                              <span><b>Creado por:</b> Jorge Alberto De La Cruz</span>
                          </p>
                          <p>
                              <span><b>Estado:</b></span>
                              <span class="text-success">Aprobado</span>
                          </p>
                          <a href="detalle.html" class="btn btn-secondary btn-sm btn-icon-split"  style="background:#5d0a28;">
                              <span class="icon text-white-50">
                                <i class="fa fa-info-circle"></i>
                              </span>
                            <span class="text">Ver detalles</span>
                          </a>
                        </div>
                      </div>
                </div>

                <div class="col-md-6">
                    <div class="card border-left-primary ">
                        <div class="card-body"    >
                          <h5 class="card-title text-primary text-center" style="background:#f2f2f2; padding:0.8em;">Desarrollo de nuevo portal de gestion académico / administrativo de docentes , estudianes y personal administrativo</h5>
                          <p class="card-text">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas labore recusandae ..                            
                          </p>
                          <p>
                            <span><b>Fecha</b> Septiembre 10 , 2019</span>
                          </p>
                          <p>
                            <span> <b>Área:</b> Procesos </span>
                          </p>
                          <p>
                              <span><b>Creado por:</b> Juan Carlos Hernández Perez</span>
                          </p>
                          <p>
                              <span><b>Estado:</b></span>
                              <span class="text-success">Aprobado</span>
                          </p>
                          <a href="detalle.html" class="btn btn-secondary btn-sm btn-icon-split"  style="background:#5d0a28;">
                              <span class="icon text-white-50">
                                <i class="fa fa-info-circle"></i>
                              </span>
                            <span class="text">Ver detalles</span>
                          </a>
                        </div>
                      </div>
                </div>
                

              </div>

              <br>

              
              <div class="row">

                  <div class="col-md-6">
                      <div class="card  border-left-warning " >
                          <div class="card-body">
                            <h5 class="card-title text-primary"  style="background:#f2f2f2; padding:0.8em;">Infraestrutura de soporye para ERP/CRM y portal (servidores y licencimeinto)</h5>
                            <p class="card-text">
                              Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas labore recusandae ..                            
                            </p>

                            <div class="datos"> 
                                  <p>
                                    <span><b>Fecha</b> Septiembre 10 , 2019</span>
                                  </p>
                                  <p>
                                      <span> <b>Área:</b> Procesos </span>
                                  </p>
                                  <p>
                                      <span><b>Creado por:</b> Duoglaz Ricardo Guzman Diaz</span>
                                  </p>
                                  <p>
                                      <span><b>Estado:</b></span>
                                      <span class="text-warning">Revisado</span>
                                  </p>
                                  <a href="detalle.html" class="btn btn-secondary btn-sm btn-icon-split"  style="background:#5d0a28;">
                                      <span class="icon text-white-50">
                                        <i class="fa fa-info-circle"></i>
                                      </span>
                                    <span class="text">Ver detalles</span>
                                  </a>

                            </div>

                            
                          </div>
                        </div>
                  </div>
  
                  <div class="col-md-6">
                         
                      
                          <div class="card border-left-warning shadow py-2">
                            <div class="card-body">
                              <div class="row no-gutters align-items-center">
                                  <h5 class="card-title text-primary" style="background:#f2f2f2; padding:0.8em;">Infraestrutura de soporye para ERP/CRM y portal (servidores y licencimeinto)</h5>
                                  <p class="card-text">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas labore recusandae ..                            
                                  </p>
      
                                  <div class="datos"> 
                                        <p>
                                          <span><b>Fecha</b> Septiembre 10 , 2019</span>
                                        </p>
                                        <p>
                                            <span> <b>Área:</b> Procesos </span>
                                        </p>
                                        <p>
                                            <span><b>Creado por:</b> Douglaz Ricardo Guzman Diaz</span>
                                        </p>
                                        <p>
                                            <span><b>Estado:</b></span>
                                            <span class="text-warning">Revisado</span>
                                        </p>
                                        <a href="detalle.html" class="btn btn-secondary btn-sm btn-icon-split"  style="background:#5d0a28;">
                                            <span class="icon text-white-50">
                                              <i class="fa fa-info-circle"></i>
                                            </span>
                                          <span class="text">Ver detalles</span>
                                        </a>
      
                                  </div>
      
                              </div>
                            </div>
                          </div>
                      
                  </div>
                  
  
                </div>
       

                <br><br>

                <div class="text-center">
                    <nav aria-label="...">
                        <ul class="pagination">
                          <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1">Anterior</a>
                          </li>
                          <li class="page-item "><a class="page-link" href="solicitudes.html">1</a></li>
                          <li class="page-item active">
                            <a class="page-link" href="solicitudes2.html">2 <span class="sr-only">(current)</span></a>
                          </li>
                          <li class="page-item"><a class="page-link" href="#">3</a></li>
                          <li class="page-item">
                            <a class="page-link" href="#">Siguiente</a>
                          </li>
                        </ul>
                    </nav>

                </div>
                
@endsection