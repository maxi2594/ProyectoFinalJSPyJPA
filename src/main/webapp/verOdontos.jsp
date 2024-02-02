
<%@page import="logica.Odontologo"%>
<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <%        List<Odontologo> listaOdontos = (List) request.getSession().getAttribute("odontos");
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
                                <th>nombre</th>
                                <th>apellido</th>
                                <th>dni</th>
                                <th>direccion</th>
                                <th>telefono</th>
                                
                                <th style="width: 150px"></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>id</th>
                                <th>nombre</th>
                                <th>apellido</th>
                                <th>dni</th>
                                <th>direccion</th>
                                <th>telefono</th>
                                <th style="width: 150px"></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%
                                int i = 0;

                                    for (Odontologo odon : listaOdontos) {
                            %>
                            <tr>
                                <td><%=odon.getId()%></td>
                                <td><%=odon.getNombre()%></td>
                                <td><%=odon.getApellido()%></td>
                                <td><%=odon.getDni()%></td>
                                <td><%=odon.getDireccion()%></td>
                                <td><%=odon.getTelefono()%></td>
                                <td style="display: flex;justify-content: space-around" >
                                    <form action="SvEditarOdonto" method="get">
                                        <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color:grey; ">
                                            <i class="fas fa-edit "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=odon.getId()%>"/>
                                    </form>
                                    <form action="SvEliminarOdontologo" method="post">
                                        <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red;">
                                            <i class="fas fa-trash "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=odon.getId()%>"/>
                                    </form>
                                </td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div

    <%@include file="components/bodyFinal.jsp" %>
</html>
