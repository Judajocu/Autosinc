<#include "blank.ftl">

<#macro page_head>
<title>Encuesta- Lista</title>
</#macro>

<#macro titulo>
<h2>Encuesta - Lista de registros</h2>
</#macro>

<#macro page_body>
<section class="contact-section">
    <div class="container" >
        <div class="section-title text-center">
            <h2>Detalles relacionada a los registros obtenidos</h2>
        </div>
        <div class="row">
            <legend></legend>

                            <center>
                            <#if lista??>
                            <h3>Total de registros</h3>
                            <h5>${lista?size}</h5>
                            <br/>

                                <h3>Total de Paises en los que se han tomado registro</h3>
                                <h5>${listap?size}</h5>
                                <table>
                                    <tr><th>Paises</th>
                                    </tr>
                                <#list listap as f>
                                <tr><td>${f}</td>
                                </tr>
                                </#list>
                                </table>
                                <br/>
                                <h3>Total de Ciudades en los que se han tomado registro</h3>
                                <h5>${listac?size}</h5>
                                <table>
                                    <tr><th>Ciudades</th>
                                    </tr>
                                <#list listac as c>
                                <tr><td>${c}</td>
                                </tr>
                                </#list>
                                </table>
                            </center>
                            <#else >
                            <center>
                                <h2> No hay informacion registrados en el Sistema</h2>
                            </center>
                            </#if>
            <legend></legend>
            <br/>
            <center><a href="/" class="btn btn-primary">Volver</a></center>
        </div>

        <div class="contact-form mt-50">
        </div> <!-- contact-form -->
    </div>
</section> <!-- contact-section -->
</#macro>