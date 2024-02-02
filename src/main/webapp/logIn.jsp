<%-- 
    Document   : logIn
    Created on : 22 ene. 2024, 16:49:22
    Author     : maxi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp" %>
    <body>
        <div class=" justify-content-center" style="background-image: url('https://www.odontologia33.com/upload/20210601100201GettyImages-8102068802.jpg'); background-size: cover">
            <div class=" o-hidden border-0 shadow-lg my-5 " >

                <!-- Nested Row within Card Body -->
                <div class="container-fluid col-lg-6" style="height: 100%">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Log In</h1>
                        </div>
                        <form class="user" action="SvLogin" method="post">
                            <div class="form-group">
                                <input type="text" name="user" class="form-control form-control-user"
                                       id="user" aria-describedby="emailHelp"
                                       placeholder="Enter user name">
                            </div>
                            <div class="form-group">
                                <input type="password" name="contrasenia"class="form-control form-control-user"
                                       id="contrasenia" placeholder="Password">
                            </div>

                            <%
                                if (request.getAttribute("ErrorMessage") != null) {
                            %>         
                            <div class="alert alert-warning">
                                <%=(String) request.getAttribute("ErrorMessage")%>
                            </div>   
                            <%
                                }
                            %>

                            <hr>
                            <button class="btn  btn-user btn-block btn-primary" type="submit">Log In</button>   
                        </form>
                        <hr>

                    </div>
                </div>  
            </div>
        </div>



    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
