<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lte IE 9]>
<html lang="en" class="oldie">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="es">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alta empleados</title>
        <link rel="stylesheet" media="all" href="css/stylecrudempleado.css" />
        <!script language="javascript">
        <!window.location.href = "login.jsp";
    </script>
    </head>
    <body>
        <form class="form" action="SvEmpleado" method="POST">
            <h2>Alta Empleado</h2>
            <p type="Nombre:"><input type="text" name="nombre" placeholder="Escriba nombre aquí..."></input></p>
            <p type="Apellido:"><input type="text" name="apellido" placeholder="Escriba apellido aquí..."></input></p>
            <p type="Dirección:"><input type="text" name="direccion" placeholder="Escriba direccion aqui..."></input></p>
            <p type="Dni:"><input type="text" name="dni" placeholder="Escriba Dni aqui..."></input></p>
            <p type="Fecha de nacimiento:"><input type="text" name="fechaNacimiento" placeholder="Escriba fecha de nacimiento aqui..."></input></p>
            <p type="Nacionalidad:"><input type="text" name="nacionalidad" placeholder="Escriba nacionalidad aqui..."></input></p>
            <p type="Celular:"><input type="text" name="celular" placeholder="Escriba celular aqui..."></input></p>
            <p type="Email:"><input type="text" name="email" placeholder="Escriba email aqui..."></input></p>
            <p type="Cargo:"><input type="text" name="cargo" placeholder="Escriba cargo aqui..."></input></p>
            <p type="Sueldo:"><input type="text" name="sueldo" placeholder="Escriba sueldo aqui..."></input></p>
            <p type="Usuario:"><input type="text" name="usuario" placeholder="Escriba nombre de usuario aqui..."</input></p>
            <p type="Contraseña:"><input type="password" name ="password" placeholder="Escriba contraseña de usuario aqui..."</input></p>             
            <button type="submit">Enviar</button>
           </form>
    </body>
</html>
