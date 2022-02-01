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


                    <section class="content">                      
                        <div class="row">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <div class="fade-in" id="divdisdata">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <div class="fade-in" id="divareadata" style="display: none">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

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
        <script language="Javascript" type="text/javascript">
            $(document).ready(function () {
                AjaxDashboard();
            });
            function AjaxDashboard()
            {
                var objsdataparsed;
                var totSupervisorList;
                var SupervisorList;
                var optstr = "";
                var tot = 0;
                $.ajax({
                    type: 'POST',
                    url: '<%=request.getContextPath()%>/SlvtAdminDashboard',
                    data:
                            {
                                "flagType": "1"
                            },
                    success: function (retresult) {
                        //alert(retresult);
                        objsdataparsed = JSON.parse(retresult);
                        totSupervisorList = objsdataparsed.TOTSUPERVISOR;
                        SupervisorList = objsdataparsed.SUPERVISORLIST;

                        optstr += "<div class=\"row\">";
                        //optstr += "<div class=\"col-sm-12\" style=\"padding-right: 7px;padding-left: 7px;\">";
                        optstr += "<div class=\"col-sm-12 col-lg-12\" >";
                        optstr += "<div class=\"card text-white bg-gradient-warning\" >";
                        optstr += " <div class=\"card-body  pb-2 d-flex justify-content-center align-items-center\">";
                        optstr += "<div>";
                        optstr += "<div class=\"text-value-lg text-center\" style=\" font-size:2.5rem\" id=\"totsup\">" + totSupervisorList + "&nbsp;<strong>Total Supervisor(s)</strong></div>";
                        //optstr += "<div style=\" font-size:2.0rem\" class=\" text-center\"><strong>Total Supervisor(s)</strong></div>";
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += "</div>";
                        //optstr += "</div>";
                        optstr += "<div class=\"row\">";
                        optstr += "<div class=\"col-sm-12\"  style=\"padding-right: 5px;padding-left: 5px;\">";
                        optstr += "<div class=\"row\">";
                        for (var i = 0; i < SupervisorList.length; i++)
                        {
                            optstr += "<div class=\"col-sm-6 col-lg-3\"  style=\"padding-right: 5px;padding-left: 5px;\">";
                            optstr += "<div class=\"card text-white bg-gradient-info\">";
                            optstr += "<div class=\"card-body card-body pb-0 d-flex justify-content-between align-items-start\">";
                            optstr += "<div>";
                            optstr += "<div class=\"row\">";
                            optstr += "<div class=\"col-sm-12 text-value-lg pb-2\" style=\" font-size:1.8rem\">";
                            optstr += "<strong>" + SupervisorList[i].UNAME + "</strong>";
                            optstr += "</div>";
                            optstr += "</div> ";
                            optstr += " <div class=\"row\">";
                            optstr += "<div class=\"col-sm-12 text-value-lg pb-2\">";
                            optstr += "<strong><i class=\"fa fa-user\"></i>&nbsp;S/O " + SupervisorList[i].UFATHER + "</strong>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "<div class=\"row\">";
                            optstr += "<div class=\"col-sm-12 text-value-lg pb-2\">";
                            optstr += "<strong><i class=\"fa fa-envelope\"></i>&nbsp;" + SupervisorList[i].UMOB + "</strong>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "<div class=\"row\">";
                            optstr += "<div class=\"col-sm-12 text-value-lg pb-2\">";
                            optstr += "<strong><i class=\"fa fa-mobile\"></i>&nbsp;" + SupervisorList[i].UEMAIL + "</strong>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "<div class=\"row\">";
                            optstr += "<div class=\"col-sm-12  pb-3\"  style=\" font-size:1.3rem;color:#ffffff\">";
                            optstr += "<a href=\"javascript:void());\" onclick=\"AjaxSupervisorArea('" + SupervisorList[i].UNAME + "'," + SupervisorList[i].UID + ")\" class=\"stretched-link text-white  d-flex justify-content-between align-items-end\"><strong>more &nbsp;<i class=\"fa fa-angle-double-right\"></i></strong></a>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "</div>";
                            optstr += "</div>";
                            tot++;
                        }
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += "</div>";


                        //alert(retresult);

                        document.getElementById("divdisdata").innerHTML = "";
                        document.getElementById("divdisdata").innerHTML = optstr;


                    }
                });
            }

            function AjaxSupervisorArea(uname, userid)
            {
                var objsdataparsed;
                var totSupervisorList;
                var SupervisorList;
                var optstr = "";
                var tot = 0;
                $.ajax({
                    type: 'POST',
                    url: '<%=request.getContextPath()%>/SlvtAdminDashboard',
                    data:
                            {
                                "flagType": "2",
                                "userid": userid
                            },
                    success: function (retresult) {
                        //alert(retresult);
                        objsdataparsed = JSON.parse(retresult);
                        SupervisorList = objsdataparsed.SUPERVISORAREALIST;
                        optstr += "<div class=\"card\">";
                        optstr += "<div class=\"card-body\">";
                        optstr += " <div class=\"\">";
                        optstr += " <div class=\"row\">";
                        optstr += "<div class=\"col-sm-12 col-lg-12\">";
                        optstr += " <div class=\"pb-3\"><strong>Supervisor Name: " + uname + "</strong></div>";
                        optstr += "<table class=\"table table-responsive-sm table-hover table-outline mb-0\" width=\"100%\">";
                        optstr += "<thead class=\"thead-light\">";
                        optstr += "<tr>";
                        optstr += "<th class=\"text-center\">Sl.No.</th>";
                        optstr += "<th class=\"text-center\">District</th>";
                        optstr += "<th class=\"text-center\">Sub-Division</th>";
                        optstr += "<th class=\"text-center\">Block</th>";
                        optstr += "<th class=\"text-center\">Panchaayet</th>";
                        optstr += "</tr>";
                        optstr += "</thead>";
                        optstr += "<tbody>";
                        for (var i = 0; i < SupervisorList.length; i++)
                        {
                            optstr += "<tr>";
                            optstr += "<td class=\"text-center\">" + (i + 1) + "</td>";
                            optstr += "<td class=\"text-center\">" + SupervisorList[i].DIST + "</td>";
                            optstr += "<td class=\"text-center\">" + SupervisorList[i].SUBDIV + "</td>";
                            optstr += "<td class=\"text-center\">" + SupervisorList[i].BLOCK + "</td>";
                            optstr += "<td class=\"text-center\">" + SupervisorList[i].PANCHAAYAT + "</td>";

                            optstr += "</tr>";
                            tot++;
                        }
                        optstr += "</tbody>";
                        optstr += "</table>";
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += "</div>";
                        optstr += " </div>";



                        if (tot > 0)
                        {
                            document.getElementById("divareadata").innerHTML = "";
                            document.getElementById("divareadata").innerHTML = optstr;
                            document.getElementById("divareadata").style.display = "block";
                        }
                        else
                        {
                            document.getElementById("divareadata").innerHTML = "";
                            document.getElementById("divareadata").style.display = "none";
                        }
                    }
                });
            }
        </script>
    </body>
</html>
