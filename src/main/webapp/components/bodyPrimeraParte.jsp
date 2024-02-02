
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body id="page-top">
    
    <% 
//        HttpSession misession = request.getSession();
//        Usuario user = (Usuario)request.getSession().getAttribute("user");
//        
//        
//        if (user == null) {
//            response.sendRedirect("logIn.jsp");
//        }else{ 
    
    %>
        

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-solid fa-tooth"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Consultorio Odontologico</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-solid fa-bars"></i>
                    <span>Menu</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">


            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-solid fa-hospital-user"></i>
                    <span>Odontologos</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="SvOdonto">Lista Odontologos</a>
                        <a class="collapse-item" href="altaOdontologo.jsp">Alta Odontologo</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-solid fa-hospital"></i>
                    <span>Pacientes</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar"> 
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="SvPaciente">Lista Pacientes</a>
                        <a class="collapse-item" href="altaPaciente.jsp">Alta Pacientes</a>
                    </div>
                </div>
            </li>
            <!-- Nav Item - Usuarios Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsuarios"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-solid fa-hospital"></i>
                        <span>Usuarios</span>
                </a>
                <div id="collapseUsuarios" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar"> 
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="SvUsuarios">Lista Usuarios</a>
                        <a class="collapse-item" href="altaUsuario.jsp">Alta Usuarios</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Responsable Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="SvResponsable">
                    <i class="fas fa-solid fa-hospital"></i>
                        <span>Responsables</span>
                </a>
            </li>
            
            <!-- Nav Item - Turnos Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTurnos"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-solid fa-hospital"></i>
                        <span>Turnos</span>
                </a>
                <div id="collapseTurnos" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar"> 
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="SvTurno">Lista Turnos</a>
                        <a class="collapse-item" href="SvPacientesyOdontos">Solicitar Tutno</a>
                    </div>
                </div>
            </li>
            

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%="log in"%></span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->
                
                            <h2>Clinica Odontologica</h2>

                <!-- Begin Page Content -->
                
            <!-- End of Main Content -->
            
            <%
        //}
    %>
