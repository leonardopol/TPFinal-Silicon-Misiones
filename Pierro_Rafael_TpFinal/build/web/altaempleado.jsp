<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Alta de Empleados</title>
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
                <a href="index.html" class="logo"><strong>Alta de Empleados</strong></a>
            </header>

            <!-- Menu -->


            <!-- Two -->


            <!-- Contact -->
            <!--section id="contact"-->
            <div class="inner">
                <section>
                    <form action="SvEmpleado" method="POST">
                        <div class="fields">
                            <div class="field half">
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre"  placeholder="Ingrese nombre aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="apellido">Apellido</label>
                                <input type="text" name="apellido" placeholder="Ingrese apellido aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="direccion">Dirección</label>
                                <input type="text" name="direccion" placeholder="Ingrese direccion aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="dni">Dni</label>
                                <input type="text" name="dni" placeholder="Ingrese dni aqui..."required />
                            </div>
                            <div class="field half">
                                <label for="fechaNacimiento">Fecha de Nacimiento</label>
                                <input type="text" name="fechaNacimiento" placeholder="Ingrese DD/MM/YYY..." required />
                            </div>
                            <div class="field half">
                                <label for="nacionalidad">Nacionalidad</label>
                                <input type="text" name="nacionalidad" placeholder="Ingrese nacionalidad aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="celular">Celular</label>
                                <input type="text" name="celular" placeholder="Ingrese numero aqui ej. +54 11 68887766..." required />
                            </div>
                            <div class="field half">
                                <label for="email">Email</label>
                                <input type="text" name="email" placeholder="Ingrese email aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="cargo">Cargo</label>
                                <input type="text" name="cargo" placeholder="Ingrese cargo aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="sueldo">Sueldo</label>
                                <input type="text" name="sueldo" placeholder="Ingrese sueldo aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="usuario">Usuario</label>
                                <input type="text" name="usuario" placeholder="Ingrese nuevo usuario aqui..." required />
                            </div>
                            <div class="field half">
                                <label for="password">Contraseña</label>
                                <input type="password" name="password" placeholder="Ingrese clave aqui..." required />
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
