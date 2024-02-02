<%-- 
    Document   : altaPaciente
    Created on : 25 ene. 2024, 14:36:03
    Author     : maxi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container-fluid col-12">

        <div class="container col-6 row">
            <form class="user" action="SvPaciente" method="post" >
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
                    <div class="form-floating col-sm-12 mb-3 ">
                        <label for="fechaNac">fecha nacimiento</label>
                        <input type="date" name="fechanac"class="form-control form-control-user" id="fechaNac"
                               placeholder="nacimiento">
                    </div>

                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="id" name="tieneOS">
                        <label class="form-check-label">tiene Obra Social</label>
                    </div>
                    <hr> 
                    <label>tipo de Sangre</label>
                    <div class="form-check-inline">
                        <input class="form-check-input ml-1 " type="checkbox" id="id" name="tipoSangre" value="A">
                        <label class="form-check-label mr-3">A</label>
                        <input class="form-check-input ml-1" type="checkbox" id="id" name="tipoSangre" value="B">
                        <label class="form-check-label mr-3">B</label>
                        <input class="form-check-input ml-1" type="checkbox" id="id" name="tipoSangre" value="AB">
                        <label class="form-check-label mr-3">AB</label>
                        <input class="form-check-input ml-1" type="checkbox" id="id" name="tipoSangre" value="O">
                        <label class="form-check-label mr-3">O</label>
                    </div>

                </div>
                <hr><!-- comment -->

                <button type="submit" class="btn btn-primary btn-user btn-block">
                    Registrar Paciente
                </button>
            </form>
        </div>
        
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
