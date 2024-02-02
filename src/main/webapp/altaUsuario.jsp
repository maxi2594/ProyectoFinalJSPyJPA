

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%@include file="components/header.jsp" %>
    <%@include file="components/bodyPrimeraParte.jsp" %>

    <div class="container">
            <h1>Alta Usuarios</h1>
        <form class="user" action="SvUsuarios" method="post" >
            <div class="form-group col">
                <div class="col-sm-6 mb-3">
                    <input type="text" name="nombre"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="nombre">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="password" name="password" class="form-control form-control-user" id="exampleLastName"
                           placeholder="password">
                </div>
                <div class="col-sm-6 mb-3 ">
                    <input type="text" name="rol"class="form-control form-control-user" id="exampleFirstName"
                           placeholder="rol">
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Register Account
            </button>
        </form>
    </div>

    <%@include file="components/bodyFinal.jsp" %>
</html>
