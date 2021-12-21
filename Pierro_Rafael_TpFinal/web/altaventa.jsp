<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Alta de Ventas</title>
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
                <a href="index.html" class="logo"><strong>Alta de Ventas</strong></a>
            </header>

            <!-- Menu -->


            <!-- Two -->


            <!-- Contact -->
            <!--section id="contact"-->
            <div class="inner">
                <section>
                    <form action="SvAltaVenta" method="POST">
                        <div class="fields">
                            <div class="field half">
                                <label for="fecha">Fecha de Venta</label>
                                <input type="text" name="fecha"  placeholder="Ingrese fecha aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="numero">Numero de Venta</label>
                                <input type="text" name="numero" placeholder="Ingrese numero aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="producto">Producto</label>
                                <input type="text" name="producto" placeholder="Ingrese producto aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="mediodepago">Medio de Pago</label>
                                <input type="text" name="mediodepago" placeholder="Ingrese medio de pago aqui..."required />

                            <div class="field half">
                                <label for="importe">Importe</label>
                                <input type="text" name="importe" placeholder="Ingrese importe aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="empleado">Empleado</label>
                                <input type="text" name="empleado" placeholder="Ingrese empleado aqui..." required />
                            </div>
                           
                            </div>
                        </div>

                        <ul class="actions">
                            <li><input type="submit" value="Enviar" class="primary" /></li>
                            <li><input type="reset" value="Volver" /></li>
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
