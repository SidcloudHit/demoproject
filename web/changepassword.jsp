<%-- 
    Document   : changepassword
    Created on : 22 Sep, 2020, 10:50:14 AM
    Author     : Tanmoy
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <script type="text/javascript" src="js/captcha.js"></script>
        <%
            String context_path = request.getContextPath();
        %>
        <script type="text/javascript">
            $(document).ready(function () {
                Captcha();
            });
        </script>
        <script>
            function login() {
                 
                var username = $('#username').val();
                var password = $('#password').val();
                // alert(username);
//                $.ajax({
//                    type: 'POST',
//                    url: "<%=context_path%>/loginslv",
//                    data: {
//                        username: username,
//                        password: password
//                    },
//                    success: function (data) {   // success callback function
//                       alert(data);
//                    }
//                });
                document.getElementById("login").submit();
            }
        </script>
    </head>

    <body onload="Captcha();">
        <form id="login" action="<%=context_path%>/loginslv" method="post">
            <div class="top">
                <div align="center" style="color: white; font-size: 25px; background: #337AB7; padding-top: 1%;">                   
                    <div align="center" style="vertical-align: middle; text-align: center;line-height: 50px;"><strong>Self reliant Family Self Reliant State</strong> </div>                  
                </div>
                <div class="text-center">
                    <div align="right" style="background: #337AB7;padding-bottom: 1em;">
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalRegisterForm">Login</button>&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/credit/Self-Reliance-cycle3.jpg" alt="Self-Reliance-cycle3" height="370" width="400"/>
                    </div>
                    <div class="carousel-item">
                        <img src="img/credit/Self-Reliance-cycle3.jpg" alt="Self-Reliance-cycle3" height="370" width="400"/>
                    </div>
                    <div class="carousel-item">
                        <img src="img/credit/Self-Reliance-cycle3.jpg" alt="Self-Reliance-cycle3" height="370" width="400"/>
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
            <div class="container">
                <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content" style="border-top-right-radius: 1em; border-top-left-radius: 1em;">
                            <div class="modal-header text-center" style="background: #337AB7; border-top-right-radius: 1em; border-top-left-radius: 1em;">
                                <h4 class="modal-title w-100 font-weight-bold">
                                    <img src="img/gardening.jpg"  class="brand_logo" alt="Logo" style="height: 50px; border-radius: 50%; width: 50px;">                                           
                                    Login</h4>                            
                            </div>
                            <div class="modal-body">
                                <div class="form-group-sm">
                                    <div class="md-form">
                                        <label data-error="wrong" data-success="right" for="orangeForm-name"><b>Username :</b></label>
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            <input type="text" id="username" name="username" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group-sm">
                                    <div class="md-form">
                                        <label data-error="wrong" data-success="right" for="orangeForm-pass"><b>password :</b></label>
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                            <input type="password" id="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="lbl_txt_captcha" class="control-label"><b>Captcha:</b></label>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <input type="text" class="form-control" id="mainCaptcha" style="text-decoration: line-through; border-radius: 4px;" name="txt_captcha" placeholder=""/>
                                        </div>
                                        <div class="col-md-2">
                                            <a href="#" class="btn btn-info" onclick="Captcha();">
                                                <i class="fa fa-refresh" aria-hidden="true"></i> 
                                            </a>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" style="width: 70px; border-radius: 4px;" id="txt_captcha_result" name="txt_captcha_result" placeholder=""/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer d-flex justify-content-center" style="background: #337AB7; border-top-right-radius: 1em; border-top-left-radius: 1em;">
                                <input type="submit" id="btn_login" class="btn btn-info" onclick="return ValidCaptcha();login();" name="Login" value="Login" />
                                <button type="button" class="btn btn-info" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">Close &times;</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <br></br>
            <!-- Footer -->    

            <footer id="sticky-footer" class="py-4 text-white-50" style="background-color: #036fab;padding: 1%;">
                <div class="container text-center">
                    <b style="color:  #ffffff;">Powered By: National Informatic Centre, Tripura State Centre</b>
                </div>
            </footer>
        </form>
    </body>
</html>


