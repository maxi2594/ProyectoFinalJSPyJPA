<%-- 
    Document   : altas
    Created on : 12 ene. 2024, 13:20:52
    Author     : maxi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container">
        <form class="user" action="SvOdonto" method="post" >
            <div class="form-group col">
                <div class="col-sm-6 mb-3">
                    <input type="text" name="nombre"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="nombre">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" name="apellido"class="form-control form-control-user" id="exampleLastName"
                           placeholder="apellido">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="dni"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="dni">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="telefono"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="telefono">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="direccion"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="direccion">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="especialidad"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="especialidad">
                </div>
                
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Registrar Odontologo
            </button>>
        </form>
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
