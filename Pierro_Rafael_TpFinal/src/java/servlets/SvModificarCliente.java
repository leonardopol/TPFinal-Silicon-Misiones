package servlets;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Cliente;
import logica.Controladora;
import static logica.Controladora.deStringToDate2;


@WebServlet(name = "SvModificarCliente", urlPatterns = {"/SvModificarCliente"})
public class SvModificarCliente extends HttpServlet {
    
    Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                
        //traigo id desde el formulario y envio a la logica
        int id = Integer.parseInt(request.getParameter("idCliente"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        Date fechaNacimiento = deStringToDate2(request.getParameter("fechaNacimiento"));
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        
        Cliente client = control.buscarCliente(id);
        client.setNombre(nombre);
        client.setApellido(apellido);
        client.setDireccion(direccion);
        client.setDni(dni);
        client.setFechaNacimiento(fechaNacimiento);
        client.setNacionalidad(nacionalidad);
        client.setCelular(celular);
        client.setEmail(email);
        
        control.modificarCliente(client);
        //actualizo mi lista de personas
        request.getSession().setAttribute("listaClientes", control.traerClientes());
        response.sendRedirect("listadoclientes.jsp");
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo la id y envio al formulario de la igu
        int id = Integer.parseInt(request.getParameter("idCliente"));
        Cliente clie = control.buscarCliente(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("Cliente", clie);
        response.sendRedirect("modificarcliente.jsp");
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
