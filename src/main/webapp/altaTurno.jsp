<%-- 
    Document   : altaTurno
    Created on : 29 ene. 2024, 16:47:13
    Author     : maxi2
--%>

<%@page import="logica.Odontologo"%>
<%@page import="logica.Paciente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container">
        <form class="user" action="SvTurno" method="post" id="form1">
            <div class="form-group col">
                <div class="col-sm-6 mb-3">
                    <input type="date" name="fecha"class="form-control form-control-user" id="fecha"
                           placeholder="fecha del turno">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" name="hora_inicio"class="form-control form-control-user" id="hora_inicio"
                           placeholder="hora inicio">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" name="hora_fin"class="form-control form-control-user" id="hora_fin"
                           placeholder="hora fin">
                </div>
                
                <%
                    List<Paciente> lstPacien = (List) request.getAttribute("lstPacien");
                    List<Odontologo> lstOdonto = (List) request.getAttribute("lstOdontos");
                %>
                
                <!-- elije los pacienttes -->
                <label class="ml-3">Elija el paciente del turno</label>
                <select class="form-select" aria-label="Default select example" form="form1" name="pacienteId">
                    <% for (Paciente pacien : lstPacien) { %>
                    
                        <option value="<%=pacien.getId()%>" ><%=pacien.getNombre()+" "+pacien.getApellido()%></option>
                        
                    <%  }
                    %>
                </select>
                <label class="ml-3">Elija el medico del turno</label>
                <select class="form-select" aria-label="Default select example" form="form1" name="odontoId">
                    <% for (Odontologo odonto : lstOdonto) { %>
                    
                        <option value="<%=odonto.getId()%>" ><%=odonto.getNombre()+" "+odonto.getApellido()%></option>
                        
                    <%  }
                    %>
                </select>
                
                
                
                
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Registrar Turno
            </button>>
        </form>
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
