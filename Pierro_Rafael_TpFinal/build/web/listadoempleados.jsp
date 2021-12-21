<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Usuario"%>
<%@page import="logica.Empleado"%>
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
        <title>Lista Empleados</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">

        <h3>Listado de Empleados</h3>
        
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
                        <th>Cargo</th>
                        <th>Sueldo</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                        <th>Eliminar</th>
                        <th>Modificar</th>
                    </tr>
                </thead>
                <tbody>
                      <% HttpSession misession = request.getSession();
                                              SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                                              List<Empleado> listaEmpleados = (List) request.getSession().getAttribute("listaEmpleados");
                                              //List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                                              //int flag = 0;
                                              for(Empleado emple : listaEmpleados){
                                                  String fechaNacimiento = sdf.format(emple.getFechaNacimiento());
                                                  
                                              %>
                    <tr>
                        <%String nombre = emple.getNombre();%>
                        <td><%= nombre%></td>
                        <%String apellido = emple.getApellido();%>
                        <td><%=apellido%></td>
                        <%String direccion = emple.getDireccion();%>
                        <td><%=direccion%></td>
                        <%String dni = emple.getDni();%>
                        <td><%=dni%></td>
                        <td><%= fechaNacimiento%></td>
                        <%String nacionalidad = emple.getNacionalidad();%>
                        <td><%= nacionalidad%></td>
                        <%String celular = emple.getCelular();%>
                        <td><%=celular%></td>
                        <%String email = emple.getEmail();%>
                        <td><%=email%></td>
                         <%String cargo = emple.getCargo();%>
                        <td><%= cargo%></td>
                        <%double sueldo = emple.getSueldo();%>
                        <td><%= sueldo%></td>
                        <%int idEmpleado = emple.getIdEmpleado();%>
                        
                        <%// int i = flag;
                            //if(i == flag){
                                //Usuario usua = listaUsuarios.get(i);
                                
                            
                            
                            
                        %>
                        
                        <%//String usuario = usua.getUsuario();%>
                        <td><%//=usuario%></td>
                        <%//String password = usua.getPassword();%>
                        <td><%//=password%></td>
                        <%//int idUsuario = usua.getIdUsuario();%>
                    </tr>
                    <!--tr>
                          
                          
                           
                           </tr-->
  
                         <!--ul class="actions"-->

                         <form action="SvEliminarEmpleado" method="POST">
                            <input type="hidden" name="idEmpleado" value="<%=idEmpleado%>">
                            <!--input type="hidden" name="idUsuario" value="<%//=idUsuario%>"-->
                            <td><button type="submit" class="button primary">Eliminar</button></td>
                          </form>
                           
                          
                           <form action="SvModificarEmpleado" method="POST">
                            <input type="hidden" name="idEmpleado" value="<%=idEmpleado%>">
                            <!--input type="hidden" name="idUsuario" value="<%//=idUsuario%>"-->
                            <td><button type="submit" class="button">Modificar</button></td>
                           </form>
                        <!--td><a href="#" class="button primary">Eliminar</a></td>
                        <td><a href="#" class="button">Modificar</a></td-->
                                                <%// } 
                        //flag = flag + 1;
                        %>
                        
                        <% } %>
                        <!--/ul-->
                    <!--/tr-->
                    
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
