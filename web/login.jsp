<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    </head>
    <body>

        <div class="container">
            <br> <h1> <p class="text-center">Online Shopping Application</p></h1>
            <hr>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <header class="card-header">
                            <!--<a href="" class="float-right btn btn-outline-primary mt-1">Log in</a>-->
                            <h3 class="card-title mt-2">Login</h3>
                        </header>
                        <article class="card-body">
                            <form action="Login" method="post">
                                <div class="form-group">
                                    <label>Email address</label>
                                    <input type="email" class="form-control" placeholder="yourmail@example.com" name="email">

                                </div> <!-- form-group end.// -->

                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="form-control" type="password" placeholder="Password" name="password">
                                </div> <!-- form-group end.// -->  
                                <!--                    <label>
                                                        <input name="remember" type="checkbox" value="Remember Me"> Remember Me
                                                    </label>-->
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-block"> Login  </button>
                                </div> <!-- form-group// -->      

                            </form>
                        </article>
                        <div class="border-top card-body text-center">Don't Have an account <a href="signup.jsp">Sign Up</a></div>
                    </div> <!-- card.// -->
                </div> <!-- col.//-->

            </div> <!-- row.//-->


        </div> 
        <!--container end.//-->

        <br><br>


    </body>
</html>


