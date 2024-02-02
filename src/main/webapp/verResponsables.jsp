<%-- 
    Document   : verResponsables
    Created on : 29 ene. 2024, 14:39:07
    Author     : maxi2
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Responsable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <%        List<Responsable> listaRespon = (List) request.getAttribute("responsables");

    %>

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Lista Responsables</h1>
        <p class="mb-4">Lista de responsables a cargo de pacientes</p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Datos</h6>
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
                                <th>fecha_nac</th>
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
                                <th>fecha_nac</th>
                                <th style="width: 150px"></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%                  

                                for (Responsable respon : listaRespon) {
                            %>
                            <tr>
                                <td><%=respon.getId()%></td>
                                <td><%=respon.getNombre()%></td>
                                <td><%=respon.getApellido()%></td>
                                <td><%=respon.getDni()%></td>
                                <td><%=respon.getDireccion()%></td>
                                <td><%=respon.getTelefono()%></td>
                                <td><%=respon.getFecha_nac()%></td>

                                <td style="display: flex;justify-content: space-around" >
                                    <form action="SvEditarPaciente" method="get">
                                        <button type="submit" title="editar" class="btn btn-primary btn-user btn-block" style="background-color:grey; ">
                                            <i class="fas fa-edit "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=respon.getId()%>"/>
                                    </form>
                                    <form action="SvEliminarPaciente" method="post">
                                        <button type="submit" title="eliminar" class="btn btn-primary btn-user btn-block" style="background-color: red;">
                                            <i class="fas fa-trash "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=respon.getId()%>"/>
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
