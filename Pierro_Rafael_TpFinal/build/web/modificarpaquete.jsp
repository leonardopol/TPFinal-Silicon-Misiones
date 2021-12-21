<%@page import="logica.PaqueteTuristico"%>
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
        <title>Modificar Paquetes</title>
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
                <a href="index.html" class="logo"><strong>Modificar Paquetes</strong></a>
            </header>

            <!-- Menu -->


            <!-- Two -->


            <!-- Contact -->
            <!--section id="contact"-->
            <div class="inner">
                <section>
                    <form action="SvModificarPaquete" method="GET">
                        <% HttpSession misession = request.getSession();
                           PaqueteTuristico paque = (PaqueteTuristico) misession.getAttribute("PaqueteTuristico");
                           
                           
                        %>
                        <div class="fields">
  
                            <div class="field half">
                                <label for="costo">Costo</label>
                                <input type="text" name="costo" placeholder="Ingrese el costo aqui..." value="<%=paque.getCosto()%>" />
                            </div>
                        </div>

                        <ul class="actions">
                            <input type="hidden" name="codigoPaquete" value="<%=paque.getCodigoPaquete()%>"
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



