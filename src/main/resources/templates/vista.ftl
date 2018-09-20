<#include "blank.ftl">

<#macro page_head>
<title>Encuesta- Ver</title>
</#macro>

<#macro titulo>
<h2>Encuesta - Vista</h2>
</#macro>

<#macro page_body>

    <#if f??>

<section class="contact-section">
    <div class="container" >
        <a href="/lista" class="btn btn-primary">Volver</a>
        <div class="section-title text-center">
            <h2>Datos del registro #${f.getId()?string["0"]}</h2>
        </div>

        <div class="contact-form mt-50">
            <center>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <h2>Nombre</h2>
                            <h4>${f.getNombre()}</h4>
                        </div>

                        <div class="form-group">
                            <h2>Sector</h2>
                            <h4>${f.getSector()}</h4>
                        </div>

                        <div class="form-group">
                            <h2>Nivel escolar</h2>
                            <h4>${f.getNivel_escolar()}</h4>
                        </div>

                    </div> <!-- col-md-12 -->
                </div><!-- /.row-->
                <br/>
                <br/>
                <div class="section-title text-center">
                    <h2>Posición georeferencial del registro al momento de ser tomado</h2>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <#if f.getExtra()??>
                        <div class="form-group">
                            <h2>Calle</h2>
                            <h4>${f.getExtra()}</h4>
                        </div>
                        </#if>

                        <#if f.getCiudad()??>
                        <div class="form-group">
                            <h2>Ciudad</h2>
                            <h4>${f.getCiudad()}</h4>
                        </div>
                        </#if>

                        <#if f.getPais()??>
                        <div class="form-group">
                            <h2>Pais</h2>
                            <h4>${f.getPais()}</h4>
                        </div>
                        </#if>
                        <div class="form-group">
                            <h2>Latitud</h2>
                            <h4>${f.getLatitud()}</h4>

                        </div>
                        <div class="form-group">
                            <h2>Longitud</h2>
                            <h4>${f.getLongitud()}</h4>
                        </div>
                    </div> <!-- col-md-6 -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <center>
                                <h2>Localizacion</h2>
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
            <a href="/lista" class="btn btn-primary">Volver</a></center>
        </div> <!-- contact-form -->
    </div>
</section> <!-- contact-section -->
    </#if>
</#macro>