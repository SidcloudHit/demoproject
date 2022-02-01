<%-- 
    Document   : admindashboard
    Created on : 28 Sep, 2020, 2:00:17 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SRFSRS</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="DashboardStyle.css">

        <link rel="stylesheet" href="../../js/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../../js/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../js/AdminLTE.min.css">
        <link rel="stylesheet" href="../../js/skin-blue.min.css">

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">  
        <%
            String context_path_ = request.getContextPath();
        %>
        <style>
            table.dataTable thead {background-color:green}
            
        </style>
    </head> 
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!-- Main Header -->
            <%@ include file="../../coommon/header.jsp"%>            
            <!--end of header-->           
            <!-- start of sidebar -->
            <%@ include file="../../coommon/sidebar.jsp"%>           
            <!-- End of Sidebar -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                </section>
                <!-- Main content -->
                <section class="content container-fluid">


                    <Section class="content">                      
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-group">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            District MIS
                                        </div>                                      
                                        <div class="panel-body">
                                            <form class="form-horizontal form-group-sm" role="form" id="frmId" name="frmName" method="post"  >

                                                <div class="form-group">

                                                    <div class="col-md-2" style="text-align: right;">
                                                        <label for="udistrict" class="col-md-0 control-label" >District</label>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <select class="form-control input-sm" id="udistrict" name="udistrict" onchange="showDistrictSurveyDetails(this.value)" >

                                                            <option value="0">Please Select</option>

                                                        </select>
                                                    </div>

                                                    <div class="col-md-2">&nbsp;</div>


                                                </div>





                                            </form><!--end of frmId-->
                                        </div><!--end of panel-body-->
                                    </div><!--end of primary-panel-->
                                    <div class="panel panel-primary" id="disDetails" style="display:none;">
                                        <div class="panel-heading" id="disMis">

                                        </div>                                      
                                        <div class="panel-body"  >
                                            <div class="form-group">  
                                                <div class="col-md-1" >&nbsp;</div>
                                                <div class="col-md-10" >
                                                    <table class="display" id="example" style="width:100%;">
                                                        <thead>
                                                            <tr>
                                                                <th>Sl</th>
                                                                <th>Block</th>
                                                                <th>Panchayat</th>
                                                                <th>Total Survey</th>


                                                            </tr>
                                                        </thead>


                                                    </table>

                                                </div>
                                            </div>
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
            <%@ include file="../../coommon/footer.jsp"%>

            <!-- Add the sidebar's background. This div must be placed
             immediately after the control sidebar -->

            <!--js/jquery.min.js-->

            <div class="control-sidebar-bg"></div>
        </div>
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="../../js/bootstrap/js/bootstrap.min.js"></script>
        <script src="../../js/adminlte.min.js"></script>


        <link href="../../css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <script src="../../css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="../../js/jquery-3.5.1.js" type="text/javascript"></script>
        <script>

                                                            $(document).ready(function () {
                                                                fillDistrictDropdown();
                                                            });
                                                            function fillDistrictDropdown() {
                                                                //alert('hello');
                                                                $.ajax({
                                                                    type: 'POST',
                                                                    url: "<%=context_path_%>/Districtslv",
                                                                    data: {
                                                                        Element: "district_dropdown"
                                                                    },
                                                                    success: function (data) {   // success callback function
                                                                        //alert(data);
                                                                        document.getElementById("udistrict").innerHTML = data;
                                                                    }
                                                                });
                                                            }
                                                            $.noConflict();
                                                            function showDistrictSurveyDetails(districtCode)
                                                            {
                                                                $('#disDetails').show();
                                                                document.getElementById("disMis").innerHTML = $("#udistrict option:selected").text() + " District Details";
                                                                $('#example').DataTable({
                                                                    "ajax": {
                                                                        type: 'POST',
                                                                        url: "<%=context_path_%>/GetDistrictSurveyDetails",
                                                                        data: {
                                                                            disCode: districtCode
                                                                        },
                                                                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8'
                                                                    },
                                                                    "columns": [
                                                                        {"data": "sl"},
                                                                        {"data": "block"},
                                                                        {"data": "panchayat"},
                                                                        {"data": "total"}
                                                                    ],
                                                                    destroy: true
                                                                });

                                                            }
        </script>

    </body>
</html>
