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

import static spark.Spark.*;

public class main {
    public static void main(String[] args) throws SQLException {

        //Iniciando el servicio
        BootStrapService.getInstancia().init();



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

        get("/prueba", (request, response) -> {

            Map<String, Object> mapa = new HashMap<>();
            return new ModelAndView(mapa, "prueba.ftl");
        }, motor);

    }


}
