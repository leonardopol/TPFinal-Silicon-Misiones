package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Empleado;
import logica.Usuario;


@WebServlet(name = "SvListarEmpleados", urlPatterns = {"/SvListarEmpleados"})
public class SvListarEmpleados extends HttpServlet {
    
    Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Empleado> listaEmpleados = control.traerEmpleados();
        List<Usuario> listaUsuarios = control.traerUsuarios();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaEmpleados", listaEmpleados);
        misession.setAttribute("listaUsuarios", listaUsuarios);
        
        response.sendRedirect("listadoempleados.jsp");
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
