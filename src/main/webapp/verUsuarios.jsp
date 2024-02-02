<%-- 
    Document   : verUsuarios
    Created on : 16 ene. 2024, 13:52:59
    Author     : maxi2
--%>

<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>
    
    <% 
        List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("usuarios");
    %>

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Lista Usuarios</h1>
        <p class="mb-4">DataTables of al the user in the system</p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">DataTable</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>UserName</th>
                                <th>Rol</th>
                                <th style="width: 230px"></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>id</th>
                                <th>UserName</th>
                                <th>Rol</th>
                                <th style="width: 210px"></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <% 
                                int i = 0;
        
                                for (Usuario usu : listaUsuarios) {
                            %>
                            <tr>
                                <td><%=usu.getId_usuario()%></td>
                                <td><%=usu.getNombreUsuario()%></td>
                                <td><%=usu.getRol()%></td>
                                <td style="display: flex;justify-content: space-around" >
                                    <form action="SvEditarUsuario" method="get">
                                        <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color:grey; margin-right: 5px">
                                            <i class="fas fa-edit "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"/>
                                    </form>
                                    <form action="SvEliminarUsuario" method="post">
                                        <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red;">
                                            <i class="fas fa-trash "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"/>
                                    </form>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div

    <%@include file="components/bodyFinal.jsp" %>
</html>
