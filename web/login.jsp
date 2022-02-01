<%-- 
    Document   : login
    Created on : Jul 4, 2020, 12:30:04 PM
    Author     : Administrator
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="js/captcha.js"></script>
        <%
            String context_path = request.getContextPath();
        %>
        <script type="text/javascript">
            $(document).ready(function () {
                Captcha();
            });
            document.addEventListener("DOMContentLoaded", function () {
// make it as accordion for smaller screens
                if (window.innerWidth < 992) {

                    // close all inner dropdowns when parent is closed
                    document.querySelectorAll('.navbar .dropdown').forEach(function (everydropdown) {
                        everydropdown.addEventListener('hidden.bs.dropdown', function () {
                            // after dropdown is hidden, then find all submenus
                            this.querySelectorAll('.submenu').forEach(function (everysubmenu) {
                                // hide every submenu as well
                                everysubmenu.style.display = 'none';
                            });
                        })
                    });
                    document.querySelectorAll('.dropdown-menu a').forEach(function (element) {
                        element.addEventListener('click', function (e) {
                            let nextEl = this.nextElementSibling;
                            if (nextEl && nextEl.classList.contains('submenu')) {
                                // prevent opening link if link needs to open dropdown
                                e.preventDefault();
                                if (nextEl.style.display == 'block') {
                                    nextEl.style.display = 'none';
                                } else {
                                    nextEl.style.display = 'block';
                                }

                            }
                        });
                    })
                }
// end if innerWidth
            });
