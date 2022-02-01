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


        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">     

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">


        <script type="text/javascript" src="../js/captcha.js"></script>
        <%
            String context_path = request.getContextPath();
        %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                Captcha();
            });
        </script>
    </head>

    <body>
        <form id="BeneficiaryStatus" action="<%=context_path%>/loginslv" method="post">
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
                    <div class="col-md-7 d-flex" style="float:left;background-color: #f5c6cb;">

                        <h1 class="logo" style="border-bottom:hidden">
                            <a href="#" title="Home" rel="home" class="header__logo" id="logo" style="text-decoration: none;">
                                <img class="national_emblem" src="../img/emblem-dark.png" alt="national emblem" style="width: 60px; height: 50px;">
                                <strong lang="hi" >MB-KISSAN </strong>                               
                            </a>
                        </h1>
                    </div>
                    <div class="col-md-5 " style="background-color: #f5c6cb; float: right;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="national_emblem" src="../img/nic_image.jpg" alt="national emblem" style="width: 40%; height: 100%;">                        
                    </div>               
                </div>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12" style="border-style: groove;background-color: #008000;">

                        <a href="../index.jsp" style="color: floralwhite;"> << Home</a>

                        <!--                        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #286090;" >
                                                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation">
                                                            <span class="navbar-toggler-icon"></span>
                                                        </button>
                                                        <div class="collapse navbar-collapse" id="main_nav" style="background-color: #286090;">
                                                            <ul class="navbar-nav">
                                                                <li class="nav-item active"><a class="nav-link" style="color: #ffffff;" href="../index.jsp"> << Home </a> </li>
                                                            </ul>
                                                        </div>                                                 
                                                </nav>-->
                    </div>
                </div>
            </div>



            <br>
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-6 mx-auto">
                        <div class="container">
                            <div class="card card-body" style="border-color: #0056b3;">
                                <div class="panel">
                                    <div class="panel-heading text-center" style="background-color: #f5c6cb;">
                                        <b>Grievances Desk</b>
                                    </div>
                                    <div class="panel-body">
                                        <br>
                                        <div class="form-row">     
                                            <div class="form-group col-md-6">
                                                <div class="input-group input-group-sm">
                                                    <label class="radio-inline" style="color:#651472; font-weight: bold">
                                                        <input type="radio" id="rdo_btn_RG" name="optradio1"> Register Grievance
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <div class="input-group input-group-sm">
                                                    <label class="radio-inline" style="color:#651472; font-weight: bold">
                                                        <input type="radio" id="rdo_btn_kGS"  name="optradio1"> Know Grievance Status
                                                    </label> 
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-row">     
                                            <div class="form-group col-md-6">
                                                <div class="input-group input-group-sm">
                                                    <label class="radio-inline" style="color:#651472; font-weight: bold">
                                                        <input type="radio" id="rdo_btn_aadhar" name="optradio"> Aadhar Number
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <div class="input-group input-group-sm">
                                                    <label class="radio-inline" style="color:#651472; font-weight: bold">
                                                        <input type="radio" id="rdo_btn_mobileno"  name="optradio"> Mobile Number
                                                    </label> 
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <!--<label for="inputPassword4" style="color:#651472; font-weight: bold" id="captchaOperation">Mobile No</label>-->
                                            <div class="input-group input-group-sm">
                                                <span class="input-group-addon">
                                                </span>
                                                <input id="txtmobile" name="txtmobile" placeholder="Mobile no"  class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <!--<label for="inputPassword4" style="color:#651472; font-weight: bold">Captcha</label>-->
                                            <div class="input-group input-group-sm">
                                                <span class="input-group-addon"></i>
                                                </span>
                                                <input id="txtaadharno" name="txtaadharno" placeholder="txtaadharno"  class="form-control" required="true" value="" type="text">                               
                                            </div>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <!--<label for="inputPassword4" style="color:#651472; font-weight: bold">Captcha</label>-->
                                            <div class="input-group input-group-sm">
                                                <span class="input-group-addon"></i>
                                                </span>
                                                <input id="txtQueryid" name="txtQueryid" placeholder="txtQueryid"  class="form-control" required="true" value="" type="text">                               
                                            </div>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <div class="input-group input-group-sm">
                                                <input type="submit" name="btnSendOTP" value="Get Data" id="btnSendOTP" class="btn btn-primary">    
                                            </div>
                                        </div>







                                    </div>
                                    <div class="panel-footer panel-primary">

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
                                <div class="col-md-6"><img class="national_emblem" src="../img/digital_india.png" alt="national emblem" style="width: 150px;height:60px;margin-top: 10px;margin-bottom: 10px;"/></div>
                                <div class="col-md-6"><img class="national_emblem" src="../img/nic.png" alt="national emblem" style="width: 150px;height:60px;margin-bottom: 10px;"/></div>
                                <!--</div>-->
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </form>
    </body>
</html>

