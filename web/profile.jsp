<%@page import="User.UserDAO"%>
<%@page import="Models.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    </head>
    <body>
        <%
            String email = (String) session.getAttribute("email");
            UserDAO user = new UserDAO();
            List<User> u = user.getUser(email);
            User us = u.get(0);
            out.println(us.getFirstName());
            us.getGender();
            us.getAge();
            us.getProfilePic();
        %>

        <!-- Card -->
        <div class="card">

            <!-- Card image -->
            <div class="view overlay">
                <img class="card-img-top" src="${us.getProfilePic()}" alt="Card image cap">
                <a>
                    <div class="mask rgba-white-slight"></div>
                </a>
            </div>

            <!-- Button -->
            <a class="btn-floating btn-action ml-auto mr-4 mdb-color lighten-3"><i class="fas fa-chevron-right pl-1"></i></a>

            <!-- Card content -->
            <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><c:out value="${us.getFirstName()}"/></h4>
                <h4 class="card-title"><c:out value="${us.getEmail()}"/></h4>

                <h4 class="card-title"><c:out value="${us.getFirstName()}"/></h4>
                <h4 class="card-title"><c:out value="${us.getFirstName()}"/></h4>
                <hr>
                <!-- Text -->
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

            </div>

            <!-- Card footer -->
            <div class="rounded-bottom mdb-color lighten-3 text-center pt-3">
                <ul class="list-unstyled list-inline font-small">
                    <li class="list-inline-item pr-2 white-text"><i class="far fa-clock pr-1"></i>05/10/2015</li>
                    <li class="list-inline-item pr-2"><a href="#" class="white-text"><i class="far fa-comments pr-1"></i>12</a></li>
                    <li class="list-inline-item pr-2"><a href="#" class="white-text"><i class="fab fa-facebook-f pr-1"> </i>21</a></li>
                    <li class="list-inline-item"><a href="#" class="white-text"><i class="fab fa-twitter pr-1"> </i>5</a></li>
                </ul>
            </div>

        </div>
        <!-- Card -->
    </body>
</html>
