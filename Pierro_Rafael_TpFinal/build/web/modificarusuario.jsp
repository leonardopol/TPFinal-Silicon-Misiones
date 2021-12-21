<%@page import="logica.Usuario"%>
<%@page import="logica.Empleado"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Modificar Usuario</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    
    <body class="is-preload">
        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header" class="alt">
                <a href="index.html" class="logo"><strong>Modificar Usuario</strong></a>
            </header>

            <!-- Menu -->


            <!-- Two -->


            <!-- Contact -->
            <!--section id="contact"-->
            <div class="inner">
                <section>
                    <form action="SvModificarUsuario" method="GET">
                        <% HttpSession misession = request.getSession();
                           Usuario usu = (Usuario) misession.getAttribute("Usuario");
                           
                        %>
                        <div class="fields">
                            <div class="field half">
                                <label for="nombre">Usuario</label>
                                <input type="text" name="usuario" placeholder="Ingrese usuario aqui..." value="<%=usu.getUsuario()%>" />
                            </div>
                            <div class="field half">
                                <label for="apellido">Contraseña</label>
                                <input type="password" name="password" placeholder="Ingrese nueva clave aqui..." value="<%=usu.getPassword()%>" />
                            </div>
                        </div>

                        <ul class="actions">
                            <input type="hidden" name="idUsuario" value="<%=usu.getIdUsuario()%>"
                            
                            <li><input type="submit" value="Enviar" class="primary" /></li>
                            
                            <li><a href="index.jsp" class="button primary">Volver</a></li>
                        </ul>
                    </form>

            </div>
        </section-->

        <!-- Footer -->

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

