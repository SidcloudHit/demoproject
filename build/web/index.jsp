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

<!--            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <h2 style="font-size:14px;">  PM-Kisan Helpline No. 155261 / 011-24300606</h2> 
                        </center>
                    </div>
                </div>
            </div>-->




            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <!--<li data-target="#demo" data-slide-to="2"></li>-->
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/kissan2.jpg" alt="kissan1" height="400" width="1200"/>
                    </div>
                    <div class="carousel-item">
                        <img src="img/kissan2.jpg" alt="kissan2" height="400" width="1200"/>
                    </div>
                    <!--                    <div class="carousel-item">
                                            <img src="img/kissan3.jpg" alt="kissan3" height="400" width="1200"/>
                                        </div>-->
                </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-primary" style="border-style: groove;">
                            <div class="panel-heading text-center" style="background-color: #0089ec;"><b>Statistics</b></div>
                            <div class="panel-body">

                                <div class="card" style="border-color: #ff9100;">
                                    <div class="card-body">

                                        <p class="btn btn-success" style="color: white;">Period Wise No. of Payments</p>
                                    </div>
                                </div>

                                <div class="card" style="border-color: #ff9100;">
                                    <div class="card-body"><b>April – July 2021-22  :</b> 10,83,32,713
                                    </div>
                                </div>
                                <div class="card" style="border-color: #ff9100;">
                                    <div class="card-body"><b>AUG-NOV 2021-22  :</b> 10,83,32,713
                                    </div>
                                </div>
                                <div class="card" style="border-color: #ff9100;">
                                    <div class="card-body"><b>December - March 2021-22  :</b> 10,83,32,713
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>                       

                    <div class="col-md-4">
                        <div class="panel panel-primary" style="border-style: groove;">
                            <div class="panel-heading text-center" style="background-color: #9370DB;"><b>Scheme Details</b></div>
                            <div class="panel-body">
                                <div class="card" style="border-color: #ff9100;">
                                    <div class="card-body">
                                        <h5 class="card-title">MB-KISAN Scheme</h5>
                                        <ul>
                                            <li>PM Kisan is a Central Sector scheme with 100% funding from Government of India.</li>
                                            <li>It has become operational from 1.12.2018.</li>
                                            <li>Under the scheme an income support of 6,000/- per year in three equal installments will be provided to all land holding farmer families.</li>
                                            <li>Definition of family for the scheme is husband, wife and minor children.</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="card" style="border-color: #ff9100;">
                                    <div class="card-body">
                                        <h5 class="card-title" style="background-color: #9370DB;color: white;">Usefull Link</h5>
                                        <!--<p class="card-text">Quick sample text to create the card title and make up the body of the card's content.</p>-->
                                        <a href="#" class="stretched-link">National portal of india</a><br>
                                        <a href="#" class="stretched-link">state portal of tripura</a><br>
                                        <a href="#" class="stretched-link">Agriculture & farmer walfare</a><br>
                                        <a href="#" class="stretched-link">National farmer Portal</a>                                   
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-primary" style="border-style: groove;border-color: #ff9100;">
                            <div class="panel-heading text-center" style="background-color: #ff9100;"><b> Farmers Corner Section</b></div>
                            <div class="panel-body" style="border-color: #01ff70;">

                                <div class="card">
                                    <div class="card-block">

                                        <div class="pull-left" style="padding-top: 5px;padding-left: 2px;">
                                            <a href="pages/new_farmer_registration.jsp" class="btn btn-primary"><i class="fas fa-address-card" aria-hidden="true"> New Farmer Registration </i></a>
                                        </div>
                                        <div class="pull-left" style="padding-top: 5px;padding-left: 4px;">
                                            <a href="pages/BeneficiaryStatus.jsp" class="btn btn-primary"><i class="fa fa-question-circle" aria-hidden="true"> Beneficiary Status </i></a>
                                        </div>

                                        <div class="pull-right" style="padding-top: 5px; padding-right: 2px;">
                                            <a href="pages/Beneficiaries_list.jsp" class="btn btn-primary"><i class="fa fa-list-ol" aria-hidden="true"> Beneficiary List</i></a>

                                        </div>
                                        <div class="pull-left" style="padding-top: 5px;padding-left: 3px;padding-bottom: 2px;">
                                            <a href="pages/Grievances_Desk.jsp" class="btn btn-primary"><i class="fa fa-television" aria-hidden="true"> Grievances Desk</i></a>  
                                        </div>

                                        <div class="pull-left" style="padding-top: 5px;padding-left: 3px;padding-bottom: 2px;padding-right: 3px;">
                                            <a href="#" class="btn btn-primary"><i class="fa fa-comments" aria-hidden="true"> FAQ </i></a>   
                                        </div>

                                        <div class="pull-left" style="padding-top: 5px;padding-left: 3px;padding-bottom: 3px;">
                                            <a href="pages/Updation_of_Registered_Farmer.jsp" class="btn btn-primary"><i class="fa fa-users" aria-hidden="true"> Updation of Registered Farmer</i></a> 
                                        </div>
                                    </div>
                                </div>





                            </div>
                        </div>

                        <br>

                        <div class="panel panel-primary" style="border-style: groove;border-color: #ff9100;">
                            <div class="panel-heading text-center" style="background-color: #ff9100;"><b> Image</b></div>
                            <div class="panel-body" style="border-color: #01ff70;">

                                <div class="card">
                                    <div class="card-block">
                                        <img src="img/farmer2.jpg" class="img-circle" alt="Cinque Terre" width="420" height="270">
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>

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

