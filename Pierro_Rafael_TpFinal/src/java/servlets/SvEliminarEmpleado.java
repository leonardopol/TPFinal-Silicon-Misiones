package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;


@WebServlet(name = "SvEliminarEmpleado", urlPatterns = {"/SvEliminarEmpleado"})
public class SvEliminarEmpleado extends HttpServlet {
    
    Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Traigo la id
        int id = Integer.parseInt(request.getParameter("idEmpleado"));
        control.eliminarEmpleado(id);
        //Actualizo mi lista de servicios
        request.getSession().setAttribute("listaEmpleados", control.traerEmpleados());
        
        //traigo id usuario
        int idu = Integer.parseInt(request.getParameter("idUsuario"));
        control.eliminarUsuario(idu);
        //actualizo lista usuarios
        request.getSession().setAttribute("listaUsuarios", control.traerUsuarios());
        response.sendRedirect("listadoempleados.jsp");

        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
