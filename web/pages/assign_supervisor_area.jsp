<%-- 
    Document   : assign_supervisor_area
    Created on : 28 Sep, 2020, 1:52:19 PM
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
          lbluser="supervisor List";
          }
          if(utype!=null && utype.equalsIgnoreCase("supervisor")){
         desid=3;   
         lbluser="surveyor List";
         }
        %>
        <script>
            function fill_subDiv_dropdown(code) {

                $.ajax({
                    type: 'POST',
                    url: "<%=context_path_%>/Districtslv",
                    data: {
                        Element: "subDiv_dropdown",
                        Code: code
                    },
                    success: function (data) {   // success callback function

                        //document.getElementById("mSubList").innerHTML = "";
                        document.getElementById("mSubList").innerHTML = data;
                    }
                });
            }
            function fill_localBody_dropdown(code) {
                $.ajax({
                    type: 'POST',
                    url: "<%=context_path_%>/Districtslv",
                    data: {Element: "localBody_dropdown",
                        Code: code
                    },
                    success: function (data) {   // success callback function
                        //alert(data);
                        document.getElementById("localBody").innerHTML = data;
                    }
                });
            }
            function fill_localArea_dropdown(code) {
                $.ajax({
                    type: 'POST',
                    url: "<%=context_path_%>/Districtslv",
                    data: {
                        Element: "localArea_dropdown",
                        Code: code
                    },
                    success: function (data) {   // success callback function
                        //alert(data);
                        document.getElementById("localArea").innerHTML = data;
                    }
                });
            }
            function selectOnlyThis(id,uid) {
           

                var myCheckbox = document.getElementsByName("userCheckbox");
              
                
                Array.prototype.forEach.call(myCheckbox, function (el) {
                    el.checked = false;
                });
                id.checked = true;
                 
                
                $('#surveyArea').show();
                fillDistrictDropdown();
                document.getElementById("hdnuid").value=uid;
            }


        </script>
    </head> 

    <body class="hold-transition skin-blue sidebar-mini" onload="filldropdown();">
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
                    <form class="form-horizontal form-group-sm" role="form" id="frmId" name="frmName" method="post"  >
                        
                    <section class="content">
                           
                        <div class="row">
                             <div class="col-md-12">
                                <div class="panel-group">
                                    
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <strong><%=lbluser%></strong>
                                        </div>
                                        
                                        <div class="panel-body">
                                            
                                                <div class="form-group">  
                                                    <div class="col-md-1" >&nbsp;</div>
                                                    <div class="col-md-10" >
                                                        <table class="display" id="example" style="width:100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>Sl</th>
                                                                    <th>Name</th>
                                                                    <th>Father Name</th>
                                                                    <th>Date of Birth</th>
                                                                    <th>Email Id</th>
                                                                    <th>Mobile No.</th>
                                                                    <th>Select User</th>
                                                           
                                                             
                                                                </tr>
                                                            </thead>


                                                        </table>

                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-primary" id="surveyArea">
                                        <div class="panel-heading">
                                            <strong>Surveyor Working Area</strong>
                                        </div>                                      
                                        <div class="panel-body">
                                            <div class="form-group">

                                                <div class="col-md-2" style="text-align: right;">
                                                    <label for="udistrict" class="col-md-0 control-label" >District</label>

                                                </div>
                                                <div class="col-md-3">

                                                    <select class="form-control input-sm" id="udistrict" name="udistrict" onchange="fill_subDiv_dropdown(this.value)" >
                                                                                                            
                                                        <option value="0">Please Select</option>
                                                        
                                                    </select>
                                                </div>
                                                <div class="col-md-2" style="text-align: right;">
                                                    <label for="mSubList" class="col-md-0 control-label">Sub-Division</label>
                                                     <input type="hidden" id="hdnuid" name="hdnuid" value="">

                                                </div>

                                                <div class="col-md-3">

                                                    <select class="form-control input-sm" id="mSubList" name="mSubList" onchange="fill_localBody_dropdown(this.value)">
                                                        <option value="0">Please Select</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-2">&nbsp;</div>


                                            </div> 

                                            <div class="form-group" id="al1">
                                                
                                                <div class="col-md-2" style="text-align: right;">
                                                    <label for="localBody" class="col-md-0 control-label" >Local Body</label>
                                                </div>
                                                <div class="col-md-3">


                                                    <select class="form-control input-sm" id="localBody" name="localBody" onchange="fill_localArea_dropdown(this.value)">
                                                        <option value="0">Please Select</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-2" style="text-align: right;">
                                                    <label for="localArea" class="col-md-0 control-label">Local Area</label>
                                                </div>
                                                <div class="col-md-3">

                                                    <select class="form-control input-sm" id="localArea" name="localArea" >
                                                        <option value="0">Please Select</option>
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    &nbsp;
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    &nbsp;
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                <div class="col-md-6">
                                                    <button type="button" class="btn btn-primary" id="addRow" onclick="user_area_info()" >Add Area</button>
                                                    <!--<button type="button" class="btn btn-primary" id="btn_success" onclick="save_basic_info();">Save</button> -->
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    &nbsp;
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    &nbsp;
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <div class="col-md-12" >
                                                    <table id="area" style="width:100%" border="1">
                                                        <thead>
                                                            <tr>

                                                                <th>District Code</th>
                                                                <th>District Name</th>
                                                                <th>Sub-Division Code</th>
                                                                <th>Sub-Division Name</th>
                                                                <th>Local Body Code</th>
                                                                <th>Local Body Name</th>
                                                                <th>Local Area Code</th>
                                                                <th>Local Area Name</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        
                                                    </table>
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    &nbsp;
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    &nbsp;
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                <div class="col-md-6">
                                                    <button type="button" class="btn btn-primary" id="btn_success" onclick="save_survey_area();">Save</button>
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-5 col-md-offset-7">
                                                    All fields with an asterisk(<span style="color:red; font-size: medium; font-weight: bold;"> * </span>) mark are mandatory.  
                                                </div>
                                            </div>
                                             <!--end of frmId-->
                                        </div><!--end of panel-body-->
                                        
                                    </div><!--end of primary-panel-->
                                   
                                </div><!--EOF panel-group-->   
                                
                            </div><!--/.col-md-12-->
                            
                        </div><!--/.row-->    
                        
                    </section><!-- /.content -->



