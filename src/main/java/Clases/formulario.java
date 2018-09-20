package Clases;

import java.util.ArrayList;
import java.util.Date;
import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.Set;

@Entity
@NamedQueries({@NamedQuery(name = "formulario.findAllByid", query = "select p from formulario  p where p.id like :id")})
public class formulario implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String nombre;
    private String sector;
    private String nivel_escolar;
    private String ciudad;
    private String pais;
    private String extra;
    private String latitud;
    private String longitud;

    public formulario(String nombre, String sector, String nivel_escolar, String ciudad, String pais, String extra, String latitud, String longitud) {
        this.nombre = nombre;
        this.sector = sector;
        this.nivel_escolar = nivel_escolar;
        this.ciudad = ciudad;
        this.pais = pais;
        this.extra = extra;
        this.latitud = latitud;
        this.longitud = longitud;
    }

    public formulario() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String getNivel_escolar() {
        return nivel_escolar;
    }

    public void setNivel_escolar(String nivel_escolar) {
        this.nivel_escolar = nivel_escolar;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getExtra() {
        return extra;
    }

    public void setExtra(String extra) {
        this.extra = extra;
    }

    public String getLatitud() {
        return latitud;
    }

    public void setLatitud(String latitud) {
        this.latitud = latitud;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }
}
