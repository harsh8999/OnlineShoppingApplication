<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
            $(".imgAdd").click(function () {
                $(this).closest(".row").find('.imgAdd').before('<div class="col-sm-2 imgUp"><div class="imagePreview"></div><label class="btn btn-primary">Upload<input type="file" class="uploadFile img" value="Upload Photo" style="width:0px;height:0px;overflow:hidden;"></label><i class="fa fa-times del"></i></div>');
            });
            $(document).on("click", "i.del", function () {
                $(this).parent().remove();
            });
            $(function () {
                $(document).on("change", ".uploadFile", function ()
                {
                    var uploadFile = $(this);
                    var files = !!this.files ? this.files : [];
                    if (!files.length || !window.FileReader)
                        return; // no file selected, or no FileReader support

                    if (/^image/.test(files[0].type)) { // only image file
                        var reader = new FileReader(); // instance of the FileReader
                        reader.readAsDataURL(files[0]); // read the local file

                        reader.onloadend = function () { // set image data as background of div
                            //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                            uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
                        }
                    }

                });
            });
        </script>
    </head>
    <body>
        <%@include file="navigation.jsp" %>
        <div class="container">
            <br> <h1> <p class="text-center">Online Shopping Application</p></h1>
            <hr>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <header class="card-header">

                            <h3 class="card-title mt-2">Add Products</h3>
                        </header>
                        <article class="card-body">


                            <form action="Product_add_servlet" method="post">
                                <div class="form-row">
                                    <div class="col form-group">
                                        <label>Name </label>   
                                        <input type="text" class="form-control" placeholder="Product Name" name="productName">
                                    </div><!-- form-group end.// -->

                                </div> <!-- form-row end.// -->
                                <div class="form-group">
                                    <label>Description</label>

                                    <textarea  class="form-control" placeholder="Short description" name="description"></textarea>
                                </div> <!-- form-group end.// -->

                                <div class="form-row">
                                    <div class="col form-group">
                                        <label>Category</label>
                                        <input type="text" name="category" class="form-control">
                                    </div> <!-- form-group end.// -->

                                </div> <!-- form-row.// -->

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Price</label>
                                        <input type="number" name="price" class="form-control">
                                    </div> <!-- form-group end.// -->
                                    <div class="form-group col-md-6">
                                        <label>Stock</label>
                                        <input type="number" name="stock" class="form-control">
                                    </div>
                                </div> <!-- form-row.// -->



<!--                                <div class="col-sm-5 imgUp">
                                    <label>Product Image</label>
                                    <div class="imagePreview"></div>
                                    <label class="btn btn-primary">
                                        Upload<input type="file" class="uploadFile img" name="imagePath" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
                                    </label>
                                </div> col-2 
                                <br>-->



                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-block">Add Product</button>
                                </div>
                            </form>

                    </div> <!-- col.//-->

                </div> <!-- row.//-->


            </div> 
            <!--container end.//-->

            <br><br>

            <!-- SCRIPTS -->
            <!-- JQuery -->
            <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
            <!-- Bootstrap tooltips -->
            <script type="text/javascript" src="js/popper.min.js"></script>
            <!-- Bootstrap core JavaScript -->
            <script type="text/javascript" src="js/bootstrap.min.js"></script>
            <!-- MDB core JavaScript -->
            <script type="text/javascript" src="js/mdb.min.js"></script>
    </body>
</html>
