<%@page import="com.sun.xml.internal.ws.util.StringUtils"%>
<%@page import="java.util.List"%>
<%@page import="Models.Product"%>
<%@page import="Product.ProductDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <!-- Font Awesome -->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">

        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
    </head>
    <body>
        <%@include file="navigation.jsp" %>

        <%
            ProductDAO proDAO = new ProductDAO();
            List<Product> productsList;
            if (request.getParameter("subcategory").length() == 0) {
                productsList = proDAO.getProducts(request.getParameter("category"));
            } else {
                productsList = proDAO.getProducts(request.getParameter("subcategory"));
            }
            out.println("<h2>");
            out.println(StringUtils.capitalize(request.getParameter("category")));
            out.println("</h2>");
            for (Product product : productsList) {
                out.println("<h2 class='h1-responsive font-weight-bold text-center my-5'>");
                out.println("</h2>");
//                out.println("<form method='post' action='cart?pid=" + product.getPid() + "&category=" + request.getParameter("category") + "'>");
                out.println("<table class='table'>");
                out.println("<tr>");
                out.println("<td>");
                out.println("<section class='my-1'>");
                out.println("<h2 class='h1-responsive font-weight-bold text-center my-2'></h2>");
                out.println("<div class='row'>");
                out.println("<div class='col-lg-4 col-xl-3'>");
                out.println("<div class='view overlay rounded z-depth-1-half mb-lg-0 mb-4'>");
                if (request.getParameter("category").equals("trousers") || request.getParameter("subcategory").equals("trousers")) {
                    out.println("<img class='img-fluid' src='https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/1.jpg' alt='Sample image'>");
                } else if (request.getParameter("category").equals("shirt") || request.getParameter("subcategory").equals("shirt")) {
                    out.println("<img class='img-fluid' src='https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg' alt='Sample image'>");
                } else if (request.getParameter("category").equals("accessories") || request.getParameter("subcategory").equals("accessories")) {
                    out.println("<img class='img-fluid' src='https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg' alt='Sample image'>");
                } else if (request.getParameter("category").equals("hoodie") || request.getParameter("subcategory").equals("hoodie")) {
                    out.println("<img class='img-fluid' src='https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg' alt='Sample image'>");
                } else if (request.getParameter("category").equals("cloth") || request.getParameter("subcategory").equals("cloth")) {
                    out.println("<img class='img-fluid' src='https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg' alt='Sample image'>");
                }
                out.println("<a><div class='mask rgba-white-slight'></div></a>");
                out.println("</div></div>");
                out.println("<div class='col-lg-7 col-xl-8'> <h3 class='font-weight-bold mb-3'><strong>");
                out.println(product.getName());
                out.println("</strong></h3>");
                out.println("<p class='dark-grey-text'></p>");
                out.println("<p><a class='font-weight-bold'>");
                out.println(product.getDescription());
                out.println("<br>");
                out.println(product.getPrice());
                out.print("</a><br>");
                out.println("<a class='btn btn-primary btn-md' href='cart?pid=");
                out.println(product.getPid());
                out.println("&category=");
                out.println(request.getParameter("category"));
                out.println("&subcategory=");
                out.println(request.getParameter("subcategory"));
                out.println("'>Add to cart");
                out.println("</a>");
                out.println("</div>");
                out.println("</div>");
                out.println("</section>");
                out.println("</td>");
                out.println("</tr>");
                out.print("</table>");
//                out.print("</form>");
            }
        %>
    </body>
</html>
