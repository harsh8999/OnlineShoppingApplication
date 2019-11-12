<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Online Shopping Application</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">

    </head>

    <body>

        <%@include file="navigation.jsp" %>

        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>


        <!--Carousel Wrapper-->
        <div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-2" data-slide-to="1"></li>
                <li data-target="#carousel-example-2" data-slide-to="2"></li>
                <li data-target="#carousel-example-2" data-slide-to="3"></li>
                <li data-target="#carousel-example-2" data-slide-to="4"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <div class="view">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(105).jpg" alt="First slide">
                        <div class="mask rgba-black-light"></div>
                    </div>
                    <div class="carousel-caption">
                        <h3 class="h3-responsive">Hats</h3>
                        <!--<p>First text</p>-->
                    </div>
                </div>
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(104).jpg" alt="Second slide">
                        <div class="mask rgba-black-light"></div>
                    </div>
                    <div class="carousel-caption">
                        <h3 class="h3-responsive">Shoes</h3>
                        <!--<p>Secondary text</p>-->
                    </div>
                </div>
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(109).jpg" alt="Third slide">
                        <div class="mask rgba-black-light"></div>
                    </div>
                    <div class="carousel-caption">
                        <h3 class="h3-responsive">Dress</h3>
                        <!--<p>Third text</p>-->
                    </div>
                </div>
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(106).jpg" alt="Third slide">
                        <div class="mask rgba-black-light"></div>
                    </div>
                    <div class="carousel-caption">
                        <h3 class="h3-responsive">Sweater</h3>
                        <!--<p>Third text</p>-->
                    </div>
                </div>
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(107).jpg" alt="Third slide">
                        <div class="mask rgba-black-light"></div>
                    </div>
                    <div class="carousel-caption">
                        <h3 class="h3-responsive">Watches</h3>
                        <!--<p>Third text</p>-->
                    </div>
                </div>

            </div>
            <!--/.Slides-->    
            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
        </div>
        <!--/.Carousel Wrapper-->


        <div class="container mt-5">


            <!--Section: Content-->
            <section class="mx-md-5 dark-grey-text text-center">

                <!-- Section heading -->
                <h3 class="font-weight-bold mb-4 pb-2">Our bestsellers</h3>
                <!-- Section description -->
                <p class="grey-text w-responsive mx-auto mb-5"></p>

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <a href="products_show.jsp?category=trousers&subcategory=">
                        <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                            <!-- Collection card -->
                            <div class="card collection-card z-depth-1-half">
                                <!-- Card image -->
                                <div class="view zoom">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/5.jpg" class="img-fluid"
                                         alt="">
                                    <div class="stripe dark">
                                        <a href="products_show.jsp?category=trousers">                                       
                                            <p>Trousers
                                                <i class="fas fa-angle-right"></i>
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card image -->
                            </div>
                            <!-- Collection card -->
                        </div>
                    </a>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <a href="products_show.jsp?category=shirt">
                        <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                            <!-- Collection card -->
                            <div class="card collection-card z-depth-1-half">
                                <!-- Card image -->
                                <div class="view zoom">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg" class="img-fluid"
                                         alt="">
                                    <div class="stripe light">
                                        <a href="products_show.jsp?category=shirt">
                                            <p>Sweatshirt
                                                <i class="fas fa-angle-right"></i>
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card image -->
                            </div>
                            <!-- Collection card -->
                        </div>
                    </a>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <a href="products_show.jsp?category=hat">
                        <div class="col-lg-3 col-md-6 mb-md-0 mb-4">
                            <!-- Collection card -->
                            <div class="card collection-card z-depth-1-half">
                                <!-- Card image -->
                                <div class="view zoom">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/9.jpg" class="img-fluid"
                                         alt="">
                                    <div class="stripe dark">
                                        <a href="products_show.jsp?category=hat">
                                            <p>hat
                                                <i class="fas fa-angle-right"></i>
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card image -->
                            </div>
                            <!-- Collection card -->
                        </div>
                    </a>

                    <!-- Grid column -->

                    <!-- Fourth column -->
                    <a href="products_show.jsp?subcategory=shirt">
                        <div class="col-lg-3 col-md-6">
                            <!-- Collection card -->
                            <div class="card collection-card z-depth-1-half">
                                <!-- Card image -->
                                <div class="view zoom">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/7.jpg" class="img-fluid"
                                         alt="">
                                    <div class="stripe light">
                                        <a href="products_show.jsp?subcategory=shirt">
                                            <p>Sweatshirt
                                                <i class="fas fa-angle-right"></i>
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card image -->
                            </div>
                            <!-- Collection card -->
                        </div>
                    </a>
                    <!-- Fourth column -->


                </div>
                <!-- Grid row -->

            </section>
            <!--Section: Content-->
            <!--
                         Products Grid 
                        <section class="section pt-4">
            
                             Grid row 
                            <div class="row">
            
                                Grid column
                                <div class="col-lg-4 col-md-12 mb-4">
            
                                    Card
                                    <div class="card card-ecommerce">
            
                                        Card image
                                        <div class="view overlay">
                                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/2.jpg" class="img-fluid" alt="">
                                            <a>
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>
                                        Card image
            
                                        Card content
                                        <div class="card-body">
                                            Category & Title
            
                                            <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">iPad</a></strong></h5><span class="badge badge-danger mb-2">bestseller</span>
            
            
                                            Card footer
                                            <div class="card-footer pb-0">
                                                <div class="row mb-0">
                                                    <span class="float-left"><strong>1439$</strong></span>
                                                    <span class="float-right">
            
                                                        <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-shopping-cart ml-3"></i></a>
                                                    </span>
                                                </div>
                                            </div>
            
                                        </div>
                                        Card content
            
                                    </div>
                                    Card
            
                                </div>
                                Grid column
            
                                Grid column
                                <div class="col-lg-4 col-md-6 mb-4">
                                    Card
                                    <div class="card card-ecommerce">
            
                                        Card image
                                        <div class="view overlay">
                                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/15.jpg" class="img-fluid" alt="">
                                            <a>
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>
                                        Card image
            
                                        Card content
                                        <div class="card-body">
                                            Category & Title
            
                                            <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">Sony T56-v</a></strong></h5><span class="badge badge-info mb-2">new</span>
            
            
                                            Card footer
                                            <div class="card-footer pb-0">
                                                <div class="row mb-0">
                                                    <span class="float-left"><strong>1439$</strong></span>
                                                    <span class="float-right">
            
                                                        <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-shopping-cart ml-3"></i></a>
                                                    </span>
                                                </div>
                                            </div>
            
                                        </div>
                                        Card content
            
                                    </div>
                                    Card
            
                                </div>
                                Grid column
                            </div>
                        </section>-->

            <br>
            <br>
            <br>
            <br>
            <br>
<!--            <section class="mx-md-5 dark-grey-text text-center">
                <div>
                    <a href="products_show.jsp?category=cloth"><button type="button" class="btn btn-outline-info btn-rounded waves-effect">Cloths</button></a>
                    <a href="products_show.jsp?category=watch"><button type="button" class="btn btn-outline-info btn-rounded waves-effect">Watch</button></a>
                    <a href="products_show.jsp?category=watch"><button type="button" class="btn btn-outline-info btn-rounded waves-effect">Electronics</button></a>
                    
                    
                </div>
            </section>-->
        </div>
    </body>
</html>
