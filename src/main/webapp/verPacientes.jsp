<%-- 
    Document   : verPacientes
    Created on : 25 ene. 2024, 14:33:32
    Author     : maxi2
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <%        
        List<Paciente> listaPacien = (List) request.getAttribute("pacientes");
        
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
                                <th>fecha_nac</th>
                                <th>obra social</th>
                                <th>tipo sangre</th>
                                <th>responsable</th>
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
                                <th>obra social</th>
                                <th>tipo sangre</th>
                                <th>responsable</th>
                                <th style="width: 150px"></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%
                                int i = 0;

                                    for (Paciente pacien : listaPacien) {
                            %>
                            <tr>
                                <td><%=pacien.getId()%></td>
                                <td><%=pacien.getNombre()%></td>
                                <td><%=pacien.getApellido()%></td>
                                <td><%=pacien.getDni()%></td>
                                <td><%=pacien.getDireccion()%></td>
                                <td><%=pacien.getTelefono()%></td>
                                <td><%=((Date)pacien.getFecha_nac())%></td>
                                <td><%=(pacien.getTiene_OS())? "si" : "no"%></td>
                                <td><%=pacien.getTipoSangre()%></td>
                                <td><%=(pacien.getUnResponsable() != null)? pacien.getUnResponsable().getNombre(): "no"%></td>
                                
                                <td style="display: flex;justify-content: space-around" >
                                    <form action="SvEditarPaciente" method="get">
                                        <button type="submit" title="editar" class="btn btn-primary btn-user btn-block" style="background-color:grey; ">
                                            <i class="fas fa-edit "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=pacien.getId()%>"/>
                                    </form>
                                    <form action="SvEliminarPaciente" method="post">
                                        <button type="submit" title="eliminar" class="btn btn-primary btn-user btn-block" style="background-color: red;">
                                            <i class="fas fa-trash "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=pacien.getId()%>"/>
                                    </form>
                                    <form action="altaResponsable.jsp" method="get">
                                        <button title="agregar representante" type="submit" class="btn btn-primary btn-user btn-block" style="background-color: lightseagreen;" 
                                                <%= (pacien.getUnResponsable() == null)? "" : "hidden"%>>
                                            <i class="fas fa-user"></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=pacien.getId()%>"/>
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
