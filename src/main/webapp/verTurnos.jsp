<%-- 
    Document   : verTurnos
    Created on : 30 ene. 2024, 12:55:41
    Author     : maxi2
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="logica.Turno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <%        List<Turno> listaTurnos = (List) request.getAttribute("listaTurnos");

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
                                <th>hora inicio</th>
                                <th>hora fin</th>
                                <th>fecha</th>
                                <th>paciente</th>
                                <th>medico</th>
                                <th style="width: 150px"></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>id</th>
                                <th>hora inicio</th>
                                <th>hora fin</th>
                                <th>fecha</th>
                                <th>paciente</th>
                                <th>medico</th>
                                <th style="width: 150px"></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%      
                                SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-DD");
                                for (Turno turno : listaTurnos) {
                            %>
                            <tr>
                                <td><%=turno.getId_turno()%></td>
                                <td><%=turno.getHora_inicio()%></td>
                                <td><%=turno.getHora_fin()%></td>
                                <td><%=formatter.format(turno.getFechaTurno())%></td>
                                <td><%=turno.getPacien().getNombreYApellido()%></td>
                                <td><%=turno.getOdonto().getNombreYApellido()%></td>

                                <td style="display: flex;justify-content: space-around" >
                                    <form action="SvEditarTurno" method="get">
                                        <button type="submit" title="editar" class="btn btn-primary btn-user btn-block" style="background-color:grey; ">
                                            <i class="fas fa-edit "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=turno.getId_turno()%>"/>
                                    </form>
                                    <form action="SvEliminarTurno" method="post">
                                        <button type="submit" title="eliminar" class="btn btn-primary btn-user btn-block" style="background-color: red;">
                                            <i class="fas fa-trash "></i>
                                        </button>
                                        <input type="hidden" name="id" value="<%=turno.getId_turno()%>"/>
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
