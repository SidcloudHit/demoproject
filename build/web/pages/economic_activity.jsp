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
        <title>SRFSRS</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="../js/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../js/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../js/bootstrap-multiselect.css">
        <link rel="stylesheet" href="../js/AdminLTE.min.css">
        <link rel="stylesheet" href="../js/skin-blue.min.css">
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <%
        String context_path_economic_activity = request.getContextPath();
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
                <!--                <section class="content-header">
                                </section>-->
                <!-- Main content -->
                <section class="content container-fluid">
                    <!--################################ BASIC INFORMATION PANEL ########################################-->
                    <section class="content">                      
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-group">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <strong>Economic Activity</strong>
                                        </div>                                      
                                        <div class="panel-body">
                                            <form class="form-horizontal form-group-sm" role="form" id="frmId" name="frmName" method="post">



                                                <div class="panel" style="background-color: #8FC1E3;">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="col-sm-4">
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="id_Agriculture" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Agriculture</b></label>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="id_Horticulture" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Horticulture</b></label>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="id_Fisheries" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Fisheries</b></label>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="id_Animal_resource_development" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Animal Resource Development</b></label>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="id_commercial_plantation" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Commercial Plantation</b></label>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="id_Job_in_Organized_Sector" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Job in Organized Sector</b></label>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="id_Secondary_Agricultural_Activity" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Secondary Agricultural Activity</b></label>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="id_Secondary_sector_Activity" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Secondary Sector Activity</b></label>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="id_service_sector_income_generation" onclick="show_div()">
                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Service Sector(Income Generation)</b></label>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>








                                                <div class="panel panel-primary" id="div_id_Agriculture">
                                                    <div class="panel-heading"><b>Agriculture</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label for="lbl_available_land" id="lbl_available_land" class="col-md-5  control-label"><b>Agriculture </b></label>
                                                                            <div class="col-md-12">
                                                                                <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_agriculture" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                                <div class="panel" style="background-color: #8FC1E3;">
                                                                                    <a class="dropdown-item">
                                                                                        <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                            &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_aus">
                                                                                            <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Aus</b></label>
                                                                                        </div>
                                                                                    </a>
                                                                                    <a class="dropdown-item">
                                                                                        <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                            &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_aman">
                                                                                            <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Aman</b></label>
                                                                                        </div>
                                                                                    </a>
                                                                                    <a class="dropdown-item">
                                                                                        <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                            &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_boro">
                                                                                            <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Boro</b></label>
                                                                                        </div>
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <table class="table" id="tbl_agriculture">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th>Land Under Cultivation Existing(Kani)<span style="color:red">*</span></th>
                                                                                        <th>Production-existing(Qtl)<span style="color:red">*</span></th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td><input type="text" class="form-control" id="txt_land_under_cultivation_existing_aus" name="txt_land_under_cultivation_existing_aus" placeholder="AUS(Land Under Cultivation)"/></td>
                                                                                        <td><input type="text" class="form-control" id="txt_Production_existing_aus" name="txt_Production_existing_aus" placeholder="AUS(Production-existing)"/></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><input type="text" class="form-control" id="txt_land_under_cultivation_existing_aman" name="txt_land_under_cultivation_existing_aman" placeholder="AMAN(Land Under Cultivation)"/></td>
                                                                                        <td><input type="text" class="form-control" id="txt_Production_existing_aman" name="txt_Production_existing_aman" placeholder="AMAN(Production-existing)"/></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><input type="text" class="form-control" id="txt_land_under_cultivation_existing_boro" name="txt_land_under_cultivation_existing_boro" placeholder="BORO(Land Under Cultivation)"/></td>
                                                                                        <td><input type="text" class="form-control" id="txt_Production_existing_boro" name="txt_Production_existing_boro" placeholder="BORO(Production-existing)"/></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="form-group">
                                                                            <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                                            <div class="col-md-6">
                                                                                <button type="button" class="btn btn-primary" id="btn_save_agriculture" onclick="save_agriculture_data();">Save</button>
                                                                            </div>
                                                                        </div>                                                                          
                                                                    </div>
                                                                </div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="panel panel-primary" id="div_id_horticulture">
                                                    <div class="panel-heading"><b>Horticulture</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_horticulture" id="lbl_horticulture" class="col-md-5  control-label"><b>Horticulture </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_horticulture" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_Vegetables">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Vegetables</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_Flowers">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Flowers</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_Fruits">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Fruits</b></label>
                                                                                    </div>
                                                                                </a>

                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_Spices">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Spices</b></label>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table" id="tbl_agriculture">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Land Under Existing Cultivation(Kani)<span style="color:red">*</span></th>
                                                                                    <th>Production-existing(Qtl)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_land_under_cultivation_existing_horticulture_Vegetables" name="txt_land_under_cultivation_existing_horticulture_Vegetables" placeholder="(Land Under Existing Cultivation)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_horticulture_Vegetables" name="txt_Production_existing_horticulture_Vegetables" placeholder="Production-existing"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_land_under_cultivation_existing_horticulture_Flowers" name="txt_land_under_cultivation_existing_horticulture_Flowers" placeholder="Land Under Existing Cultivation"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_horticulture_Flowers" name="txt_Production_existing_horticulture_Flowers" placeholder="Production-existing"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_land_under_cultivation_existing_horticulture_Fruits" name="txt_land_under_cultivation_existing_horticulture_Fruits" placeholder="Land Under Existing Cultivation"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_horticulture_Fruits" name="txt_Production_existing_horticulture_Fruits" placeholder="Production-existing"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_land_under_cultivation_existing_horticulture_Spices" name="txt_land_under_cultivation_existing_horticulture_Spices" placeholder="Land Under Existing Cultivation"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_horticulture_Spices" name="txt_Production_existing_horticulture_Spices" placeholder="Production-existing"/>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="form-group">
                                                                        <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                                        <div class="col-md-6">
                                                                            <button type="button" class="btn btn-primary" id="btn_save_horticulture" onclick="save_horticulture_data();">Save</button>
                                                                        </div>
                                                                    </div>                                                                          
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="panel panel-primary" id="div_id_fisheries">
                                                    <div class="panel-heading"><b>Fisheries</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="form-group">                                                              
                                                                    <label for="lbl_fisheries" id="lbl_fisheries" class="col-md-2  control-label">Fisheries </label>
                                                                    <div class="col-md-1">
                                                                        <div class="checkbox">
                                                                            <label><input type="checkbox" name="chk_fish_culture" id="chk_fish_culture" onclick="show_hide_chkbox();" value="Fish Culture"></label>
                                                                        </div>
                                                                    </div>
                                                                    <div id="fisheries_show_hide">
                                                                        <label for="lbl_fishery_area" class="col-md-2 control-label">Fishery Area(Kani)<span style="color:red">*</span></label>
                                                                        <div class="col-md-2" id="div_id_Fishery_Area_Kani" >
                                                                            <input type="text" class="form-control" id="txt_Fishery_Area_Kani" name="txt_Fishery_Area_Kani" placeholder="Fishery Area(Kani)"/>
                                                                            <span id="spn_id_Fishery_Area_Kani"></span>
                                                                        </div>
                                                                        <label for="lbl_fishery_production_qtl" id="lbl_fishery_production_qtl" class="col-md-3 control-label">Production-existing(Qtl)<span style="color:red">*</span></label>
                                                                        <div class="col-md-2" id="div_id_Production_existing_fishery_qtl" >
                                                                            <input type="text" class="form-control" id="txt_Production_existing_fishery_qtl" name="txt_Production_existing_fishery_qtl" placeholder="Production-existing(Qtl)"/>
                                                                            <span id="spn_id_Production_existing_fishery_qtl"></span>
                                                                        </div>
                                                                    </div>
                                                                </div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>




                                                <div class="panel panel-primary" id="div_id_animal_resource_development">
                                                    <div class="panel-heading"><b>Animal Resource Development</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_animal_resource_development" id="lbl_animal_resource_development" class="col-md-5  control-label"><b>Animal Resource Development </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_animal_resource_development" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_cow">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Cows</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_goat">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Goat</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_Pigs">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Pigs</b></label>
                                                                                    </div>
                                                                                </a>

                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="4" id="check_Poultry">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Poultry</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="5" id="check_Layer">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Layer</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="6" id="check_Duckery">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Duckery</b></label>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table" id="tbl_agriculture">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>No.Of animals-existing<span style="color:red">*</span></th>
                                                                                    <th>Production-existing(in Litre/kg/No)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_no_of_animal_exist_cow" name="txt_no_of_animal_exist_cow" placeholder="No.Of animals-existing"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_litre_kg_No_cow" name="txt_Production_existing_litre_kg_No_cow" placeholder="Production-existing(in Litre/kg/No)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_no_of_animal_exist_goat" name="txt_no_of_animal_exist_goat" placeholder="No.Of animals-existing"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_litre_kg_No_goat" name="txt_Production_existing_litre_kg_No_goat" placeholder="Production-existing(in Litre/kg/No)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_no_of_animal_exist_pig" name="txt_no_of_animal_exist_pig" placeholder="No.Of animals-existing"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_litre_kg_No_pig" name="txt_Production_existing_litre_kg_No_pig" placeholder="Production-existing(in Litre/kg/No)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_no_of_animal_exist_poultry" name="txt_no_of_animal_exist_poultry" placeholder="No.Of animals-existing"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_litre_kg_No_poultry" name="txt_Production_existing_litre_kg_No_poultry" placeholder="Production-existing(in Litre/kg/No)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_no_of_animal_exist_layer" name="txt_no_of_animal_exist_layer" placeholder="No.Of animals-existing"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_litre_kg_No_layer" name="txt_Production_existing_litre_kg_No_layer" placeholder="Production-existing(in Litre/kg/No)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_no_of_animal_exist_duckery" name="txt_no_of_animal_exist_duckery" placeholder="No.Of animals-existing"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_litre_kg_No_duckery" name="txt_Production_existing_litre_kg_No_duckery" placeholder="Production-existing(in Litre/kg/No)"/>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="panel panel-primary" id="div_id_commercial_plantation">
                                                    <div class="panel-heading"><b>Commercial Plantation</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_Commercial_Plantation" id="lbl_Commercial_Plantation" class="col-md-5  control-label"><b>Commercial Plantation </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_Commercial_Plantation" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_Rubber">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Rubber</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_tea">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Tea</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_Arecanut">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Arecanut</b></label>
                                                                                    </div>
                                                                                </a>

                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="4" id="check_Cashewnut">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Cashewnut</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="5" id="check_bamboo">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Bamboo</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="6" id="check_Forest_species">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Forest Species</b></label>
                                                                                    </div>
                                                                                </a>

                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="7" id="check_Sericulture">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Sericulture</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="8" id="check_other">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Other</b></label>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table" id="tbl_agriculture">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Area-Existing(Kani)<span style="color:red">*</span></th>
                                                                                    <th>Production-existing(Qtl.)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_rubber" name="txt_Area_existing_Kani_Commercial_Plantation_rubber" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_rubber" name="txt_Production_existing_Commercial_Plantation_rubber" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_tea" name="txt_Area_existing_Kani_Commercial_Plantation_tea" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_tea" name="txt_Production_existing_Commercial_Plantation_tea" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_arecanut" name="txt_Area_existing_Kani_Commercial_Plantation_arecanut" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_arecanut" name="txt_Production_existing_Commercial_Plantation_arecanut" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_cashewnut" name="txt_Area_existing_Kani_Commercial_Plantation_cashewnut" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_cashewnut" name="txt_Production_existing_Commercial_Plantation_cashewnut" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_bamboo" name="txt_Area_existing_Kani_Commercial_Plantation_bamboo" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_bamboo" name="txt_Production_existing_Commercial_Plantation_bamboo" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_forest_species" name="txt_Area_existing_Kani_Commercial_Plantation_forest_species" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_forest_species" name="txt_Production_existing_Commercial_Plantation_forest_species" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_sericulture" name="txt_Area_existing_Kani_Commercial_Plantation_sericulture" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_sericulture" name="txt_Production_existing_Commercial_Plantation_sericulture" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Area_existing_Kani_Commercial_Plantation_other" name="txt_Area_existing_Kani_Commercial_Plantation_other" placeholder="Area-Existing(Kani)"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Production_existing_Commercial_Plantation_other" name="txt_Production_existing_Commercial_Plantation_other" placeholder="Production-existing(Qtl.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="panel panel-primary" id="div_id_Job_in_Organised_Sector">
                                                    <div class="panel-heading"><b>Job in Organised Sector</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_Job_in_Organised_Sector" id="lbl_Job_in_Organised_Sector" class="col-md-5  control-label"><b>Job in Organised Sector </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_Job_in_Organised_Sector" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_Larsen_Toubro">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Larsen & Toubro</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_tata">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Tata</b></label>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Income Generation Per Month(Rs.)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_organised_sector_Larsen_Toubro" name="txt_Income_Generation_per_Month_Rs_organised_sector_Larsen_Toubro" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_organised_sector_tata" name="txt_Income_Generation_per_Month_Rs_organised_sector_tata" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="panel panel-primary" id="div_id_Secondary_Agricultural_Activity">
                                                    <div class="panel-heading"><b>Secondary Agricultural Activity</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_Secondary_Agricultural_Activity" id="lbl_Secondary_Agricultural_Activity" class="col-md-5  control-label"><b>Job in Organised Sector </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_Secondary_Agricultural_Activity" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_Beep_Keeping">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Beep Keeping</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_Mushroom">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Mushroom</b></label>
                                                                                    </div>
                                                                                </a>

                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_Vermicompost">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox3"><b> Vermicompost</b></label>
                                                                                    </div>
                                                                                </a>

                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="4" id="check_other_Secondary_Agricultural_Activity">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox4"><b> Other</b></label>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Income Generation Per Month(Rs.)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_beep_keeping" name="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_beep_keeping" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_mashroom" name="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_beep_mashroom" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_vermicompost" name="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_vermicompost" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_other" name="txt_Income_Generation_per_Month_Rs_secound_Agri_activity_other" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="panel panel-primary" id="div_id_secoundary_sector_activity">
                                                    <div class="panel-heading"><b>Secondary Sector Activity</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_Secondary_Sector_Activity" id="lbl_Secondary_Sector_Activity" class="col-md-5  control-label"><b>Secondary Sector Activity </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_Secondary_Sector_Activity" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_Handloom_and_Handicrafts">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Handloom and Handicrafts</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_Food_processing">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Food processing</b></label>
                                                                                    </div>
                                                                                </a>


                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="3" id="check_other_Secondary_sector_Activity">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox4"><b> Other</b></label>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Income Generation Per Month(Rs.)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_sector_activity_handloom_and_handicrafts" name="txt_Income_Generation_per_Month_Rs_secound_sector_activity_handloom_and_handicrafts" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_sector_activity_food_processing" name="txt_Income_Generation_per_Month_Rs_secound_sector_activity_food_processing" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_secound_sector_activity_other" name="txt_Income_Generation_per_Month_Rs_secound_sector_activity_other" placeholder="Income Generation Per Month(Rs.)"/>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="panel panel-primary" id="div_id_Service_Sector_Income_Generation">
                                                    <div class="panel-heading"><b>Service Sector(Income Generation)</b></div>
                                                    <div class="panel-body">
                                                        <div class="panel panel-default">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-7">
                                                                        <label for="lbl_Service_Sector_Income_Generation" id="lbl_Service_Sector_Income_Generation" class="col-md-5  control-label"><b>Service Sector(Income Generation) </b></label>
                                                                        <div class="col-md-12">
                                                                            <!--<button class="btn btn-primary dropdown-toggle mr-4" id="btn_Service_Sector_Income_Generation" type="button" data-toggle="dropdown" aria-haspopup="true"> Select &nbsp;<i class="fa fa-caret-down" aria-hidden="true"> </i></button>-->
                                                                            <div class="panel" style="background-color: #8FC1E3;">
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="1" id="check_trading_shop">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox1"><b> Trading / Shop</b></label>
                                                                                    </div>
                                                                                </a>
                                                                                <a class="dropdown-item">
                                                                                    <div class="custom-control custom-checkbox" onclick="chk_check_box_();">
                                                                                        &nbsp;&nbsp;<input type="checkbox" class="custom-control-input" value="2" id="check_other_service_sector">
                                                                                        <label class="custom-control-label" style="color: #000000;" for="checkbox2"><b> Other</b></label>
                                                                                    </div>
                                                                                </a>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <table class="table">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Income Generation Per Month(Rs.)<span style="color:red">*</span></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_service_sector_trading_shop" name="txt_Income_Generation_per_Month_Rs_service_sector_trading_shop" placeholder="Trading / Shop"/>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input type="text" class="form-control" id="txt_Income_Generation_per_Month_Rs_service_sector_other" name="txt_Income_Generation_per_Month_Rs_service_sector_other" placeholder="Other"/>
                                                                                    </td>
                                                                                </tr>

                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <br>
                                                <br>

                                                <div class="form-group">
                                                    <label for="lbl_btn" class="col-md-6 control-label"></label>
                                                    <div class="col-md-6">
                                                        <button type="button" class="btn btn-primary" id="btn_success" onclick="save_economic_activity_data();">Save</button>
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
        <script src="../js/bootstrap-multiselect.js"></script>
        <script>
                                                            function chk_check_box_() {


                                                                $('#check_aus').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_aus").show();
                                                                        $("#txt_Production_existing_aus").show();
                                                                    } else {
                                                                        //  alert("uncheck");
                                                                        $("#txt_land_under_cultivation_existing_aus").hide();
                                                                        $("#txt_Production_existing_aus").hide();
                                                                    }

                                                                });



                                                                $('#check_aman').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_aman").show();
                                                                        $("#txt_Production_existing_aman").show();
                                                                    } else {
                                                                        //  alert("uncheck");
                                                                        $("#txt_land_under_cultivation_existing_aman").hide();
                                                                        $("#txt_Production_existing_aman").hide();
                                                                    }

                                                                });

                                                                $('#check_boro').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_boro").show();
                                                                        $("#txt_Production_existing_boro").show();
                                                                    } else {
                                                                        $("#txt_land_under_cultivation_existing_boro").hide();
                                                                        $("#txt_Production_existing_boro").hide();
                                                                    }
                                                                });

                                                                // for horticulture

                                                                $('#check_Vegetables').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Vegetables").show();
                                                                        $("#txt_Production_existing_horticulture_Vegetables").show();
                                                                    } else {
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Vegetables").hide();
                                                                        $("#txt_Production_existing_horticulture_Vegetables").hide();
                                                                    }
                                                                });

                                                                $('#check_Flowers').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Flowers").show();
                                                                        $("#txt_Production_existing_horticulture_Flowers").show();
                                                                    } else {
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Flowers").hide();
                                                                        $("#txt_Production_existing_horticulture_Flowers").hide();
                                                                    }
                                                                });

                                                                $('#check_Fruits').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Fruits").show();
                                                                        $("#txt_Production_existing_horticulture_Fruits").show();
                                                                    } else {
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Fruits").hide();
                                                                        $("#txt_Production_existing_horticulture_Fruits").hide();
                                                                    }
                                                                });

                                                                $('#check_Spices').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Spices").show();
                                                                        $("#txt_Production_existing_horticulture_Spices").show();
                                                                    } else {
                                                                        $("#txt_land_under_cultivation_existing_horticulture_Spices").hide();
                                                                        $("#txt_Production_existing_horticulture_Spices").hide();
                                                                    }
                                                                });


                                                                $('#check_cow').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_no_of_animal_exist_cow").show();
                                                                        $("#txt_Production_existing_litre_kg_No_cow").show();

                                                                    } else {
                                                                        $("#txt_no_of_animal_exist_cow").hide();
                                                                        $("#txt_Production_existing_litre_kg_No_cow").hide();

                                                                    }
                                                                });

                                                                $('#check_goat').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_no_of_animal_exist_goat").show();
                                                                        $("#txt_Production_existing_litre_kg_No_goat").show();
                                                                    } else {
                                                                        $("#txt_no_of_animal_exist_goat").hide();
                                                                        $("#txt_Production_existing_litre_kg_No_goat").hide();
                                                                    }
                                                                });

                                                                $('#check_Pigs').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_no_of_animal_exist_pig").show();
                                                                        $("#txt_Production_existing_litre_kg_No_pig").show();
                                                                    } else {
                                                                        $("#txt_no_of_animal_exist_pig").hide();
                                                                        $("#txt_Production_existing_litre_kg_No_pig").hide();
                                                                    }
                                                                });

                                                                $('#check_Poultry').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_no_of_animal_exist_poultry").show();
                                                                        $("#txt_Production_existing_litre_kg_No_poultry").show();
                                                                    } else {
                                                                        $("#txt_no_of_animal_exist_poultry").hide();
                                                                        $("#txt_Production_existing_litre_kg_No_poultry").hide();
                                                                    }
                                                                });

                                                                $('#check_Layer').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_no_of_animal_exist_layer").show();
                                                                        $("#txt_Production_existing_litre_kg_No_layer").show();
                                                                    } else {
                                                                        $("#txt_no_of_animal_exist_layer").hide();
                                                                        $("#txt_Production_existing_litre_kg_No_layer").hide();
                                                                    }
                                                                });

                                                                $('#check_Duckery').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        // alert("check");
                                                                        $("#txt_no_of_animal_exist_duckery").show();
                                                                        $("#txt_Production_existing_litre_kg_No_duckery").show();

                                                                    } else {
                                                                        $("#txt_no_of_animal_exist_duckery").hide();
                                                                        $("#txt_Production_existing_litre_kg_No_duckery").hide();

                                                                    }
                                                                });


                                                                //for commercial plantation

                                                                $('#check_Rubber').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_rubber").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_rubber").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_rubber").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_rubber").hide();

                                                                    }
                                                                });

                                                                $('#check_tea').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_tea").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_tea").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_tea").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_tea").hide();
                                                                    }
                                                                });

                                                                $('#check_Arecanut').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_arecanut").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_arecanut").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_arecanut").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_arecanut").hide();
                                                                    }
                                                                });

                                                                $('#check_Cashewnut').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_cashewnut").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_cashewnut").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_cashewnut").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_cashewnut").hide();
                                                                    }
                                                                });

                                                                $('#check_bamboo').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_bamboo").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_bamboo").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_bamboo").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_bamboo").hide();
                                                                    }
                                                                });

                                                                $('#check_Forest_species').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_forest_species").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_forest_species").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_forest_species").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_forest_species").hide();
                                                                    }
                                                                });

                                                                $('#check_Sericulture').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_sericulture").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_sericulture").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_sericulture").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_sericulture").hide();
                                                                    }
                                                                });

                                                                $('#check_other').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_other").show();
                                                                        $("#txt_Production_existing_Commercial_Plantation_other").show();
                                                                    } else {
                                                                        $("#txt_Area_existing_Kani_Commercial_Plantation_other").hide();
                                                                        $("#txt_Production_existing_Commercial_Plantation_other").hide();
                                                                    }
                                                                });

                                                                //for organised sector

                                                                $('#check_Larsen_Toubro').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_organised_sector_Larsen_Toubro").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_organised_sector_Larsen_Toubro").hide();
                                                                    }
                                                                });
                                                                $('#check_tata').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_organised_sector_tata").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_organised_sector_tata").hide();
                                                                    }
                                                                });

                                                                //secound agricultural activity

                                                                $('#check_other_Secondary_Agricultural_Activity').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_other").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_other").hide();
                                                                    }
                                                                });
                                                                $('#check_Vermicompost').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_vermicompost").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_vermicompost").hide();
                                                                    }
                                                                });
                                                                $('#check_Mushroom').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_mashroom").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_mashroom").hide();
                                                                    }
                                                                });
                                                                $('#check_Beep_Keeping').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_beep_keeping").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_beep_keeping").hide();
                                                                    }
                                                                });

                                                                //for secound sector activity
                                                                $('#check_Handloom_and_Handicrafts').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_handloom_and_handicrafts").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_handloom_and_handicrafts").hide();
                                                                    }
                                                                });
                                                                $('#check_Food_processing').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_food_processing").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_food_processing").hide();
                                                                    }
                                                                });
                                                                $('#check_other_Secondary_sector_Activity').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_other").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_other").hide();
                                                                    }
                                                                });

                                                                $('#check_trading_shop').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_service_sector_trading_shop").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_service_sector_trading_shop").hide();
                                                                    }
                                                                });
                                                                $('#check_other_service_sector').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#txt_Income_Generation_per_Month_Rs_service_sector_other").show();
                                                                    } else {
                                                                        $("#txt_Income_Generation_per_Month_Rs_service_sector_other").hide();
                                                                    }
                                                                });
                                                            }



                                                            function show_hide_chkbox() {
                                                                $('#chk_fish_culture').change(function () {
                                                                    if ($(this).is(":checked")) {
                                                                        $("#fisheries_show_hide").show();
                                                                    } else {
                                                                        $("#fisheries_show_hide").hide();
                                                                    }
                                                                });
                                                            }





                                                            $(document).ready(function () {

                                                                // all div hide first time
                                                                $("#div_id_Agriculture").hide();
                                                                $("#div_id_horticulture").hide();
                                                                $("#div_id_fisheries").hide();
                                                                $("#div_id_animal_resource_development").hide();
                                                                $("#div_id_commercial_plantation").hide();
                                                                $("#div_id_Job_in_Organised_Sector").hide();
                                                                $("#div_id_Secondary_Agricultural_Activity").hide();
                                                                $("#div_id_secoundary_sector_activity").hide();
                                                                $("#div_id_Service_Sector_Income_Generation").hide();
                                                                $("#btn_success").hide();






                                                                //for fishery
                                                                $("#fisheries_show_hide").hide();

                                                                // for Agriculture
                                                                $("#txt_land_under_cultivation_existing_boro").hide();
                                                                $("#txt_Production_existing_boro").hide();
                                                                $("#txt_land_under_cultivation_existing_aman").hide();
                                                                $("#txt_Production_existing_aman").hide();
                                                                $("#txt_land_under_cultivation_existing_aus").hide();
                                                                $("#txt_Production_existing_aus").hide();

                                                                //for horticulture
                                                                $("#txt_land_under_cultivation_existing_horticulture_Vegetables").hide();
                                                                $("#txt_Production_existing_horticulture_Vegetables").hide();

                                                                $("#txt_land_under_cultivation_existing_horticulture_Flowers").hide();
                                                                $("#txt_Production_existing_horticulture_Flowers").hide();

                                                                $("#txt_land_under_cultivation_existing_horticulture_Fruits").hide();
                                                                $("#txt_Production_existing_horticulture_Fruits").hide();

                                                                $("#txt_land_under_cultivation_existing_horticulture_Spices").hide();
                                                                $("#txt_Production_existing_horticulture_Spices").hide();

                                                                //for animal resource

                                                                $("#txt_no_of_animal_exist_cow").hide();
                                                                $("#txt_Production_existing_litre_kg_No_cow").hide();

                                                                $("#txt_no_of_animal_exist_goat").hide();
                                                                $("#txt_Production_existing_litre_kg_No_goat").hide();

                                                                $("#txt_no_of_animal_exist_pig").hide();
                                                                $("#txt_Production_existing_litre_kg_No_pig").hide();

                                                                $("#txt_no_of_animal_exist_poultry").hide();
                                                                $("#txt_Production_existing_litre_kg_No_poultry").hide();

                                                                $("#txt_no_of_animal_exist_layer").hide();
                                                                $("#txt_Production_existing_litre_kg_No_layer").hide();

                                                                $("#txt_no_of_animal_exist_duckery").hide();
                                                                $("#txt_Production_existing_litre_kg_No_duckery").hide();

                                                                //for commercial plantation

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_rubber").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_rubber").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_tea").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_tea").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_arecanut").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_arecanut").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_cashewnut").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_cashewnut").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_bamboo").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_bamboo").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_forest_species").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_forest_species").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_sericulture").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_sericulture").hide();

                                                                $("#txt_Area_existing_Kani_Commercial_Plantation_other").hide();
                                                                $("#txt_Production_existing_Commercial_Plantation_other").hide();

                                                                //for organised sector

                                                                $("#txt_Income_Generation_per_Month_Rs_organised_sector_Larsen_Toubro").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_organised_sector_tata").hide();

                                                                // for secound agricultural activity
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_beep_keeping").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_mashroom").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_vermicompost").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_Agri_activity_other").hide();



                                                                // for secound sector activity
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_handloom_and_handicrafts").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_food_processing").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_secound_sector_activity_other").hide();

                                                                $("#txt_Income_Generation_per_Month_Rs_service_sector_other").hide();
                                                                $("#txt_Income_Generation_per_Month_Rs_service_sector_trading_shop").hide();

                                                            });

                                                            //-------------------------------------------------------------

                                                            function show_div() {
                                                                if ($('#id_Agriculture').is(":checked")) {
                                                                    $("#div_id_Agriculture").show();
                                                                } else {
                                                                    $("#div_id_Agriculture").hide();
                                                                }

                                                                if ($('#id_Horticulture').is(":checked")) {
                                                                    $("#div_id_horticulture").show();
                                                                } else {
                                                                    $("#div_id_horticulture").hide();
                                                                }

                                                                if ($('#id_Fisheries').is(":checked")) {
                                                                    $("#div_id_fisheries").show();
                                                                } else {
                                                                    $("#div_id_fisheries").hide();
                                                                }


                                                                if ($('#id_Animal_resource_development').is(":checked")) {
                                                                    $("#div_id_animal_resource_development").show();
                                                                } else {
                                                                    $("#div_id_animal_resource_development").hide();
                                                                }


                                                                if ($('#id_commercial_plantation').is(":checked")) {
                                                                    $("#div_id_commercial_plantation").show();
                                                                } else {
                                                                    $("#div_id_commercial_plantation").hide();
                                                                }


                                                                if ($('#id_Job_in_Organized_Sector').is(":checked")) {
                                                                    $("#div_id_Job_in_Organised_Sector").show();
                                                                } else {
                                                                    $("#div_id_Job_in_Organised_Sector").hide();
                                                                }


                                                                if ($('#id_Secondary_Agricultural_Activity').is(":checked")) {
                                                                    $("#div_id_Secondary_Agricultural_Activity").show();
                                                                } else {
                                                                    $("#div_id_Secondary_Agricultural_Activity").hide();
                                                                }


                                                                if ($('#id_Secondary_sector_Activity').is(":checked")) {
                                                                    $("#div_id_secoundary_sector_activity").show();
                                                                } else {
                                                                    $("#div_id_secoundary_sector_activity").hide();
                                                                }

                                                                if ($('#id_service_sector_income_generation').is(":checked")) {
                                                                    $("#div_id_Service_Sector_Income_Generation").show();
                                                                } else {
                                                                    $("#div_id_Service_Sector_Income_Generation").hide();
                                                                }
                                                            }










                                                            function save_agriculture_data() {
                                                                var formJsonData = {};
                                                                if (typeof formJsonData.addformJsonData === "undefined") {
                                                                    formJsonData.addformJsonData = [];
                                                                    i = 0;
                                                                } else {
                                                                    i = formJsonData.addformJsonData.length;
                                                                }
                                                                formJsonData.addformJsonData.push({});

                                                                if ($('#check_aus').is(":checked")) {
                                                                    $("#txt_land_under_cultivation_existing_aus").val();
                                                                    $("#txt_Production_existing_aus").val();
                                                                    formJsonData.addformJsonData[i]['AUS'] = $('#check_aus').val();
                                                                    formJsonData.addformJsonData[i]['Land Under Cultivation Existing For AUS'] = $("#txt_land_under_cultivation_existing_aus").val();
                                                                    formJsonData.addformJsonData[i]['Production Existing For AUS'] = $("#txt_Production_existing_aus").val();
                                                                }
                                                                if ($('#check_aman').is(":checked")) {
                                                                    $("#txt_land_under_cultivation_existing_aman").val();
                                                                    $("#txt_Production_existing_aman").val();
                                                                    formJsonData.addformJsonData[i]['AMAN'] = $("#check_aman").val();
                                                                    formJsonData.addformJsonData[i]['Land Under Cultivation Existing For AMAN'] = $("#txt_land_under_cultivation_existing_aman").val();
                                                                    formJsonData.addformJsonData[i]['Production Existing For AMAN'] = $("#txt_Production_existing_aman").val();
                                                                }
//
                                                                if ($('#check_boro').is(":checked")) {
                                                                    $("#txt_land_under_cultivation_existing_boro").val();
                                                                    $("#txt_Production_existing_boro").val();
                                                                    formJsonData.addformJsonData[i]['BORO'] = $("#check_boro").val();
                                                                    formJsonData.addformJsonData[i]['Land Under Cultivation Existing BORO'] = $("#txt_land_under_cultivation_existing_boro").val();
                                                                    formJsonData.addformJsonData[i]['Production Existing BORO'] = $("#txt_Production_existing_boro").val();
                                                                }
                                                                var formData = JSON.stringify(formJsonData);
                                                                alert(formData);
//                                                                $.ajax({
//                                                                    type: 'POST',
//                                                                    url: "<%=context_path_economic_activity%>/Save_Basic_Info",
//                                                                    data: {
//                                                                        Basic_info_data: formData
//                                                                    },
//                                                                    success: function (data) {   // success callback function
//                                                                        alert(data);
//                                                                    }
//                                                                });



                                                            }


                                                            function save_horticulture_data() {
                                                                var JsonData = {};
                                                                if (typeof JsonData.formJsonData === "undefined") {
                                                                    JsonData.formJsonData = [];
                                                                    i = 0;
                                                                } else {
                                                                    i = JsonData.formJsonData.length;
                                                                }
                                                                JsonData.formJsonData.push({});

                                                                if ($('#check_Vegetables').is(":checked")) {
                                                                    $("#txt_land_under_cultivation_existing_horticulture_Vegetables").val();
                                                                    $("#txt_Production_existing_horticulture_Vegetables").val();
                                                                    JsonData.formJsonData[i]['Vegetables'] = $('#check_Vegetables').val();
                                                                    JsonData.formJsonData[i]['Land Under Cultivation Existing Cultivation(Kani)'] = $("#txt_land_under_cultivation_existing_horticulture_Vegetables").val();
                                                                    JsonData.formJsonData[i]['Production Existing(Qtl)'] = $("#txt_Production_existing_horticulture_Vegetables").val();
                                                                }
                                                                
                                                                if ($('#check_Flowers').is(":checked")) {
                                                                    $("#txt_land_under_cultivation_existing_horticulture_Flowers").val();
                                                                    $("#txt_Production_existing_horticulture_Flowers").val();
                                                                    JsonData.formJsonData[i]['Flowers'] = $("#check_Flowers").val();
                                                                    JsonData.formJsonData[i]['Land Under Cultivation Existing Cultivation(Kani)'] = $("#txt_land_under_cultivation_existing_horticulture_Flowers").val();
                                                                    JsonData.formJsonData[i]['Production Existing(Qtl)'] = $("#txt_Production_existing_horticulture_Flowers").val();
                                                                }
//
//                                                                if ($('#check_Fruits').is(":checked")) {
//                                                                    $("#txt_land_under_cultivation_existing_horticulture_Fruits").val();
//                                                                    $("#txt_Production_existing_horticulture_Fruits").val();
//                                                                    formJsonData.addformJsonData[i]['Fruits'] = $("#check_Fruits").val();
//                                                                    formJsonData.addformJsonData[i]['Land Under Cultivation Existing Cultivation(Kani)'] = $("#txt_land_under_cultivation_existing_horticulture_Fruits").val();
//                                                                    formJsonData.addformJsonData[i]['Production_existing(Qtl)'] = $("#txt_Production_existing_horticulture_Fruits").val();
//                                                                }

//                                                                if ($('#check_Spices').is(":checked")) {
//                                                                    $("#txt_land_under_cultivation_existing_horticulture_Spices").val();
//                                                                    $("#txt_Production_existing_horticulture_Spices").val();
//                                                                    formJsonData.addformJsonData[i]['Spices'] = $("#check_Spices").val();
//                                                                    formJsonData.addformJsonData[i]['Land Under Cultivation Existing Cultivation(Kani)'] = $("#txt_land_under_cultivation_existing_horticulture_Spices").val();
//                                                                    formJsonData.addformJsonData[i]['Production_existing(Qtl)'] = $("#txt_Production_existing_horticulture_Spices").val();
//                                                                }
                                                                var formData = JSON.stringify(JsonData);
                                                                alert(formData);
//                                                                $.ajax({
//                                                                    type: 'POST',
//                                                                    url: "<%=context_path_economic_activity%>/Save_Basic_Info",
//                                                                    data: {
//                                                                        Basic_info_data: formData
//                                                                    },
//                                                                    success: function (data) {   // success callback function
//                                                                        alert(data);
//                                                                    }
//                                                                }); 
                                                            }



        </script>
        <script src="../js/bootstrap/js/bootstrap.min.js"></script>
        <script src="../js/adminlte.min.js"></script>
    </body>
</html>