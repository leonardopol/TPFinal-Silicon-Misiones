
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.PaqueteTuristico;


@WebServlet(name = "SvModificarPaquete", urlPatterns = {"/SvModificarPaquete"})
public class SvModificarPaquete extends HttpServlet {
    
     Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo id desde el formulario y envio a la logica
        int id = Integer.parseInt(request.getParameter("codigoPaquete"));
        
        int codigoPaquete = Integer.parseInt(request.getParameter("codigoPaquete"));
        Double costo = Double.parseDouble(request.getParameter("costo"));
        
        PaqueteTuristico paque = control.buscarPaquete(id);
        paque.setCodigoPaquete(codigoPaquete);
        paque.setCosto(costo);
        
        control.modificarPaquete(paque);
        //actualizo mi lista de personas
        request.getSession().setAttribute("listaPaquetes", control.traerPaquetes());
        response.sendRedirect("listadopaquetes.jsp");
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo la id y envio al formulario de la igu
        int id = Integer.parseInt(request.getParameter("codigoPaquete"));
        PaqueteTuristico paque = control.buscarPaquete(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("PaqueteTuristico", paque);
        response.sendRedirect("modificarpaquete.jsp");
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
