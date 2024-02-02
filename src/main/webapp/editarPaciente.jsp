

<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container">
        <h1>Editar Paciente</h1>
            <form class="user" action="SvEditarPaciente" method="post" >
            <%
                Paciente pacien = (Paciente) request.getAttribute("pacien");
            %>
            <div class="form-group col">
                <div class="form-floating col-sm-6 mb-3">
                    <label for="name" class="mr-2">nombre</label>
                    <input type="text" name="nombre"class="form-control form-control-user" id="nombre"
                           value="<%=pacien.getNombre()%>">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" name="apellido" class="form-control form-control-user" id="exampleLastName"
                           value="<%=pacien.getApellido()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="dni"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=pacien.getDni()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="direccion"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=pacien.getDireccion()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="telefono"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=pacien.getTelefono()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="date" name="fechaNac"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=pacien.getFecha_nac()%>" placeholder="<%=pacien.getFecha_nac()%>">
                </div>
                <hr><!-- tipo de sangre -->
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="tieneOS"
                           id="id" name="tieneOS" <%= (pacien.getTiene_OS())? "checked" : ""%> >
                    <label class="form-check-label">tiene Obra Social</label>
                </div>

                <input type="hidden" name="id" value="<%=pacien.getId()%>"/>
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Guardar
            </button>
        </form>
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
