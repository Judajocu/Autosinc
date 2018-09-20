<#include "blank.ftl">

<#macro page_head>
<title>Encuesta- Editar</title>
</#macro>

<#macro titulo>
<h2>Encuesta - Edicion</h2>
</#macro>

<#macro page_body>

<#if f??>

<section class="contact-section">
    <div class="container" >
        <a href="/lista" class="btn btn-primary">Volver</a>
        <div class="section-title text-center">
            <h2>Editar datos del registro #${f.getId()?string["0"]}</h2>
        </div>

        <div class="contact-form mt-50">
            <form method="post" action="/lista/edit/${f.getId()?string["0"]}">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" required="" placeholder="Nombre del usuario" name="nombre" value="${f.getNombre()}">
                        </div>

                        <div class="form-group">
                            <label>Sector</label>
                            <input type="text" class="form-control" required="" placeholder="Sector" name="sector" value="${f.getSector()}">
                        </div>

                        <div class="form-group">
                            <label>Nivel escolar</label>
                            <select name="nivel" class="form-control">
                                <option value="Básico" <#if f.getNivel_escolar()=="Básico">selected</#if>>Básico</option>
                                <option value="Medio" <#if f.getNivel_escolar()=="Medio">selected</#if>>Medio</option>
                                <option value="Grado Universitario" <#if f.getNivel_escolar()=="Grado Universitario">selected</#if>>Grado Universitario</option>
                                <option value="Postgrado" <#if f.getNivel_escolar()=="Postgrado">selected</#if>>Postgrado</option>
                                <option value="Doctorado" <#if f.getNivel_escolar()=="Doctorado">selected</#if>>Doctorado</option>
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
                            <input type="text" class="form-control" name="calle" <#if f.getExtra()??>value="${f.getExtra()}"</#if>>
                        </div>
                        <div class="form-group">
                            <label>Ciudad</label>
                            <input type="text" class="form-control" name="ciudad" <#if f.getCiudad()??>value="${f.getCiudad()}"</#if> >
                        </div>
                        <div class="form-group">
                            <label>Pais</label>
                            <input type="text" class="form-control" name="pais" <#if f.getPais()??>value="${f.getPais()}"</#if> >
                        </div>
                        <div class="form-group">
                            <label>Latitud</label>
                            <input type="text" class="form-control" name="latitud" value="${f.getLatitud()}" disabled>

                        </div>
                        <div class="form-group">
                            <label>Longitud</label>
                            <input type="text" class="form-control" name="longitud" value="${f.getLongitud()}" disabled>
                        </div>
                    </div> <!-- col-md-6 -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <center>
                                <div style="margin-top: 40px">
                                    <iframe
                                            width="425" height="350" frameborder="0" scrolling="no"
                                            marginheight="0" marginwidth="0"
                                            src="https://maps.google.com/?q=${f.getLatitud()},${f.getLongitud()}&output=embed">
                                    </iframe>
                                </div>
                            </center>
                        </div>
                    </div> <!-- col-md-6 -->
                </div>

                <br/>
                <br/>
                <button type="submit" class="btn btn-primary btn-lg pull-right">Guardar cambios</button>
            </form>
        </div> <!-- contact-form -->
    </div>
</section> <!-- contact-section -->
</#if>
</#macro>