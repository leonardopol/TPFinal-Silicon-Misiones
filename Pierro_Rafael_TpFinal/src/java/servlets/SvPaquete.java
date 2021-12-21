
package servlets;

import java.io.IOException;
import java.util.ArrayList;
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
import logica.PaqueteTuristico;
import logica.ServicioTuristico;



@WebServlet(name = "SvPaquete", urlPatterns = {"/SvPaquete"})
public class SvPaquete extends HttpServlet {
    
    Controladora control = new Controladora();
    

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo los servicios de la logica
        List<PaqueteTuristico> listaPaquetes = control.traerPaquetes();
        //los envio al formulario de altapaquete
        HttpSession misession = request.getSession();
        misession.setAttribute("listaPaquetes", listaPaquetes);
           
        response.sendRedirect("altapaquete.jsp");
        

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //tengo que recibir la lista con los servicios incluidos para guardarlo en la logica
        // y crear el paquete
        //traigo la id del formulario
        //try{
        int codigoServicio = Integer.parseInt(request.getParameter("codigoServicio"));
        //le digo a la logica que busque esa id seleccionada
        
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String destino = request.getParameter("destino");
        Date fecha = deStringToDate2(request.getParameter("fecha"));
        Double costo = Double.parseDouble(request.getParameter("costo"));

        ServicioTuristico servici = control.buscarServicio(codigoServicio);
        
        servici.getCodigoServicio();
        servici.getCosto();
        servici.getDescripcion();
        servici.getDestino();
        servici.getFecha();
        servici.getNombre();

        List<ServicioTuristico> listaServicios = new ArrayList<ServicioTuristico>();
        listaServicios.add(0, servici);
        //PaqueteTuristico paque = new PaqueteTuristico(id, costo, listaServicios);  
        //double costo = 10;
        control.crearPaquete(listaServicios, costo);

        response.sendRedirect("index.jsp");
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
