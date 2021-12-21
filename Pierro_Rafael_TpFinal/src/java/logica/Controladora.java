package logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearCliente(String nombre, String apellido, String direccion,
            String dni, String nacionalidad, String celular, String email, Date fechaNacimiento){
        
        Cliente cliente = new Cliente();
        
        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDireccion(direccion);
        cliente.setDni(dni);
        cliente.setNacionalidad(nacionalidad);
        cliente.setCelular(celular);
        cliente.setEmail(email);
        cliente.setFechaNacimiento(fechaNacimiento);
        
        controlPersis.crearCliente(cliente);
    }
   
    public void crearEmpleado(String cargo, double sueldo, String nombre, String apellido, String direccion,
            String dni, String nacionalidad, String celular, String email, Date fechaNacimiento, String usuario, String password){
        
        Empleado emple = new Empleado();
        Usuario usu = new Usuario();
        //asigno valores a empleado
        emple.setNombre(nombre);
        emple.setApellido(apellido);
        emple.setDireccion(direccion);
        emple.setDni(dni);
        emple.setNacionalidad(nacionalidad);
        emple.setCelular(celular);
        emple.setEmail(email);
        emple.setFechaNacimiento(fechaNacimiento);
        emple.setCargo(cargo);
        emple.setSueldo(sueldo);
        
        usu.setUsuario(usuario);
        usu.setPassword(password);
        
        //asigno usuario a empleado
        emple.setUsuario(usu);
        controlPersis.crearEmpleado(emple,usu);
    }
    
        public void crearServicio(String nombre, String descripcion, String destino, Date fecha, Double costo){
            
            ServicioTuristico servi = new ServicioTuristico();
            
            servi.setNombre(nombre);
            servi.setDescripcion(descripcion);
            servi.setDestino(destino);
            servi.setFecha(fecha);
            servi.setCosto(costo);
            
            controlPersis.crearServicio(servi);
        }
        
        public void crearPaquete(List<ServicioTuristico> listaServicios, double costo){
            
            PaqueteTuristico paquete = new PaqueteTuristico();
            
            paquete.setListaServicios(listaServicios);
            paquete.setCosto(costo);
            
            controlPersis.crearPaquete(paquete);
        }
        
        public void crearVenta(String medioPago, Date fechaVenta){
            Venta venta = new Venta();
            
            venta.setFechaVenta(fechaVenta);
            venta.setMedioPago(medioPago);
            
            controlPersis.crearVenta(venta);
        }
        
        public void eliminarCliente(Cliente cliente){
            controlPersis.eliminarCliente(cliente);
        }
        
        public void eliminarCliente(int idCliente){
            controlPersis.eliminarCliente(idCliente);
        }
        
        public void eliminarEmpleado(Empleado empleado){
            controlPersis.eliminarEmpleado(empleado);
        }
        
        public void eliminarEmpleado(int idEmpleado){
            controlPersis.eliminarEmpleado(idEmpleado);
        }
        
        public void eliminarUsuario(Usuario usuario){
            controlPersis.eliminarUsuario(usuario);
        }
        
        public void eliminarUsuario(int idUsuario){
            controlPersis.eliminarUsuario(idUsuario);
        }
        
        public void eliminarServicio(ServicioTuristico servicio){
            controlPersis.eliminarServicio(servicio);
        }
        
        public void eliminarServicio(int codigoServicio){
            controlPersis.eliminarServicio(codigoServicio);
        }
        
        public void eliminarPaquete(PaqueteTuristico paquete){
            controlPersis.eliminarPaquete(paquete);
        }
        
        public void eliminarPaquete(int codigoPaquete){
            controlPersis.eliminarPaquete(codigoPaquete);
        }
        
        public void modificarCliente(Cliente cliente){
            controlPersis.modificarCliente(cliente);
        }
        
        public void modificarEmpleado(Empleado empleado){
            controlPersis.modificarEmpleado(empleado);
        }
        
        public void modificarUsuario(Usuario usuario){
            controlPersis.modificarUsuario(usuario);
        }
        
        public void modificarServicio(ServicioTuristico servicio){
            controlPersis.modificarServicio(servicio);
        }
        
        public void modificarPaquete(PaqueteTuristico paquete){
            controlPersis.modificarPaquete(paquete);
        }
        
        public void modificarVenta(Venta venta){
            controlPersis.modificarVenta(venta);
        }
        
        public List<ServicioTuristico> traerServicios(){
            return controlPersis.traerServicios();
        }
        
        public ServicioTuristico traerServicioEnParticular(int id){
            return controlPersis.traerServicioEnParticular(id);
        }
        
        public List<PaqueteTuristico> traerPaquetes(){
            return controlPersis.traerPaquetes();
        }
        
        public Empleado traerEmpleadoEnParticular(int id){
            return controlPersis.traerEmpleadoEnParticular(id);
        }
        
        public List<Empleado> traerEmpleados(){
        return controlPersis.traerEmpleados();
        }
        
        public Cliente traerClienteEnParticular(int id){
            return controlPersis.traerClienteEnParticular(id);
        }
        
        public List<Cliente> traerClientes(){
            return controlPersis.traerClientes();
        }
        
        public Usuario traerUsuarioEnParticular(int id){
            return controlPersis.traerUsuarioEnParticular(id);
        }
        
        public List<Usuario> traerUsuarios(){
            return controlPersis.traerUsuarios();
        }
        
        public Venta traerVentaEnParticular(int id){
            return controlPersis.traerVentaEnParticular(id);
        }
        
        public List<Venta> traerVentas(){
            return controlPersis.traerVentas();
        }
        
        public Cliente buscarCliente(int idCliente){
            return controlPersis.buscarCliente(idCliente);
        }
        
        public Cliente buscarCliente(Cliente cliente){
            return controlPersis.buscarCliente(cliente.getIdCliente());
        }
        
        public Empleado buscarEmpleado(int idEmpleado){
            return controlPersis.buscarEmpleado(idEmpleado);
        }
        
        public Empleado buscarEmpleado(Empleado empleado){
            return controlPersis.buscarEmpleado(empleado);
        }
        
        public Usuario buscarUsuario(int idUsuario){
            return controlPersis.buscarUsuario(idUsuario);
        }
        
        public Usuario buscarUsuario (Usuario usuario){
            return controlPersis.buscarUsuario(usuario);
        }
        
        public ServicioTuristico buscarServicio(int codigoServicio){
            return controlPersis.buscarServicio(codigoServicio);
        }
        
        public ServicioTuristico buscarServicio(ServicioTuristico servicio){
            return controlPersis.buscarServicio(servicio.getCodigoServicio());
        }
        
        public PaqueteTuristico buscarPaquete(int codigoPaquete){
            return controlPersis.buscarPaquete(codigoPaquete);
        }
        
        public PaqueteTuristico buscarPaquete(PaqueteTuristico paquete){
            return controlPersis.buscarPaquete(paquete.getCodigoPaquete());
        }
        
        public Venta buscarVenta(int numVenta){
            return controlPersis.buscarVentas(numVenta);
        }
        
        public Venta buscarVenta(Venta venta){
            return controlPersis.buscarVentas(venta.getNumVenta());
        }
        
        public boolean verificarUsuario(String usuario, String password){
        List<Usuario> listaUsuarios = controlPersis.traerUsuarios();
        if(listaUsuarios != null){
            for(Usuario usu : listaUsuarios){
                if(usu.getUsuario().equals(usuario) && usu.getPassword().equals(password))
                {
                    return true;
                }
            }
            
        }
        return false;
    }
        
        //Convierte un String a Date en formato dd/MM/YYY
        //@return retorna una fecha en formato date
        public static synchronized java.util.Date deStringToDate2(String fecha){
            SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd/MM/yyyy");//formato barra
            Date fechaEnviar = null;
            try {
                fechaEnviar = formatoDelTexto.parse(fecha);
                return fechaEnviar;
            } catch (ParseException ex){
                ex.printStackTrace();
                return null;
            }
        }
        
}


