package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import static logica.Controladora.deStringToDate2;
import logica.Empleado;
import logica.Usuario;


@WebServlet(name = "SvModificarEmpleado", urlPatterns = {"/SvModificarEmpleado"})
public class SvModificarEmpleado extends HttpServlet {
    
        Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo id desde el formulario y envio a la logica
        int id = Integer.parseInt(request.getParameter("idEmpleado"));
               
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        Date fechaNacimiento = deStringToDate2(request.getParameter("fechaNacimiento"));
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        String cargo = request.getParameter("cargo");
        Double sueldo = Double.parseDouble(request.getParameter("sueldo"));
        
        
        Empleado emple = control.buscarEmpleado(id);
        
        
        emple.setNombre(nombre);
        emple.setApellido(apellido);
        emple.setDireccion(direccion);
        emple.setDni(dni);
        emple.setFechaNacimiento(fechaNacimiento);
        emple.setNacionalidad(nacionalidad);
        emple.setCelular(celular);
        emple.setEmail(email);
        emple.setCargo(cargo);
        emple.setSueldo(sueldo);
       
        control.modificarEmpleado(emple);
        
        //actualizo mi lista de personas
        request.getSession().setAttribute("listaEmpleados", control.traerEmpleados());
        
        response.sendRedirect("listadoempleados.jsp");
      
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo la id y envio al formulario de la igu
        int id = Integer.parseInt(request.getParameter("idEmpleado"));
        
        
        Empleado emple = control.buscarEmpleado(id);
        
        
        HttpSession misession = request.getSession();
        misession.setAttribute("Empleado", emple);
       
        response.sendRedirect("modificarempleado.jsp");
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
