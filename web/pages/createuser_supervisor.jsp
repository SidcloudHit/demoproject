

<%@page import="dbconnection.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SRFSRS</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="../js/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../js/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../js/AdminLTE.min.css">
        <link rel="stylesheet" href="../js/skin-blue.min.css">
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">  
        
    </head> 
    <%
        String context_path_ = request.getContextPath();
         int desid=0;
         String lbluser="";
          String utype="";
          if (session.getAttribute("user_type") != null || !session.getAttribute("user_type").equals("")) {
           utype=session.getAttribute("user_type").toString();    
           }
          if(utype!=null && utype.equalsIgnoreCase("system admin")){
          desid=2; 
          lbluser="Create supervisor ";
          }
          if(utype!=null && utype.equalsIgnoreCase("supervisor")){
         desid=3;   
         lbluser="Create surveyor";
         }
    %>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!-- Main Header -->
            <%@ include file="../coommon/header.jsp"%>            
            <!--end of header-->           
            <!-- start of sidebar -->
            <%@ include file="../coommon/sidebar.jsp"%>           
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
                                            <strong><%=lbluser%> </strong>
                                        </div>                                      
                                        <div class="panel-body">
                                          <form class="form-horizontal form-group-sm" role="form" id="frmId" name="frmName" method="post"  >
                                              <div class="form-group">
                                                  <div class="col-md-2" style="text-align: right;">
                                                    <label for="username" class="col-md-0 control-label" >Name<span style="color:red">*</span></label>

                                                </div>
                                                  <div class="col-md-3">
                                                        
                                                        <input type="text" class="form-control" id="username" placeholder="Username">
                                                        <span id="err_username"></span>
                                                    </div>
                                                  <div class="col-md-2" style="text-align: right;">
                                                    <label for="fname" class="col-md-0 control-label" >Father Name<span style="color:red">*</span></label>

                                                </div>
                                                  <div class="col-md-3">
                                                        
                                                        <input type="text" class="form-control" id="fname" placeholder="Father Name">
                                                        <span id="err_username"></span>
                                                    </div>
                                              </div>
                                              
                                              <div class="form-group">
                                                  <div class="col-md-2" style="text-align: right;">
                                                    <label for="user_mobile" class="col-md-0 control-label" >Mobile No.<span style="color:red">*</span></label>

                                                </div>
                                                  <div class="col-md-3">
                                                        
                                                        <input type="text" class="form-control" id="user_mobile" placeholder="Mobile No.">
                                                        <span id="err_user_mobile"></span>
                                                    </div>
                                                  <div class="col-md-2" style="text-align: right;">
                                                    <label for="uemail" class="col-md-0 control-label" >Email Id<span style="color:red">*</span></label>

                                                </div>
                                                  <div class="col-md-3">
                                                        
                                                        <input type="text" class="form-control" id="uemail" placeholder="Email Id">
                                                        <span id="err_username"></span>
                                                    </div>
                                              </div>
                                              <div class="form-group">
                                                  <div class="col-md-2" style="text-align: right;">
                                                    <label for="udob" class="col-md-0 control-label" >Date of Birth<span style="color:red">*</span></label>

                                                </div>
                                                  <div class="col-md-3">
                                                     
                                                      <div class="input-group date" id="datepicker">
                                            <input type="text" name="udob" id="udob" class="form-control" />
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                                        </div>
                                                  </div> 
                                                   <div class="col-md-2" style="text-align: right;">
                                                    <label for="uType" class="col-md-0 control-label" >Type of User<span style="color:red">*</span></label>

                                                </div>
                                                  <div class="col-md-3">
                                                 
                                                      <select id="uType" class="form-control">
                                                         <%-- <option value="0">Please Select</option> --%>
                                                          
                                                          <% 
                                                         
                                                          
                                                         // 99999999
                                                          String query = "SELECT designation_id, designation_name  FROM tbl_mas_designation where designation_id=? ";
                                                           PreparedStatement ps = null;
                                                            ResultSet rs = null;
                                                            Connection conn=null;
                                                              try {
                                                               Dbconnection dbc = new Dbconnection();
                                                                conn = dbc.getConnection(); 
                                                                 ps = conn.prepareStatement(query);
                                                                 ps.setInt(1, desid);
                                                                 rs = ps.executeQuery();
                                                              
                                                                  while (rs.next()) {
                                                          %>
                                                          <option value="<%=rs.getString("designation_name")%>"><%=rs.getString("designation_name")%></option>
                                                          
                                                          <%} }catch(Exception Ex){
                                                              
                                                          } finally {
                                                                  
                                                              if (conn != null) {
                                                                conn.close();
                                                            }
                                                            if (rs != null) {
                                                                rs.close();
                                                            }
                                                            if (ps != null) {
                                                                ps.close();
                                                            }
                                                        }%>
                                                      </select>
                                                  </div> 
                                              </div>
                                              
                                              
                                                <div class="form-group">
                                                    <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                    <div class="col-md-6">
                                                        <button type="button" class="btn btn-primary" id="btn_success" onclick="save_basic_info();">Save</button>
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
            <%@ include file="../coommon/footer.jsp"%>

            <!-- Add the sidebar's background. This div must be placed
             immediately after the control sidebar -->

            <!--js/jquery.min.js-->

            <div class="control-sidebar-bg"></div>
        </div>
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap-datepicker.min.js" type="text/javascript"></script>



        <script type="text/javascript">
             $('.date').datepicker({
            clearBtn: true,
            format: "yyyy-mm-dd",
            autoclose: true
            
        });
                        function fill_subDiv_dropdown(code) {
                                                                $.ajax({
                                                                    type: 'POST',
                                                                    url: "<%=context_path_%>/Districtslv",
                                                                    data: {
                                                                        Element: "subDiv_dropdown",
                                                                        Code: code
                                                                    },
                                                                    success: function (data) {   // success callback function
                                                                        //alert(data);
                                                                        document.getElementById("mSubList").innerHTML = data;
                                                                    }
                                                                });
                                                                }
                        function fill_localBody_dropdown(code) {
                                                                $.ajax({
                                                                    type: 'POST',
                                                                    url: "<%=context_path_%>/Districtslv",
                                                                    data: {
                                                                        Element: "localBody_dropdown",
                                                                        Code: code
                                                                    },
                                                                    success: function (data) {   // success callback function
                                                                        //alert(data);
                                                                        document.getElementById("localBody").innerHTML = data;
                                                                    }
                                                                });
                                                                }
                                                              

           


                                                            function save_basic_info() {
                                                            
                                                                var formJsonData = {};
                                                                if (typeof formJsonData.addformJsonData === "undefined") {
                                                                    formJsonData.addformJsonData = [];
                                                                    i = 0;
                                                                } else {
                                                                    i = formJsonData.addformJsonData.length;
                                                                }
                                                                 
                                                                formJsonData.addformJsonData.push({});
                                                                formJsonData.addformJsonData[i]['username'] = $('#username').val();
                                                                formJsonData.addformJsonData[i]['usermobile'] = $("#user_mobile").val();
                                                                formJsonData.addformJsonData[i]['useremail_id'] = $("#uemail").val();
                                                                formJsonData.addformJsonData[i]['fathersname'] = $("#fname").val();
                                                                formJsonData.addformJsonData[i]['userdob'] = $("#udob").val();
                                                                 formJsonData.addformJsonData[i]['uType'] = $("#uType").val();
                                                                
                                                                var formData = JSON.stringify(formJsonData);
                                                                //alert(formData);
                                                                $.ajax({
                                                                    type: 'POST',
                                                                    url: "<%=context_path_%>/Save_Basic_Info",
                                                                    data: {
                                                                        Basic_info_data: formData
                                                                    },
                                                                    success: function (data) {   // success callback function
                                                                        alert(data);
                                                                    }
                                                                });



                                                            }





        </script>

        <script src="../js/bootstrap/js/bootstrap.min.js"></script>
        <script src="../js/adminlte.min.js"></script>
    </body>
</html>