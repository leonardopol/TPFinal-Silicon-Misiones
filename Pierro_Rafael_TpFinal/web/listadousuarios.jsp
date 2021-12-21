<%@page import="logica.Empleado"%>
<%@page import="logica.Usuario"%>
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
        <title>Listado de Usuarios</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">

        <h3>Listado de Usuarios</h3>
        
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                    </tr>
                </thead>
                <tbody>
                      <% HttpSession misession = request.getSession();
                         List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                         List<Empleado> listaEmpleados = (List) request.getSession().getAttribute("listaEmpleados");
                         int flag = 0;
                               for(Usuario usu : listaUsuarios){
                                     
                      %>
                    <tr>
                            <% int i = flag;
                            if(i == flag){
                                Empleado emple = listaEmpleados.get(i);
                                %>
                        
                        <%String nombre = emple.getNombre();%>
                        <td><%= nombre%></td>
                        <%String apellido = emple.getApellido();%>
                        <td><%=apellido%></td>
                        
                        <% } 
                        flag = flag + 1;
                        %>
                        
                        <%String usuario = usu.getUsuario();%>
                        <td><%=usuario%></td>
                        <%String password = usu.getPassword();%>
                        <td><%=password%></td>
                        <%int idUsuario = usu.getIdUsuario();%>
                        
                         <!--ul class="actions"--> 
                          <td>
                           <form action="SvModificarUsuario" method="POST">
                            <input type="hidden" name="idUsuario" value="<%=idUsuario%>">
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

