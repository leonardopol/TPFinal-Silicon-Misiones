package logica;

import java.util.Date;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@MappedSuperclass
public abstract class Persona {
    
    protected String nombre;
    protected String apellido;
    protected String direccion;
    protected String dni;
    protected String nacionalidad;
    protected String celular;
    protected String email;
    @Temporal(TemporalType.DATE)
    protected Date fechaNacimiento;

    public Persona() {
    }

    public Persona(String nombre, String apellido, String direccion, String dni, String nacionalidad, String celular, String email, Date fechaNacimiento) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.dni = dni;
        this.nacionalidad = nacionalidad;
        this.celular = celular;
        this.email = email;
        this.fechaNacimiento = fechaNacimiento;
    }

    
}

