package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import static logica.Controladora.deStringToDate2;
import logica.ServicioTuristico;


@WebServlet(name = "SvAgregarPaquete", urlPatterns = {"/SvAgregarPaquete"})
public class SvAgregarPaquete extends HttpServlet {

            Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo id desde el formulario y envio a la logica
        int id = Integer.parseInt(request.getParameter("codigoServicio"));
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String destino = request.getParameter("destino");
        Date fecha = deStringToDate2(request.getParameter("fecha"));
        Double costo = Double.parseDouble(request.getParameter("costo"));
        
        ServicioTuristico servi = control.buscarServicio(id);
        servi.setNombre(nombre);
        servi.setDescripcion(descripcion);
        servi.setDestino(destino);
        servi.setFecha(fecha);
        servi.setCosto(costo);
        
        List<ServicioTuristico> listaDeServiciosIncluidos = null;
        listaDeServiciosIncluidos.add(id, servi);
        control.crearPaquete(listaDeServiciosIncluidos, 12000);
        //actualizo mi lista de personas
        request.getSession().setAttribute("listaServicios", control.traerServicios());
        response.sendRedirect("listadoservicios.jsp");
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                //traigo la id y envio al formulario de la igu
        int id = Integer.parseInt(request.getParameter("codigoServicio"));
        ServicioTuristico servi = control.buscarServicio(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("ServicioTuristico", servi);
        response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
