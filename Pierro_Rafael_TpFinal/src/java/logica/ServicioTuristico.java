package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class ServicioTuristico implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int codigoServicio;
    @Basic
    private String nombre;
    private String descripcion;
    private String destino;
    private Double costo;
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @ManyToMany
    private List<PaqueteTuristico> listaPaquetes;
    @OneToMany
    private List<Venta> listaVentas;

    public ServicioTuristico() {
    }

    public ServicioTuristico(int codigoServicio, String nombre, String descripcion, String destino, Double costo, Date fecha, List<PaqueteTuristico> listaPaquetes) {
        this.codigoServicio = codigoServicio;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.destino = destino;
        this.costo = costo;
        this.fecha = fecha;
        this.listaPaquetes = listaPaquetes;
    }

    public int getCodigoServicio() {
        return codigoServicio;
    }

    public void setCodigoServicio(int codigoServicio) {
        this.codigoServicio = codigoServicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public Double getCosto() {
        return costo;
    }

    public void setCosto(Double costo) {
        this.costo = costo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public List<PaqueteTuristico> getListaPaquetes() {
        return listaPaquetes;
    }

    public void setListaPaquetes(List<PaqueteTuristico> listaPaquetes) {
        this.listaPaquetes = listaPaquetes;
    }
    
    
}
