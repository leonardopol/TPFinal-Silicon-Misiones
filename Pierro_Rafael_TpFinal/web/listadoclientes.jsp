<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Cliente"%>
<%@page import="java.util.Date"%>
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
        <title>Listado de Clientes</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">

        <h3>Listado de Clientes</h3>
        
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Dirección</th>
                        <th>Dni</th>
                        <th>Fecha Nacimiento</th>
                        <th>Nacionalidad</th>
                        <th>Celular</th>
                        <th>Email</th>
                        <th>Eliminar</th>
                        <th>Modificar</th>
                    </tr>
                </thead>
                <tbody>
                      <% HttpSession misession = request.getSession();
                         SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                         List<Cliente> listaClientes = (List) request.getSession().getAttribute("listaClientes");
                         for(Cliente clie : listaClientes){
                         String fechaNacimiento = sdf.format(clie.getFechaNacimiento());
                         %>
                    <tr>
                        <%String nombre = clie.getNombre();%>
                        <td><%= nombre%></td>
                        <%String apellido = clie.getApellido();%>
                        <td><%=apellido%></td>
                        <%String direccion = clie.getDireccion();%>
                        <td><%=direccion%></td>
                        <%String dni = clie.getDni();%>
                        <td><%=dni%></td>
                        <!--%Date fechaNacimiento = clie.getFechaNacimiento();%-->
                        <td><%= fechaNacimiento%></td>
                        <%String nacionalidad = clie.getNacionalidad();%>
                        <td><%= nacionalidad%></td>
                        <%String celular = clie.getCelular();%>
                        <td><%=celular%></td>
                        <%String email = clie.getEmail();%>
                        <td><%=email%></td>
                        <%int idCliente = clie.getIdCliente();%>
                         <!--ul class="actions"-->
                         <td>
                          <form action="SvEliminarCliente" method="POST">
                            <input type="hidden" name="idCliente" value="<%=idCliente%>">
                          <button type="submit" class="button primary">Eliminar</button>
                          </form>
                          </td> 
                          <td>
                           <form action="SvModificarCliente" method="POST">
                            <input type="hidden" name="idCliente" value="<%=idCliente%>">
                            <button type="submit" class="button">Modificar</button>
                           </form>
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