// DOMContentLoaded  end


        </script>

        <style>
            /* ============ desktop view ============ */
            @media all and (min-width: 992px) {
                .dropdown-menu li{ position: relative; 	}
                .nav-item .submenu{ 
                    display: none;
                    position: absolute;
                    left:100%; top:-7px;
                }
                .nav-item .submenu-left{ 
                    right:100%; left:auto;
                }
                .dropdown-menu > li:hover{ background-color: #f5c6cb }
                .dropdown-menu > li:hover > .submenu{ display: block; }
            }	
            /* ============ desktop view .end// ============ */

            /* ============ small devices ============ */
            @media (max-width: 991px) {
                .dropdown-menu .dropdown-menu{
                    margin-left:0.7rem; margin-right:0.7rem; margin-bottom: .5rem;
                }
            }

            .dropdown-menu > li > a:hover {
                background-image: none;
                background-color: green;
            }

            .panel-footer {
                padding: 10px 15px;
                background-color: #f5c9c5;
                border-top: 1px solid #ddd;
                border-bottom-right-radius: 3px;
                border-bottom-left-radius: 3px;
            }

            /* ============ small devices .end// ============ */
        </style>

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

    <body>
        <form id="login" action="<%=context_path%>/loginslv" method="post">
            <div style="background-color: #0056b3;" class="container-fluid">
                <div class="row">
                    <div class="col-md-6 d-flex" style="text-align: left;">
                        <div style="border-right: 1px solid white;">
                            <span>
                                <a style="color: white;font-size: 12px;text-decoration: none;" target="_blank" href="#" class="FontOnly" title="भारत सरकार">भारत सरकार</a>
                            </span><br>
                            <span style="padding-right: 5px;">
                                <a style="color: white;font-size: 12px;text-decoration: none;"  target="_blank" href="#" class="FontOnly" title="govt_of_india">GOVERNMENT OF INDIA</a>
                            </span>
                        </div>
                        <div>
                            <span style="padding-left:8px;">
                                <a style="color: white;font-size: 12px;text-decoration: none" target="_blank" href="#" title="कृषि एवं किसान कल्याण मंत्रालय">कृषि एवं किसान कल्याण मंत्रालय </a>  
                            </span><br>
                            <span style="padding-left:8px;">
                                <a style="color: white;font-size: 12px;text-decoration: none" target="_blank" href="#" title="MINISTRY OF AGRICULTURE">MINISTRY OF AGRICULTURE</a>  
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6" style="text-align: right;">
                        <div class="topbgmenu" style="vertical-align:middle;">
                            <ul style="list-style-type: none;">
                                <li style="vertical-align:middle; padding:5px;">
                                    <a href="#" target="_top" style="color:white; font-family:Verdana; font-size:small;text-decoration: none" class="li_eng responsive_minis_eng displayFont">Screen Reader Access | </a>
                                    <a href="#" target="_top" style="color:white; font-family:Verdana; font-size:small;text-decoration: none" class="li_eng responsive_minis_eng displayFont">Skip to main content</a>
                                    |
                                    <a style="color:white; font-family:Verdana; font-size:small" class="li_eng responsive_minis_eng displayFont"> Select Language </a>
                                    <select name="ddlLanguage" class="dropdown"  id="ddlLanguage" style="color:Black;">
                                        <option selected="selected" value="1">English</option>
                                        <option value="2">Hindi</option>
                                        <option value="3">Bangali</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>               
                </div>
            </div>


            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7 d-flex" style="text-align: left;background-color: #f5c6cb;">

                        <h1 class="logo" style="border-bottom:hidden">
                            <a href="#" title="Home" rel="home" class="header__logo" id="logo" style="text-decoration: none;">
                                <img class="national_emblem" src="img/emblem-dark.png" alt="national emblem" style="width: 60px; height: 50px;">
                                <strong lang="hi" >MB-KISSAN </strong>                               
                            </a>
                        </h1>





                    </div>
                    <div class="col-md-5" style="background-color: #f5c6cb;">


                        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #f5c6cb;">
                            <div class="container-fluid" style="background-color: #f5c6cb;">
                                <!--                                <a class="navbar-brand" href="#">Brand</a>-->
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="main_nav" style="background-color: #f5c6cb;">
                                    <ul class="navbar-nav">
                                        <li class="nav-item active"><a class="nav-link" style="color: #000000;" href="index.jsp">Home </a> </li>

                                        <li class="nav-item dropdown" id="myDropdown">
                                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" style="color: #000000;">About Us ...</a>
                                            <ul class="dropdown-menu">
                                                <li> <a class="dropdown-item" href="#"> Dropdown item 1 </a></li>
                                                <li> <a class="dropdown-item" href="#"> Dropdown item 2 &raquo; </a>
                                                    <ul class="submenu dropdown-menu">
                                                        <li><a class="dropdown-item" href="#">Submenu item 1</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 2</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 3 &raquo; </a>
                                                            <ul class="submenu dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Multi level 1</a></li>
                                                                <li><a class="dropdown-item" href="#">Multi level 2</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 4</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 5</a></li>
                                                    </ul>
                                                </li>
                                                <li><a class="dropdown-item" href="#"> Dropdown item 3 </a></li>
                                                <li><a class="dropdown-item" href="#"> Dropdown item 4 </a></li>
                                            </ul>
                                        </li>

                                        <li class="nav-item dropdown" id="myDropdown2">
                                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" style="color: #000000;">Guidelines</a>
                                            <ul class="dropdown-menu">
                                                <li> <a class="dropdown-item" href="#"> Dropdown item 1 </a></li>
                                                <li> <a class="dropdown-item" href="#"> Dropdown item 2 &raquo; </a>
                                                    <ul class="submenu dropdown-menu">
                                                        <li><a class="dropdown-item" href="#">Submenu item 1</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 2</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 3</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 4</a></li>
                                                        <li><a class="dropdown-item" href="#">Submenu item 5</a></li>
                                                    </ul>
                                                </li>
                                                <li><a class="dropdown-item" href="#"> Dropdown item 3 </a></li>
                                                <li><a class="dropdown-item" href="#"> Dropdown item 4 </a></li>
                                            </ul>
                                        </li>

                                        <li class="nav-item active"><a class="nav-link" href="login.jsp" style="color: #000000;">Login </a> </li>
                                        <li class="nav-item"><a class="nav-link" href="#" style="color: #000000;"> CSC Login </a></li>
                                    </ul>
                                </div>
                                <!-- navbar-collapse.// -->
                            </div>
                            <!-- container-fluid.// -->
                        </nav>
                    </div>               
                </div>
            </div>




            <br>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 mx-auto">  
                        <div class="card card-body">
                            <div class="panel panel-default">
                                <div class="panel-heading text-center" style="background-color: activecaption;">
                                    <div>
                                        <img src="img/gardening.jpg"  class="brand_logo" alt="Logo" style="height: 50px; border-radius: 100%; width: 100px;">
                                    </div>
                                </div>
                                <div class="panel-body">
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
                                            <div class="col-md-3">
                                                <input type="text" readonly="true" class="form-control" id="mainCaptcha" style="text-decoration: line-through; border-radius: 4px;" name="txt_captcha" placeholder=""/>
                                            </div>
                                            <div class="col-md-2">
                                                <a href="#" class="btn btn-info" onclick="Captcha();">
                                                    <i class="fa fa-refresh" aria-hidden="true"></i> 
                                                </a>
                                            </div>
                                            <div class="col-sm-7">
                                                <input type="text" class="form-control" style="width: 50%; border-radius: 4px;" id="txt_captcha_result" name="txt_captcha_result" placeholder=""/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group text-center">
                                        <input type="submit" id="btn_login" class="btn btn-info" onclick="return ValidCaptcha();login();" name="Login" value="Login" />
                                        <button type="button" class="btn btn-info" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">Close &times;</span>
                                        </button>
                                    </div>

                                </div>
                                <div class="panel-footer panel-primary" style="text-align: right;">
                                    <a href="#" link-primary>Forgot Password</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!--</div>-->

        <br></br>
        <!-- Footer --> 

        <div class="footer bg-dark">
            <section class="footer_bottom_1">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-3">
                            <a href="Disclaimer.aspx" target="_blank" style="color:white;font-size: medium;"><u>Disclaimer</u></a>
                        </div>

                        <div class="col-md-6" style="text-align: center; font-size: 11px; font-style: normal;">
                            <a style="color:white">Designed, developed and hosted by </a>
                            <p class="displayFont">
                                <a href="https://www.nic.in" target="blank" style="color:white;  font-size:medium"><b><u>National Informatics Centre</u></b></a>
                            </p>
                            <a style="color:white">Contents of this website is published and managed by</a>
                            <br>
                            <a style="color:white">Department of Agriculture &amp; Farmers' Welfare, Government Of India.</a>
                        </div>


                        <div class="col-md-3">
                            <!--<div class="row">-->
                            <div class="col-md-6"><img class="national_emblem" src="img/digital_india.png" alt="national emblem" style="width: 150px;height:60px;margin-top: 10px;margin-bottom: 10px;"/></div>
                            <div class="col-md-6"><img class="national_emblem" src="img/nic.png" alt="national emblem" style="width: 150px;height:60px;margin-bottom: 10px;"/></div>
                            <!--</div>-->
                        </div>
                    </div>
                </div>
            </section>

        </div>

        <!--            <footer id="sticky-footer" class="py-4 text-white-50" style="background-color: #036fab;padding: 1%;">
                        <div class="container text-center">
                            <b style="color:  #ffffff; font-size: small;">Designed, developed and hosted by NIC <br> Contents of this Website is published and managed by Department of Agriculture & Farmers' Welfare, Government of Tripura. </b>
                        </div>
                    </footer>-->
    </form>
</body>
</html>

