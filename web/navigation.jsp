
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Navbar--> 
        <nav class="mb-1 navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.jsp">Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
                    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
    <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
            <ui  class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="products_show.jsp?category=cloth&subcategory=">Cloths</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="products_show.jsp?category=electronic&subcategory=">Electronics</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="products_show.jsp?category=watch&subcategory">Watches</a>
            </li>
            </ui>
            

                <ul class="navbar-nav ml-auto nav-flex-icons">

                    <li class="nav-item">
                        <a class="nav-link waves-effect" href="checkout.jsp">
                            <i class="fas fa-shopping-cart"></i>
                            <span class="clearfix d-none d-sm-inline-block"> Cart </span>
                        </a>
                    </li>


                    <c:choose>
                        <c:when test = "${sessionScope.email != null}">

                            <li class="nav-item dropdown ml-3">
                                <a class="nav-link dropdown-toggle waves-effect waves-light dark-grey-text font-weight-bold" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false"><i class="fas fa-user blue-text"></i> Profile </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="navbarDropdownMenuLink-4">
                                    <a class="dropdown-item waves-effect waves-light" href="profile.jsp">My account</a>
                                    <a class="dropdown-item waves-effect waves-light" href="Logout">Log out</a>
                                </div>
                            </li>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">

                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signup.jsp">Sign Up</a>
                            </li>

                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </nav>


        <!--Navigation-->
        <!--
                 Navbar 
                <nav class="navbar fixed-top navbar-expand-lg  navbar-light scrolling-navbar white">
                    <div class="container">
                         SideNav slide-out button 
                                        <div class="float-left mr-2">
                                            <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars"></i></a>
                                        </div>
                        <a class="navbar-brand font-weight-bold" href="index.jsp"><strong>SHOP</strong></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                            <ul class="navbar-nav ml-auto">
                                
                                        <li class="nav-item dropdown ml-3">
                                            <a class="nav-link dropdown-toggle waves-effect waves-light dark-grey-text font-weight-bold" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
                                               aria-haspopup="true" aria-expanded="false"><i class="fas fa-user blue-text"></i> Profile </a>
                                            <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="navbarDropdownMenuLink-4">
                                                <a class="dropdown-item waves-effect waves-light" href="profile.jsp">My account</a>
                                                <a class="dropdown-item waves-effect waves-light" href="Logout">Log out</a>
                                            </div>
                                        </li>
                                    
                                        <li class="nav-item">
                                            <a class="nav-link" href="login.jsp">Login</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="signup.jsp">Sign Up</a>
                                        </li>
                                    
                            </ul>
                        </div>
                    </div>
                </nav>
                 /.Navbar -->

        <!--</header>-->  
        <!-- /.Navigation -->
    </body>
</html>
