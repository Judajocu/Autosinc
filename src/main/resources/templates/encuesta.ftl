<#include "blank.ftl">

<#macro page_head>
<title>Encuesta- Ingreso</title>
</#macro>

<#macro titulo>
<h2>Encuesta - Ingresar entrada</h2>
</#macro>

<#macro page_body>
<section class="contact-section">
    <div class="container" >
        <div class="section-title text-center">
            <h2>Ingrese la información de registro</h2>
        </div>

        <div class="contact-form mt-50">
            <form method="post" action="/poll">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" required="" placeholder="Nombre del usuario" name="nombre">
                        </div>

                        <div class="form-group">
                            <label>Sector</label>
                            <input type="text" class="form-control" required="" placeholder="Sector" name="sector">
                        </div>

                        <div class="form-group">
                            <label>Nivel escolar</label>
                            <select name="nivel" class="form-control">
                                <option value="Básico">Básico</option>
                                <option value="Medio">Medio</option>
                                <option value="Grado Universitario">Grado Universitario</option>
                                <option value="Postgrado">Postgrado</option>
                                <option value="Doctorado">Doctorado</option>
                            </select>
                        </div>

                    </div> <!-- col-md-12 -->
                </div><!-- /.row-->
                <br/>
                <br/>
                <div class="section-title text-center">
                    <h2>Posición georeferencial del registro</h2>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Calle</label>
                            <input id="dato1" type="text" class="form-control" name="calle">
                        </div>
                        <div class="form-group">
                            <label>Ciudad</label>
                            <input id="dato2" type="text" class="form-control" name="ciudad">
                        </div>
                        <div class="form-group">
                            <label>Pais</label>
                            <input id="dato3" type="text" class="form-control" name="pais">
                        </div>
                        <div class="form-group">
                            <label>Latitud</label>
                            <input id="dato4" type="text" class="form-control" name="latitud">

                        </div>
                        <div class="form-group">
                            <label>Longitud</label>
                            <input id="dato5" type="text" class="form-control" name="longitud">
                        </div>
                    </div> <!-- col-md-6 -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <center>
                            <button href="#" id="get_loc" class="btn btn-primary btn-lg">Mostrar localizacion en el mapa</button>
                            <div id="mapa" style="margin-top: 40px">
                                <iframe id="google_map"
                                        width="425" height="350" frameborder="0" scrolling="no"
                                        marginheight="0" marginwidth="0"
                                        src="https://www.google.com/maps/embed?">
                                </iframe>
                            </div>
                            </center>
                        </div>
                    </div> <!-- col-md-6 -->
                </div>

                <br/>
                <br/>
                <button type="submit" class="btn btn-primary btn-lg pull-right">Agregar entrada</button>
            </form>
        </div> <!-- contact-form -->
    </div>
</section> <!-- contact-section -->
</#macro>