</form>

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
        <link href="../css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <script src="../css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="../js/jquery-3.5.1.js" type="text/javascript"></script>
        <script>
                                                        jQuery.noConflict();
                                                        $(document).ready(function () {
                                                            $('#surveyArea').hide();
                                                            $('#area').hide();
                                                            $('#btn_success').hide();
                                                            $('#example').DataTable({
                                                                "ajax": "<%=context_path_%>/GetServeyorDetails",
                                                                "columns": [
                                                                    {"data": "sl"},
                                                                    {"data": "name"},
                                                                    {"data": "fname"},
                                                                    {"data": "dob"},
                                                                    {"data": "email"},
                                                                    {"data": "mobile"},
                                                                    {"data": "action"}
                                                                ]
                                                            });

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


        </script>



        <script type="text/javascript">

            function user_area_info()
            {
                var flag = 0;
                
               
                if ($('#udistrict').val() === '0')
                {
                    alert("Please Select District !");
                }
                else if ($('#mSubList').val() === '0')
                {
                    alert("Please Select Sub-Division !");
                }
                else if ($('#localBody').val() === '0')
                {
                    alert("Please Select Local Body !");
                }
                else if ($('#localArea').val() === '0')
                {
                    alert("Please Select Local Area !");
                }
                else
                {

                    $('#area').show();
                    $('#btn_success').show();
                                 
                    var uid="";
                    if ($("#area tr").length === 1)
                    {
                         uid=document.getElementById("hdnuid").value;
                         
                        $('#area').append($('<tr id=' + $('#localArea').val() + '>')
                                .append($('<td>').append($('#udistrict').val()))
                                .append($('<td>').append($('#udistrict option:selected').text()))
                                .append($('<td>').append($('#mSubList').val()))
                                .append($('<td>').append($('#mSubList option:selected').text()))
                                .append($('<td>').append($('#localBody').val()))
                                .append($('<td>').append($('#localBody option:selected').text()))
                                .append($('<td>').append($('#localArea').val()))
                                .append($('<td>').append($('#localArea option:selected').text()))
                        .append($('<td style="display:none;">').append(uid))
                                .append($('<td>').append('<button type="button" class="btn btn-primary" onclick="delete_user_area(' + $('#localArea').val() + ')">Delete Area</button>').append('<input type="hidden" name="hdn_uid" id="hdn_uid" value="'+uid+'" >'))
                                )
                    }
                    else if ($("#area tr").length > 1)
                    {

                        for (var i = 1; i < ($("#area tr").length); i++)
                        {

                            if ($("#area tr:eq(" + i + ") td:eq(6)").text() === $('#localArea').val())
                            {
                                flag = 1;
                                break;
                            }


                        }
                        if (flag === 1)
                        {
                            alert("Sorry @ Area " + $('#localArea option:selected').text() + " Already Added !");
                        }
                        else
                        {
                            uid=document.getElementById("hdnuid").value;
                            
                            $('#area').append($('<tr id=' + $('#localArea').val() + '>')
                                    .append($('<td>').append($('#udistrict').val()))
                                    .append($('<td>').append($('#udistrict option:selected').text()))
                                    .append($('<td>').append($('#mSubList').val()))
                                    .append($('<td>').append($('#mSubList option:selected').text()))
                                    .append($('<td>').append($('#localBody').val()))
                                    .append($('<td>').append($('#localBody option:selected').text()))
                                    .append($('<td>').append($('#localArea').val()))
                                    .append($('<td>').append($('#localArea option:selected').text()))
                             .append($('<td style="display:none;">').append(uid))
                            
                                    .append($('<td>').append('<button type="button" class="btn btn-primary" onclick="delete_user_area(' + $('#localArea').val() + ')">Delete Area</button>').append('<input type="hidden" name="hdn_uid" id="hdn_uid" value="'+uid+'" >'))
                                    
                            )
                        }
                    }




                    
                }
            }
            function delete_user_area(code)
            {
                
                $('#' + code + '').remove();
            }

            function save_survey_area() {
                var obj = [];
                var arg="";
                 var dist_code="";
                 var dist_name="";
                 
                var sub_vid_code="";
                var sub_vid_name="";
                var local_body_code="";
                var local_body_name="";
                var local_are_code="";
                var local_are_name="";
                 var uid="";
                
                var formJsonData = {};
                if (typeof formJsonData.addformJsonData === "undefined") {
                    formJsonData.addformJsonData = [];
                    i = 0;
                } else {
                    i = formJsonData.addformJsonData.length;
                }

                formJsonData.addformJsonData.push({});
               
                //for(var j=1;j<$("#area tr").length;j++)
                for(var j=1;j<$("#area tr").length;j++)
                {
                    
             dist_code=$("#area tr:eq(" + j + ") td:eq(0)").text();
              dist_name=$("#area tr:eq(" + j + ") td:eq(1)").text();
             sub_vid_code=$("#area tr:eq(" + j + ") td:eq(2)").text();
             sub_vid_name=$("#area tr:eq(" + j + ") td:eq(3)").text();
             local_body_code=$("#area tr:eq(" + j + ") td:eq(4)").text();
             local_body_name=$("#area tr:eq(" + j + ") td:eq(5)").text();
             local_are_code=$("#area tr:eq(" + j + ") td:eq(6)").text();
             local_are_name=$("#area tr:eq(" + j + ") td:eq(7)").text();
             uid=$("#area tr:eq(" + j + ") td:eq(8)").text();
            arg=arg+dist_code+"~"+dist_name+"~"+sub_vid_code+"~"+sub_vid_name+"~"+local_body_code+"~"+local_body_name+"~"+local_are_code+"~"+local_are_name+"~"+uid+"|";
            
                    
                /*formJsonData.addformJsonData[i]['discode'] = $("#area tr:eq(" + j + ") td:eq(0)").text();
                formJsonData.addformJsonData[i]['disname'] = $("#area tr:eq(" + j + ") td:eq(1)").text();
                formJsonData.addformJsonData[i]['subcode'] = $("#area tr:eq(" + j + ") td:eq(2)").text();
                formJsonData.addformJsonData[i]['subname'] = $("#area tr:eq(" + j + ") td:eq(3)").text();
                obj.push(formJsonData);*/
                }

                //var formData = JSON.stringify(formJsonData);
                 $.ajax({
                                                                    type: 'POST',
                                                                    url: "<%=context_path_%>/svlt_survey_info",
                                                                    data: {
                                                                        Basic_info_data: arg
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