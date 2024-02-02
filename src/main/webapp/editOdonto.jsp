

<%@page import="logica.Odontologo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container">
        <h1>Editar Uusario</h1>
            <form class="user" action="SvEditarOdonto" method="post" >
            <%
                Odontologo odonto = (Odontologo)request.getAttribute("odonto");
            %>
            <div class="form-group col">
                <div class="form-floating col-sm-6 mb-3">
                    <label for="name" class="mr-2">nombre</label>
                    <input type="text" name="nombre"class="form-control form-control-user" id="nombre"
                           value="<%=odonto.getNombre()%>">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" name="apellido" class="form-control form-control-user" id="exampleLastName"
                           value="<%=odonto.getApellido()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="dni"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=odonto.getDni()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="direccion"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=odonto.getDireccion()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="telefono"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=odonto.getTelefono()%>">
                </div>

                <input type="hidden" name="id" value="<%=odonto.getId()%>"/>
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Guardar
            </button>
        </form>
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
