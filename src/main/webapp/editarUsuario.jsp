<%-- 
    Document   : editarUsuario
    Created on : 19 ene. 2024, 12:52:43
    Author     : maxi2
--%>

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container">
            <h1>Editar Uusario</h1>
        <form class="user" action="SvEditarUsuario" method="post" >
            <%
                Usuario usu = (Usuario)request.getSession().getAttribute("usuario");
             %>
            <div class="form-group col">
                <div class="col-sm-6 mb-3">
                    <input type="text" name="nombre"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=usu.getNombreUsuario()%>">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="password" name="password" class="form-control form-control-user" id="exampleLastName"
                           value="<%=usu.getContra()%>">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="rol"class="form-control form-control-user" id="exampleFirstName"
                           value="<%=usu.getRol()%>">
                </div>
                
                <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"/>
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Guardar
            </button>
        </form>
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
