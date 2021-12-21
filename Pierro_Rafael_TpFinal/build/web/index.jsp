<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Agencia de Turismo</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- site icon -->
      <link rel="icon" href="images/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="css/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   
        <form action="SvUsuario" method="POST">
       <%
           HttpSession  misession = request.getSession();
           String usuario = (String) misession.getAttribute("usuario");
           if(usuario == null){
               response.sendRedirect("login.jsp");
           }
           else{
         %>      
         
   <body class="dashboard dashboard_1">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.jsp"><img class="logo_icon img-responsive" src="images/layout_img/logo2.jpg" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="images/layout_img/turismo.jpg" alt="#" /></div>
                        <div class="user_info">
                           <h6>Agencia de Turismo</h6>
                        </div>
                        
                     </div>
                     
                  </div>
                   
               </div>
               <div class="sidebar_blog_2">
                   <h4>Menú Principal</h4>
                  <ul class="list-unstyled components">
                     <li class="active">
                        <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-plane yellow_color"></i> <span>Servicio Turístico</span></a>
                        <ul class="collapse list-unstyled" id="dashboard">
                           <li>
                              <a href="altaservicio.jsp">> <span>Nuevo Servicio</span></a>
                           </li>
                           <form action="SvListarServicios" method="GET">
                                <li><a href="SvListarServicios" class="SUBMIT">>Lista de Servicios</a></li>
                           </form>
                           
                           
                        </ul>
                     </li>
                    
                     <li>
                        <a href="#element" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-globe purple_color"></i> <span>Paquete Turístico</span></a>
                        <ul class="collapse list-unstyled" id="element">
                            <form action="SvPaquete" method="GET">
                                <li><a href="SvPaquete" class="SUBMIT">>Nuevo Paquete</a></li>
                           </form>
                           <li><a href="SvListarPaquetes">> <span>Lista de Paquetes</span></a></li>
                        </ul>
                     </li>
                     
                     <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-user blue2_color"></i> <span>Clientes</span></a>
                        <ul class="collapse list-unstyled" id="apps">
                           <li><a href="altacliente.jsp">> <span>Alta Cliente</span></a></li>
                           <form action="SvListarClientes" method="GET">
                                <li><a href="SvListarClientes" class="SUBMIT">>Lista de Clientes</a></li>
                           </form>
                        </ul>
                     </li>
                     
                     
                     <li class="active">
                        <a href="#additional_page" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-users yellow_color"></i> <span>Empleados</span></a>
                        <ul class="collapse list-unstyled" id="additional_page">
                           <li>
                              <a href="altaempleado.jsp">> <span>Alta Empleados</span></a>
                           </li>
                           <form action="SvListarEmpleados" method="GET">
                                <li><a href="SvListarEmpleados" class="SUBMIT">>Lista de Empleados</a></li>
                           </form>
                            <form action="SvListarUsuarios" method="GET">
                                <li><a href="SvListarUsuarios" class="SUBMIT">>Lista de Usuarios</a></li>
                           </form>
                        </ul>
                     </li>
                     
                  <li class="active">
                        <a href="#elements" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-dollar green_color"></i> <span>Ventas</span></a>
                        <ul class="collapse list-unstyled" id="elements">
                           <li>
                              <a href="altaventa.jsp">> <span>Nueva Venta</span></a>
                           </li>
                           <li>
                              <a href="dashboard_2.html">> <span>Lista Ventas</span></a>
                           </li>
                        </ul>
                     </li>
                  </ul>
               </div>
            </nav>
            <!-- end sidebar -->
            <!-- right content -->
            <div>
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
                        <div class="logo_section">
                            
                        </div>
                        <div class="right_topbar">
                           <div class="icon_info">
                             
                              <ul class="user_profile_dd">
                                 <li>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">Usuario</span></a>
                                    <div class="dropdown-menu">
                                       
                                       
                                       <a class="dropdown-item" href="#"><span>Salir</span> <i class="fa fa-sign-out"></i></a>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               <!-- dashboard inner -->
               
       
               
         </div>
            <img src="images/layout_img/fondo.jpg">
      </div>
          
      <!-- jQuery -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/animate.js"></script>
      <!-- select country -->
      <script src="js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="js/Chart.min.js"></script>
      <script src="js/Chart.bundle.min.js"></script>
      <script src="js/utils.js"></script>
      <script src="js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
      <script src="js/chart_custom_style1.js"></script>
   </body>
</html>
<%}%>