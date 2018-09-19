package Database;

import Clases.formulario;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FormServices extends DataBaseService<formulario>{

    private static FormServices instancia;

    private FormServices() {
        super(formulario.class);
    }

    public static FormServices getInstancia(){
        if(instancia==null){
            instancia = new FormServices();
        }
        return instancia;
    }

    /**
     *
     * @param id
     * @return
     */

    public List<formulario> findAllByid(int id){
        EntityManager em = getEntityManager();
        Query query = em.createNamedQuery("formulario.findAllByid");
        query.setParameter("id", "%"+id+"%");
        List<formulario> lista = query.getResultList();
        return lista;
    }
}
