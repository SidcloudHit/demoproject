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
        <title>New farmer Registration</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



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
        <form id="farmer_registration" action="<%=context_path%>/loginslv" method="post">
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
                                <img class="national_emblem" src="../img/emblem-dark.png" alt="national emblem" style="width: 60px; height: 50px;">
                                <strong lang="hi" >MB-KISSAN </strong>                               
                            </a>
                        </h1>
                    </div>
                    <div class="col-md-5 " style="background-color: #f5c6cb; padding-left: 320px;">
                        <img class="national_emblem" src="../img/nic_image.jpg" alt="national emblem" style="width: 60%; height: 100%;">                        
                    </div>               
                </div>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12" style="border-style: groove;background-color: #008000;">
                        <a href="../index.jsp" style="color: floralwhite;"> << Home</a>
                    </div>
                </div>
            </div>

            <br>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="container">
                            <div class="card card-body" style="border-color: #0056b3;">
                                <div class="panel-heading">
                                    <div class="panel-heading panel-primary text-center" style="background-color: #f5c6cb;">
                                        <b>New Farmer Registration Form</b>
                                    </div>
                                    <br>
                                    <div class="panel-body">
                                        <form class="form-horizontal form-group-sm" role="form" id="frmId" name="frmId" method="post" >
                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Farmer Address</div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">District <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Sub-Division <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Circle/ Tehsil Block <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" /> 
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Block <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-5">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Name of the Municipality/ Gram Panchayat/ Village <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" /> 
                                                            </div>
                                                        </div>

                                                        <div class="col-md-4 mx-auto">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Pincode <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <br>
                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Applicant details</div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Full Name of the Farmer <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Date of Birth (DD/MM/YYYY)</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Gender</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" /> 
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Marital Status</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Father’s/ Husband <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Mobile Number</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Aadhaar Number</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" /> 
                                                            </div>
                                                        </div>

                                                        <div class="col-md-4">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Aadhaar Enrolment ID (if applied)</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>

                                                    </div>


                                                </div>
                                            </div>

                                            <br>
                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Applicant details</div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">ID Proof Type <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Category (SC/ST/OBC/GEN)</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Ration Card No.</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" /> 
                                                            </div>
                                                        </div>

                                                        <div class="col-md-5">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Certificate of Competent Authority as Bargadaar Farmer
                                                                </label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                            <br>
                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Details of Family Members:</div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <table id="dtMaterialDesignExample" class="table table-striped table-responsive-md" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Name of the Family Member
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Date of Birth
                                                                    </th>
                                                                    <th class="th-sm"  style="background-color: #0c85d0;color: white;">Aadhar No.
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Relation to the applicant
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Any land holding in his/ her name
                                                                    </th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>Tiger Nixon</td>
                                                                    <td>19/11/2021</td>
                                                                    <td>1234567891123</td>
                                                                    <td>son</td>
                                                                    <td>yes</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                </div>
                                            </div>
                                            <br>

                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Details of landholding under cultivation of the Bargadaar:</div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-5 mx-auto">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Certificate of Competent Authority as Bargadaar Farmer
                                                                </label>
                                                                <input type="text" id="firstName" class="form-control form-control-lg" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>

                                                    <div class="row">
                                                        <table id="dtMaterialDesignExample"  class="table table-striped table-responsive-md" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Name of the landholding owner(Pattadar)
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Name of the Revenue Village
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">CS DAG No.
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Patta No.
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Area (in Hectare)
                                                                    </th>
                                                                    <th class="th-sm" style="background-color: #0c85d0;color: white;">Any Co-Pattadar(in case of joint holdings) indicating their shares
                                                                    </th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>Tiger Nixon</td>
                                                                    <td>19/11/2021</td>
                                                                    <td>1234567891123</td>
                                                                    <td>son</td>
                                                                    <td>yes</td>
                                                                    <td>yes</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                </div>
                                            </div>

                                            <br>
                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Bank Information</div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Name of the Bank <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Branch Name</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Name of the Account Holder</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" /> 
                                                            </div>
                                                        </div>

                                                        <div class="col-md-2">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">IFSC Code
                                                                </label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="Block">Account Number
                                                                </label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <br>
                                            <div class="card">
                                                <div class="card-header" style="background-color: #0c85d0;color: white;">Exclusion Criteria:</div>
                                                <div class="card-body">
                                                    <p style="text-align:left;border-style: ridge;background-color:#ECE9E8 ; color: #000000;"><b>A.Farmer :</b></p>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label class="form-label" for="firstName"></label>
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Holding any land/ is a landowner <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <label class="form-label" for="firstName"></label>
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Involved in other activities but not in agriculture</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div> 
                                                        <div class="col-md-3">
                                                            <label class="form-label" for="firstName"></label>
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Name of the Bank <span style="color: red"> *</span></label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <br>
                                                    <div class="row">

                                                        <div class="col-md-4">
                                                            <label class="form-label" for="firstName"></label>
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName">Branch Name</label>
                                                                <input type="text" id="firstName" class="form-control form-control-sm" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <label class="form-label" for="firstName"></label>
                                                            <div class="form-outline">
                                                                <label class="form-label" for="firstName"></label>
                                                                <!--<input type="text" id="firstName" class="form-control form-control-lg" />-->
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="card-body">
                                                    <p style="text-align:left;border-style: ridge;background-color:#ECE9E8 ; color: #000000;"><b>B. Farmer or any of its members belong to:</b></p>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">i. Former and present holders of constitutional posts</label>
                                                            <input type="text" id="f1" class="form-control form-control-sm col-md-8" />
                                                        </div>

                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">ii. Former and present Ministers / State Ministers and former/ present Members of Lok Sabha/
                                                                Raiva Sabha / State Legislative Assemblies/ State Legislative Counçils, former and present
                                                                Mayors of Municipal Corporations, former and present Chairpersons of District Panchayats</label>
                                                            <input type="text" id="f2" class="form-control form-control-sm col-md-3" />
                                                        </div>
                                                    </div>

                                                    <br>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">iii. Serving or retired officers and employees of Central / State Government Ministries/ Offices/
                                                                Departments and their field units, Central or State PSEs and attached offices/ Autonomous
                                                                Institutions under Government as well as regular employees of the Local Bodies (excluding
                                                                Multi-Tasking Staff/ Class IV/ Group D employees)</label>
                                                            <input type="text"  id="f3" class="form-control form-control-sm col-md-3" />
                                                        </div>


                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">iv. Superannuated/ retired pensioners whose monthly pension is Rs. 10,000/- or more
                                                                (excluding Multi-Tasking Staff/ Class IV/ Group D employees)</label>
                                                            <input type="text" id="f4" class="form-control form-control-sm col-md-3" />
                                                        </div>
                                                    </div>

                                                    <br>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">v. A person who paid Income Tax in last assessment year</label>
                                                            <input type="text" id="f4" class="form-control form-control-sm col-md-8" />
                                                        </div>
                                                    </div>

                                                    <br>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">vi. Professionals like Doctors, Engineers, Lawyers, Chartered Accountants, and Architects
                                                                registered with Professional bodies and carrying out profession by undertaking practices</label>
                                                            <input type="text" id="f4" class="form-control form-control-sm col-md-3" />
                                                        </div>
                                                    </div>

                                                    <br>
                                                    <div class="row">
                                                        <div class="form-outline">
                                                            <label class="form-label" for="firstName">vii.In case of new beneficiaries all landless labourer/ farmer’s families who are Non-resident
                                                                Indians (NRIs) in terms of the provisions of the Income Tax Act, 1961.</label>
                                                            <input type="text" id="f4" class="form-control form-control-sm col-md-3" />
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>




                                        </form>
                                    </div>
                                    <div class="panel-footer panel-primary">

                                    </div>
                                </div>
                            </div>
                        </div>  
                    </div>
                    <!--                    <div class="col-md-6">
                                            
                                        </div>-->

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
                                <div class="col-md-6"><img class="national_emblem" src="../img/digital_india.png" alt="national emblem" style="width: 150px;height:60px;margin-top: 10px;margin-bottom: 10px;"/></div>
                                <div class="col-md-6"><img class="national_emblem" src="../img/nic.png" alt="national emblem" style="width: 150px;height:60px;margin-bottom: 10px;"/></div>
                            </div>
                        </div>
                    </div>
                </section>
            </div> 
        </form>
    </body>
</html>

