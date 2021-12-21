<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="logica.ServicioTuristico"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Elements - Forty by HTML5 UP</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">

        <h3>Agregar de Servicios a paquete</h3>
        
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Destino</th>
                        <th>Fecha</th>
                        <th>Costo</th>
                        <th>Agregar</th>
                        <th>Quitar</th>
                    </tr>
                </thead>
                <tbody>
                      <% HttpSession misession = request.getSession();
                                              SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                                              
                                              List<ServicioTuristico> listaServicios = (List) request.getSession().getAttribute("listaServicios");
                                              for(ServicioTuristico serv : listaServicios){
                                                  String fecha = sdf.format(serv.getFecha());
                                              %>
                    <tr>
                        <%int codigoServicio = serv.getCodigoServicio();%>
                        <td><%=codigoServicio%></td>
                        <%String nombre = serv.getNombre();%>
                        <td><%=nombre%></td>
                        <%String descripcion = serv.getDescripcion();%>
                        <td><%=descripcion%></td>
                        <%String destino = serv.getDestino();%>
                        <td><%=destino%></td>
                        <!--%Date fecha = serv.getFecha%-->
                        <td><%=fecha%></td>
                        <%Double costo = serv.getCosto();%>
                        <td><%=costo%></td>
                        
                         <!--ul class="actions"-->
                         <td>
                          <form action="SvPaquete" method="POST">
                           <input type="hidden" name="codigoServicio" value="<%=codigoServicio%>">
                           <input type="hidden" name="nombre" value="<%=nombre%>">
                           <input type="hidden" name="descripcion" value="<%=descripcion%>">
                           <input type="hidden" name="destino" value="<%=destino%>">
                           <input type="hidden" name="fecha" value="<%=fecha%>">
                           <input type="hidden" name="costo" value="<%=costo%>">
                          <button type="submit" class="button primary">Agregar</button>
                          
                          </td> 
                          <td>
                           <form action="SvPaquete" method="POST">
                            <input type="hidden" name="codigoServicio" value="<%=codigoServicio%>">
                            <button type="submit" class="button">Quitar</button>
                           

                           </td>
                        <!--/ul-->
                    </tr>
                    <% } %>
                </tbody>
               
            </table>
        </div>


        <!-- Buttons -->

        <ul class="actions">
            <li><a href="index.jsp" class="button primary">Volver</a></li>
            
        </ul>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
