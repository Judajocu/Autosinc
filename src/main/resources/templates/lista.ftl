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
            <h2>Listado de todos los registros hasta el momento</h2>
        </div>
        <div class="row">
            <legend></legend>

                            <#if lista??>
                            <center>
                                <table>
                                    <tr><th>ID</th>
                                        <th>Nombre</th>
                                        <th>Sector</th>
                                        <th>Ver</th>
                                        <th>Editar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                <#list lista as f>
                                <tr><td>${f.getId()?string["0"]}</td>
                                    <td>${f.getNombre()}</td>
                                    <td>${f.getSector()}</td>
                                    <td><a href="/lista/ver/${f.getId()?string["0"]}" class="btn btn-primary">Ver</a></td>
                                    <td><a href="/lista/edit/${f.getId()?string["0"]}" class="btn btn-primary">Editar</a></td>
                                    <td><a href="/lista/delete/${f.getId()?string["0"]}" class="btn btn-primary">Eliminar</a></td>
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