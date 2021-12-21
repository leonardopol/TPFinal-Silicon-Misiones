<%@page import="logica.Cliente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.ServicioTuristico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Modificar Cliente</title>
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
                <a href="index.html" class="logo"><strong>Modificar Cliente</strong></a>
            </header>

            <!-- Menu -->


            <!-- Two -->


            <!-- Contact -->
            <!--section id="contact"-->
            <div class="inner">
                <section>
                    <form action="SvModificarCliente" method="GET">
                        <% HttpSession misession = request.getSession();
                           Cliente clie = (Cliente) misession.getAttribute("Cliente");
                           SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                           String fechaNacimiento = sdf.format(clie.getFechaNacimiento());
                        %>
                        <div class="fields">
                            <div class="field half">
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" placeholder="Ingrese nombre aqui..." value="<%=clie.getNombre()%>" />
                            </div>
                            <div class="field half">
                                <label for="apellido">Apellido</label>
                                <input type="text" name="apellido" placeholder="Ingrese apellido aqui..." value="<%=clie.getApellido()%>" />
                            </div>
                            <div class="field half">
                                <label for="direccion">Direccion</label>
                                <input type="text" name="direccion" placeholder="Ingrese direccion aqui..." value="<%=clie.getDireccion()%>" />
                            </div>
                            <div class="field half">
                                <label for="dni">Dni</label>
                                <input type="text" name="dni" placeholder="Ingrese dni aqui..." value="<%=clie.getDni()%>" />
                            </div>
                            <div class="field half">
                                <label for="fechaNacimiento">Fecha de Nacimiento</label>
                                <input type="text" name="fechaNacimiento" placeholder="Ingrese fecha del Nacimiento aqui..." value="<%=fechaNacimiento%>" />
                            </div>
                            <div class="field half">
                                <label for="nacionalidad">Nacionalidad</label>
                                <input type="text" name="nacionalidad" placeholder="Ingrese el nacionalidad aqui..." value="<%=clie.getNacionalidad()%>" />
                            </div>
                            <div class="field half">
                                <label for="celular">Celular</label>
                                <input type="text" name="celular" placeholder="Ingrese celular aqui..." value="<%=clie.getCelular()%>" />
                            </div>
                            <div class="field half">
                                <label for="email">Email</label>
                                <input type="text" name="email" placeholder="Ingrese email aqui..." value="<%=clie.getEmail()%>" />
                            </div>
                        </div>

                        <ul class="actions">
                            <input type="hidden" name="idCliente" value="<%=clie.getIdCliente()%>"
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



