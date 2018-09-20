package Main;

import Database.BootStrapService;
import com.google.gson.Gson;
import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.Session;
import spark.Spark;
import spark.template.freemarker.FreeMarkerEngine;

import javax.servlet.MultipartConfigElement;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import Clases.*;
import Database.*;

import static spark.Spark.*;

public class main {
    public static void main(String[] args) throws SQLException {

        //Iniciando el servicio
        BootStrapService.getInstancia().init();

        //prueba de datos
        /*formulario insertar = new formulario();
        insertar.setNombre("Graciela");
        insertar.setSector("Residencial Imperial");
        insertar.setNivel_escolar("universitario");
        insertar.setCiudad("Santiago");
        insertar.setPais("RD");
        insertar.setLatitud("19.437158399999998");
        insertar.setLongitud("-70.6748416");
        FormServices.getInstancia().crear(insertar);
        */

        //prueba encuestas
        List<formulario> pu=FormServices.getInstancia().findAll();
        for (formulario u: pu){
            System.out.println(" name:"+u.getNombre()+" ID:" +u.getId()+" Sector:"+u.getSector()+" Nivel_E:"+u.getNivel_escolar()+" ciudad:"+u.getCiudad()+" pais:"+u.getPais()+" latitud:"+u.getLatitud()+" longitud:"+u.getLongitud());

        }


        manejadorFremarker();
    }

    public static void manejadorFremarker()throws SQLException {

        File uploadDir = new File("upload");
        uploadDir.mkdir();

        staticFileLocation("/public");
        staticFiles.externalLocation("upload");

        Configuration configuration= new Configuration(Configuration.VERSION_2_3_23);
        configuration.setClassForTemplateLoading(
                main.class,"/templates/");
        FreeMarkerEngine motor= new FreeMarkerEngine(configuration);

        //urls
        //login
        get("/", (request, response) -> {

            Map<String, Object> mapa = new HashMap<>();
            return new ModelAndView(mapa, "base.ftl");
        }, motor);

        get("/poll", (request, response) -> {

            Map<String, Object> mapa = new HashMap<>();
            return new ModelAndView(mapa, "encuesta.ftl");
        }, motor);

        post("/poll", (request, response) -> {

            String name =request.queryParams("nombre") != null ? request.queryParams("nombre") : "unknown";
            String sector =request.queryParams("sector") != null ? request.queryParams("sector") : "unknown";
            String nivel =request.queryParams("nivel");
            String calle =request.queryParams("calle");
            String ciudad =request.queryParams("ciudad");
            String pais =request.queryParams("pais");
            String latitud =request.queryParams("latitud");
            String longitud =request.queryParams("longitud");

            System.out.println("Nombre:"+name);
            System.out.println("Sector:"+sector);
            System.out.println("nivel:"+nivel);
            System.out.println("calle:"+calle);
            System.out.println("ciudad:"+ciudad);
            System.out.println("pais:"+pais);
            System.out.println("latitud:"+latitud);
            System.out.println("longitud:"+longitud);


            formulario insertar = new formulario();
            insertar.setNombre(name);
            insertar.setSector(sector);
            insertar.setNivel_escolar(nivel);
            if(calle != null && !calle.isEmpty()) {
                insertar.setExtra(calle);
            }
            if(ciudad != null && !ciudad.isEmpty()) {
                insertar.setCiudad(ciudad);
            }
            if(pais != null && !pais.isEmpty()) {
                insertar.setPais(pais);
            }
            if(latitud != null && !latitud.isEmpty()) {
                insertar.setLatitud(latitud);
            }
            if(longitud!= null && !longitud.isEmpty()) {
                insertar.setLongitud(longitud);
            }
            FormServices.getInstancia().crear(insertar);

            response.redirect("/");
            return "";
        });

        get("/lista", (request, response) -> {

            List<formulario> lista= FormServices.getInstancia().findAll();

            Map<String, Object> mapa = new HashMap<>();
            mapa.put("lista", lista);
            return new ModelAndView(mapa, "lista.ftl");
        }, motor);

        get("/lista/delete/:id", (request, response) -> {

            long id = Long.parseLong(request.params("id"));

            formulario cc= FormServices.getInstancia().find(id);
            FormServices.getInstancia().eliminar(cc.getId());

            //response.redirect("/inicio/post/"+cc.getPost().getId());
            response.redirect("/lista");
            return "";
        });

        get("/prueba2", (request, response) -> {

            Map<String, Object> mapa = new HashMap<>();
            return new ModelAndView(mapa, "prueba2.ftl");
        }, motor);

    }


}
