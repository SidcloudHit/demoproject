<%-- 
    Document   : newjsp
    Created on : Jun 30, 2020, 2:11:29 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>e-municipality | Starter</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="js/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="js/AdminLTE.min.css">
        <link rel="stylesheet" href="js/skin-blue.min.css">
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!-- Main Header -->
            <%@ include file="coommon/header.jsp"%>
            
            <!--end of header-->
            <!-- Left side column. contains the logo and sidebar -->
            <!-- Content Wrapper. Contains page content -->
            
            <!-- start of sidebar -->
            
            <%@ include file="coommon/sidebar.jsp"%>
            
            <!-- End of Sidebar -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                </section>
                <!-- Main content -->
                <section class="content container-fluid">
                    <!--################################ BASIC INFORMATION PANEL ########################################-->
                    <section class="content">                      
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-group">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <strong>Basic Information</strong>
                                        </div>                                      
                                        <div class="panel-body">
                                            <form class="form-horizontal form-group-sm" role="form" id="frmId" name="frmName" method="post"  >
                                                <div class="form-group">
                                                    <label for="ddlMuType" class="col-md-3 control-label">Head of Family :<span style="color:red">*</span></label>
                                                    <div class="col-md-3">
                                                        <input type="text" class="form-control" id="head_of_family">
                                                        <span id="errMutationType"></span>
                                                    </div>
                                                    <label for="lbl_district" class="col-md-3 control-label">District :</label>
                                                    <div class="col-md-3">
                                                        <select class="form-control input-sm" id="ddldistrict" name="ddldistrict">
                                                            <option value="0">Select</option>
                                                            <option value="1">West Tripura</option>
                                                            <option value="2">North Tripura</option>
                                                            <option value="3">Dhalai</option>
                                                            <option value="4">South Tripura</option>
                                                            <option value="5">Unokati</option>
                                                            <option value="6">Sipahijala</option>
                                                            <option value="7">Khowai</option>
                                                            <option value="8">Gomati</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <!--<div class="bg-gray">-->
                                                <div class="form-group">
                                                    <label for="lblblock" class="col-md-3  control-label">Block :</label>
                                                    <div class="col-md-3">
                                                        <select class="form-control input-sm" id="ddldistrict" name="ddldistrict">
                                                            <option value="0">Select</option>
                                                            <option value="I">I</option>
                                                            <option value="II">II</option>
                                                            <option value="III">III</option>
                                                            <option value="IV">IV</option>
                                                            <option value="5">GP</option>
                                                        </select>                                                        
                                                    </div>
                                                    <label for="ddladdress_location" class="col-md-3  control-label">Address/Location :</label>
                                                    <div class="col-md-3">
                                                        <textarea id="form10" class="md-textarea form-control" rows="2" cols="2"></textarea>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group">                                                              

                                                    <label for="gram_panchayat" class="col-md-3 control-label">Gram Panchayat / village Council :</label>
                                                    <div class="col-md-3">
                                                        <select class="form-control input-sm" id="ddlBookNo" name="ddlgrampanchayat">
                                                            <option value="0">Select</option>
                                                            <option value="I">I</option>
                                                            <option value="II">II</option>
                                                            <option value="III">III</option>
                                                            <option value="IV">IV</option>
                                                            <option value="5">GP</option>
                                                        </select>

                                                        <span id="errddlgrampanchayat"></span>
                                                    </div>

                                                    <label for="lbl_activity" class="col-md-3  control-label">Existing Main Economic Activities :</label>
                                                    <div class="col-md-3" id="textboxes" >
                                                        <input type="text" class="form-control" id="txt_economic_activity" name="txt_economic_activity" placeholder=""/>
                                                        <span id="economicNo"></span>
                                                    </div>
                                                </div>



                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">Available land other than homestead :</div>
                                                    <div class="panel-body">
                                                        <div class="form-group">                                                              
                                                            <label for="lbl_available_land" class="col-md-2  control-label">Tilla(Kani) :</label>
                                                            <div class="col-md-2">
                                                                <input type="text" class="form-control" id="txt_tilla_kani" name="txt_tilla_kani" placeholder=""/>
                                                            </div>
                                                            <label for="lbl_activity" class="col-md-2  control-label">Nal/Lunga (Kani) :</label>
                                                            <div class="col-md-2" id="textboxes" >
                                                                <input type="text" class="form-control" id="txt_nal_lunga_kani" name="txt_nal_lunga_kani" placeholder=""/>
                                                                <span id="economicNo"></span>
                                                            </div>
                                                            <label for="lbl_activity" class="col-md-2  control-label">Pukur(Kani) :</label>
                                                            <div class="col-md-2" id="textboxes" >
                                                                <input type="text" class="form-control" id="txt_pukur_kani" name="txt_pukur_kani" placeholder=""/>
                                                                <span id="economicNo"></span>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                    <div class="col-md-6">
                                                         <button type="button" class="btn btn-success" id="btn_success">Save</button>
                                                    </div>
                                                   
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-5 col-md-offset-7">
                                                        All fields with an asterisk(<span style="color:red; font-size: medium; font-weight: bold;"> * </span>) mark are mandatory.  
                                                    </div>
                                                </div>
                                            </form><!--end of frmId-->
                                        </div><!--end of panel-body-->
                                    </div><!--end of primary-panel-->
                                </div><!--EOF panel-group-->           
                            </div><!--/.col-md-12-->
                        </div><!--/.row-->                        
                    </section><!-- /.content -->





                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <!-- Main Footer -->
            <%@ include file="coommon/footer.jsp"%>

            <!-- Add the sidebar's background. This div must be placed
             immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/adminlte.min.js"></script>
    </body>
</html>