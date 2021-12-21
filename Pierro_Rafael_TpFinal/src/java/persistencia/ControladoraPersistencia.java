package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Cliente;
import logica.Empleado;
import logica.PaqueteTuristico;
import logica.ServicioTuristico;
import logica.Usuario;
import logica.Venta;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    
    ClienteJpaController clienteJpa = new ClienteJpaController();
    EmpleadoJpaController empleadoJpa = new EmpleadoJpaController();
    UsuarioJpaController usuarioJpa = new UsuarioJpaController();
    ServicioTuristicoJpaController servicioJpa = new ServicioTuristicoJpaController();
    PaqueteTuristicoJpaController paqueteJpa = new PaqueteTuristicoJpaController();
    VentaJpaController ventaJpa = new VentaJpaController();
    
    
    public void crearCliente(Cliente cliente){
        clienteJpa.create(cliente);
    }
    
    public void crearEmpleado(Empleado empleado, Usuario usuario){
        //primero el usuario para que se lo pueda vincular al empleado
        usuarioJpa.create(usuario);
        empleadoJpa.create(empleado);
    }
    
    public void crearServicio(ServicioTuristico servicio){
        
        servicioJpa.create(servicio);
    }
    
    public void crearPaquete(PaqueteTuristico paquete){
        paqueteJpa.create(paquete);
    }
    
    public void crearVenta(Venta venta){
        ventaJpa.create(venta);
    }   
    
    public void eliminarCliente(Cliente cliente){
        try {
            clienteJpa.destroy(cliente.getIdCliente());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarCliente(int idcliente){
        try {
            clienteJpa.destroy(idcliente);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarEmpleado(Empleado empleado){
        try {
            empleadoJpa.destroy(empleado.getIdEmpleado());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarEmpleado(int idEmpleado){
        try {
            empleadoJpa.destroy(idEmpleado);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarUsuario(Usuario usuario){
        try {
            usuarioJpa.destroy(usuario.getIdUsuario());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarUsuario(int idUsuario){
        try {
            usuarioJpa.destroy(idUsuario);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarServicio(ServicioTuristico servicio){
        
        try {
            servicioJpa.destroy(servicio.getCodigoServicio());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void eliminarServicio(int codigoServicio){
        try {
            servicioJpa.destroy(codigoServicio);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarPaquete(PaqueteTuristico paquete){
        try {
            paqueteJpa.destroy(paquete.getCodigoPaquete());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarPaquete(int codigoPaquete){
        try {
            paqueteJpa.destroy(codigoPaquete);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarVenta(Venta venta){
        try {
            ventaJpa.destroy(venta.getNumVenta());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarVenta(int numVenta){
        try {
            ventaJpa.destroy(numVenta);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void modificarCliente(Cliente cliente){
        try {
            clienteJpa.edit(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarEmpleado(Empleado empleado){
        try {
            empleadoJpa.edit(empleado);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarUsuario(Usuario usuario){
        try {
            usuarioJpa.edit(usuario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarServicio(ServicioTuristico servicio){
        try {
            servicioJpa.edit(servicio);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarPaquete(PaqueteTuristico paquete){
        try {
            paqueteJpa.edit(paquete);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarVenta(Venta venta){
        try {
            ventaJpa.edit(venta);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Cliente> traerClientes(){
        return clienteJpa.findClienteEntities();
    }
    
    public Cliente traerClienteEnParticular(int id){
        return clienteJpa.findCliente(id);
    }
    
    public List<Empleado> traerEmpleados(){
        return empleadoJpa.findEmpleadoEntities();
    }
    
    public Empleado traerEmpleadoEnParticular(int id){
        return empleadoJpa.findEmpleado(id);
    }
    
    public List<Usuario> traerUsuarios(){
        return usuarioJpa.findUsuarioEntities();
    }
    
    public Usuario traerUsuarioEnParticular(int id){
        return usuarioJpa.findUsuario(id);
    }
    public List<ServicioTuristico> traerServicios(){
        return servicioJpa.findServicioTuristicoEntities();
    }
    
    public ServicioTuristico traerServicioEnParticular(int id){
        return servicioJpa.findServicioTuristico(id);
    }
    
    public List<PaqueteTuristico> traerPaquetes(){
        return paqueteJpa.findPaqueteTuristicoEntities();
    }
    
    public PaqueteTuristico traerPaqueteEnParticular(int id){
        return paqueteJpa.findPaqueteTuristico(id);
    }
    
    public List<Venta> traerVentas(){
        return ventaJpa.findVentaEntities();
    }
    
    public Venta traerVentaEnParticular(int id){
        return ventaJpa.findVenta(id);
    }
    
    public Cliente buscarCliente(int idCliente){
        return clienteJpa.findCliente(idCliente);
    }
    
    public Cliente buscarCliente(Cliente cliente){
        return clienteJpa.findCliente(cliente.getIdCliente());
    }
    
    public Empleado buscarEmpleado(int id){
        return empleadoJpa.findEmpleado(id);
    }
    
    public Empleado buscarEmpleado(Empleado empleado){
        return empleadoJpa.findEmpleado(empleado.getIdEmpleado());
    }
    
    public Usuario buscarUsuario(int id){
       return usuarioJpa.findUsuario(id);
    }
    
    public Usuario buscarUsuario(Usuario usuario){
        return usuarioJpa.findUsuario(usuario.getIdUsuario());
    }
 
    public ServicioTuristico buscarServicio(int codigoServicio){
        return servicioJpa.findServicioTuristico(codigoServicio);
    }
    
    public ServicioTuristico buscarServicio(ServicioTuristico servicio){
        return servicioJpa.findServicioTuristico(servicio.getCodigoServicio());
    }
    
    public PaqueteTuristico buscarPaquete(int codigoPaquete){
        return paqueteJpa.findPaqueteTuristico(codigoPaquete);
    }
    
    public PaqueteTuristico buscarPaquete(PaqueteTuristico paquete){
        return paqueteJpa.findPaqueteTuristico(paquete.getCodigoPaquete());
    }
    
    public Venta buscarVentas(int numVenta){
        return ventaJpa.findVenta(numVenta);
    }
    
    public Venta buscarVentas(Venta venta){
        return ventaJpa.findVenta(venta.getNumVenta());
    }
}


