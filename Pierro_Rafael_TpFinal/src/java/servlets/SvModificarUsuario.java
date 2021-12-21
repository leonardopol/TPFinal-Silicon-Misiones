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
import logica.Usuario;


@WebServlet(name = "SvModificarUsuario", urlPatterns = {"/SvModificarUsuario"})
public class SvModificarUsuario extends HttpServlet {
    
        Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                
        //traigo id desde el formulario y envio a la logica
        int id = Integer.parseInt(request.getParameter("idUsuario"));
               
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        Usuario usu = control.buscarUsuario(id);
       
        usu.setUsuario(usuario);
        usu.setPassword(password);
 
        control.modificarUsuario(usu);
        
        //actualizo mi lista de personas
        request.getSession().setAttribute("listaUsuarios", control.traerUsuarios());
        
        response.sendRedirect("listadousuarios.jsp");
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          //traigo la id y envio al formulario de la igu
        int id = Integer.parseInt(request.getParameter("idUsuario"));
        
        Usuario usu = control.buscarUsuario(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("Usuario", usu);
       
        response.sendRedirect("modificarusuario.jsp");
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
