<%@page import="logica.PaqueteTuristico"%>
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
        <title>Listado de Paquetes</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">

        <h3>Listado de Paquetes</h3>
        
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>costo</th>
                        <!--th>Destino</th>
                        <th>Fecha</th>
                        <th>Costo</th-->
                        <!--th>Eliminar</th-->
                        <!--th>Modificar</th-->
                    </tr>
                </thead>
                <tbody>
                      <% HttpSession misession = request.getSession();
                         
                       List<PaqueteTuristico> listaPaquetes = (List) request.getSession().getAttribute("listaPaquetes");
                       for(PaqueteTuristico paque : listaPaquetes){
                      %>
                    <tr>
                        <%//String codigoPaquete = paque.getCodigoPaquete();%>
                        <td><%=paque.getCodigoPaquete()%></td>
                        <%//String descripcion = serv.getDescripcion();%>
                        <td><%=paque.getCosto()%></td>
                        
                         <!--ul class="actions"-->
                         
                        <!--td><a href="#" class="button primary">Eliminar</a></td-->
                        <!--td><a href="#" class="button">Modificar</a></td-->
                        <!--/ul-->
                    </tr><td>
                          <form action="SvEliminarPaquete" method="POST">
                            <input type="hidden" name="codigoPaquete" value="<%=paque.getCodigoPaquete()%>">
                          <button type="submit" class="button primary">Eliminar</button>
                          </form>
                          </td> 
                          <td>
                           <form action="SvModificarPaquete" method="POST">
                            <input type="hidden" name="codigoPaquete" value="<%=paque.getCodigoPaquete()%>">
                            <button type="submit" class="button">Modificar</button>
                           </form>
                           </td>
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

