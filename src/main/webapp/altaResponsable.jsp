<%-- 
    Document   : altaResponsable
    Created on : 29 ene. 2024, 12:06:09
    Author     : maxi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container-fluid">
        
        <%
            int idPacien = 0;
            idPacien = Integer.parseInt(request.getParameter("id"));
        %>
        <h2>alta responsable para pacine id : <%=idPacien%></h2>
        <div class="container col-12 row">
            <form class="user" action="SvResponsable" method="post" >
                
                <div class="form-group col">
                    
                    <div class="col-sm-12 mb-3">
                        <input type="text" name="nombre"class="form-control form-control-user" id="exampleFirstName"
                               placeholder="nombre">
                    </div>
                    <div class="col-sm-12 mb-3">
                        <input type="text" name="apellido"class="form-control form-control-user" id="exampleLastName"
                               placeholder="apellido">
                    </div>
                    <div class="col-sm-12 mb-3 ">
                        <input type="text" name="dni"class="form-control form-control-user" id="exampleFirstName"
                               placeholder="dni">
                    </div>
                    <div class="col-sm-12 mb-3 ">
                        <input type="text" name="telefono"class="form-control form-control-user" id="exampleFirstName"
                               placeholder="telefono">
                    </div>
                    <div class="col-sm-12 mb-3 ">
                        <input type="text" name="direccion"class="form-control form-control-user" id="exampleFirstName"
                               placeholder="direccion">
                    </div>
                    <div class="col-sm-12 mb-3 ">
                        <input type="date" name="fechanac"class="form-control form-control-user" id="exampleFirstName"
                               placeholder="fechaNac">
                    </div>
                    <input type="text" name="id" value="<%=idPacien%>" hidden>
                    
                <hr><!-- comment -->

                <button type="submit" class="btn btn-primary btn-user btn-block">
                    Registrar Responsable
                </button>
            </form>
        </div>
        
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
