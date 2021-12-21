
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;


@WebServlet(name = "SvEliminarPaquete", urlPatterns = {"/SvEliminarPaquete"})
public class SvEliminarPaquete extends HttpServlet {
    
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
        int id = Integer.parseInt(request.getParameter("codigoPaquete"));
        control.eliminarPaquete(id);
        //Actualizo mi lista de servicios
        request.getSession().setAttribute("listapaquetes", control.traerPaquetes());
        response.sendRedirect("listadopaquetes.jsp");
       
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
