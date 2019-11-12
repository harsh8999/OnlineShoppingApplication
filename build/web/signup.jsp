<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>

            <title>  Web page development for amazon.com registration form  </title>
            <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <!------ Include the above in your HEAD tag ---------->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


            <style>
                .imagePreview {
                    width: 100%;
                    height: 180px;
                    background-position: center center;
                    background:url(http://cliquecities.com/assets/no-image-e3699ae23f866f6cbdf8ba2443ee5c4e.jpg);
                    background-color:#fff;
                    background-size: cover;
                    background-repeat:no-repeat;
                    display: inline-block;
                    box-shadow:0px -3px 6px 2px rgba(0,0,0,0.2);
                }
                .btn-primary
                {
                    display:block;
                    border-radius:0px;
                    box-shadow:0px 4px 6px 2px rgba(0,0,0,0.2);
                    margin-top:-5px;
                }
                .imgUp
                {
                    margin-bottom:15px;
                }
                .del
                {
                    position:absolute;
                    top:0px;
                    right:15px;
                    width:30px;
                    height:30px;
                    text-align:center;
                    line-height:30px;
                    background-color:rgba(255,255,255,0.6);
                    cursor:pointer;
                }
                .imgAdd
                {
                    width:30px;
                    height:30px;
                    border-radius:50%;
                    background-color:#4bd7ef;
                    color:#fff;
                    box-shadow:0px 0px 2px 1px rgba(0,0,0,0.2);
                    text-align:center;
                    line-height:30px;
                    margin-top:0px;
                    cursor:pointer;
                    font-size:15px;
                }
            </style>

            <script>
  //                $(".imgAdd").click(function () {
  //                    $(this).closest(".row").find('.imgAdd').before('<div class="col-sm-2 imgUp"><div class="imagePreview"></div><label class="btn btn-primary">Upload<input type="file" class="uploadFile img" value="Upload Photo" style="width:0px;height:0px;overflow:hidden;"></label><i class="fa fa-times del"></i></div>');
  //                });
  //                $(document).on("click", "i.del", function () {
  //                    $(this).parent().remove();
  //                });
  //                $(function () {
  //                    $(document).on("change", ".uploadFile", function ()
  //                    {
  //                        var uploadFile = $(this);
  //                        var files = !!this.files ? this.files : [];
  //                        if (!files.length || !window.FileReader)
  //                            return; // no file selected, or no FileReader support
  //
  //                        if (/^image/.test(files[0].type)) { // only image file
  //                            var reader = new FileReader(); // instance of the FileReader
  //                            reader.readAsDataURL(files[0]); // read the local file
  //
  //                            reader.onloadend = function () { // set image data as background of div
  //                                //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
  //                                uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
  //                            }
  //                        }
  //
  //                    });
  //                });
            </script>

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
                                <h3 class="card-title mt-2">Sign up</h3>
                            </header>
                            <article class="card-body">
                                <form action="User_servlet" method="post" >
<!--                                    <div class="col-sm-5 imgUp">
                                        <label>Profile Photo</label>
                                        <div class="imagePreview"></div>
                                        <label class="btn btn-primary">
                                            Upload<input type="file" class="uploadFile img" name="file" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
                                        </label>
                                    </div> -->
                                    <br>
                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label>First name </label>   
                                            <input type="text" class="form-control" placeholder="First Name" name="firstName">
                                        </div><!-- form-group end.// -->
                                        <div class="col form-group">
                                            <label>Last name</label>
                                            <input type="text" class="form-control" placeholder="Last Name" name="lastName">
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row end.// -->
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <input type="email" class="form-control" placeholder="yourmail@example.com" name="email">
                                        <!--<small class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                    </div> <!-- form-group end.// -->
                                    <div class="form-group">
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="gender" value="male">
                                            <span class="form-check-label"> Male </span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="gender" value="female">
                                            <span class="form-check-label"> Female</span>
                                        </label>

                                    </div> <!-- form-group end.// -->
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Age</label>
                                            <input type="number" name="age" class="form-control">
                                        </div> <!-- form-group end.// -->
                                        <div class="form-group col-md-6">
                                            <label>Phone Number</label>
                                            <input type="number" maxlength="10"   name="phoneNumber" class="form-control">
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row.// -->

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>City</label>
                                            <input type="text" name="city" class="form-control">
                                        </div> <!-- form-group end.// -->
                                        <div class="form-group col-md-6">
                                            <label>State</label>
                                            <input type="text" name="state" class="form-control">
                                        </div>
                                    </div> <!-- form-row.// -->

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Country</label>
                                            <select id="inputState" class="form-control" name="country">
                                                <option> Choose...</option>
                                                <option selected>India</option>
                                            </select>
                                        </div> <!-- form-group end.// -->
                                        <div class="form-group col-md-6">
                                            <label>Pincode</label>
                                            <input type="text" name="pincode" class="form-control">
                                        </div>
                                    </div> <!-- form-row.// -->

                                    <div class="form-group">
                                        <label>Password</label>
                                        <input class="form-control" type="password" name="password">
                                    </div> <!-- form-group end.// -->  
                                    <div class="form-group">
                                        <label>Conform password</label>
                                        <input class="form-control" type="password" name="conformPassword">
                                    </div> <!-- form-group end.// -->  
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block"> Register  </button>
                                    </div> <!-- form-group// -->      
                                    <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>                                          
                                </form>
                            </article> <!-- card-body end .// -->
                            <div class="border-top card-body text-center">Have an account? <a href="login.jsp">Log In</a></div>
                        </div> <!-- card.// -->
                    </div> <!-- col.//-->

                </div> <!-- row.//-->


            </div> 
            <!--container end.//-->

            <br><br>

        </body>
    </html>
</f:view>