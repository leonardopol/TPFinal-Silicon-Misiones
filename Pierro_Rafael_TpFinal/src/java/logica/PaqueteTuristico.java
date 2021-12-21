package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;


@Entity
public class PaqueteTuristico implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int codigoPaquete;
    @Basic
    private double costo;
    @ManyToMany
    private List<ServicioTuristico> listaServicios;
    @OneToMany
    private List<Venta> listaVentas;

    public PaqueteTuristico() {
    }

    public PaqueteTuristico(int codigoPaquete, double costo, List<ServicioTuristico> listaServicios) {
        this.codigoPaquete = codigoPaquete;
        this.costo = costo;
        this.listaServicios = listaServicios;
    }

    public int getCodigoPaquete() {
        return codigoPaquete;
    }

    public void setCodigoPaquete(int codigoPaquete) {
        this.codigoPaquete = codigoPaquete;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public List<ServicioTuristico> getListaServicios() {
        return listaServicios;
    }

    public void setListaServicios(List<ServicioTuristico> listaServicios) {
        this.listaServicios = listaServicios;
    }
    
    
}
