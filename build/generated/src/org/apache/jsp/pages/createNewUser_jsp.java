package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dbconnection.Dbconnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public final class createNewUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/pages/../coommon/header.jsp");
    _jspx_dependants.add("/pages/../coommon/sidebar.jsp");
    _jspx_dependants.add("/pages/../coommon/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>SRFSRS</title>\n");
      out.write("        <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/bootstrap/css/bootstrap.min.css\">\n");
      out.write("        <!-- Font Awesome -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <!-- Ionicons -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/ionicons.min.css\">\n");
      out.write("        <!-- Theme style -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/AdminLTE.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/skin-blue.min.css\">\n");
      out.write("        <!-- Google Font -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic\">  \n");
      out.write("        \n");
      out.write("    </head> \n");
      out.write("    ");

        String context_path_ = request.getContextPath();
         int desid=0;
         String lbluser="";
          String utype="";
          if (session.getAttribute("user_type") != null || !session.getAttribute("user_type").equals("")) {
           utype=session.getAttribute("user_type").toString();    
           }
          if(utype!=null && utype.equalsIgnoreCase("system admin")){
          desid=2; 
          lbluser="Create supervisor User";
          }
          if(utype!=null && utype.equalsIgnoreCase("supervisor")){
         desid=3;   
         lbluser="Create surveyor";
         }
    
      out.write("\n");
      out.write("    <body class=\"hold-transition skin-blue sidebar-mini\" onload=\"filldropdown();\">\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <!-- Main Header -->\n");
      out.write("            ");
      out.write("<header class=\"main-header\">\n");
      out.write("    <!-- Logo -->\n");
      out.write("    ");

        String context_path_header = request.getContextPath();
    
      out.write("\n");
      out.write("    <a href=\"index.html\" class=\"logo\">\n");
      out.write("        <!-- mini logo for sidebar mini 50x50 pixels -->\n");
      out.write("        <!--<span class=\"logo-mini\"><b>A</b>LT</span>-->\n");
      out.write("        <!-- logo for regular state and mobile devices -->\n");
      out.write("        <span class=\"logo-lg\"><b>SRFSRS</b></span>\n");
      out.write("\n");
      out.write("    </a>\n");
      out.write("\n");
      out.write("    <!-- Header Navbar -->\n");
      out.write("    <nav class=\"navbar navbar-static-top\" role=\"navigation\">\n");
      out.write("        <!-- Sidebar toggle button-->\n");
      out.write("        <a href=\"#\" class=\"sidebar-toggle\" data-toggle=\"push-menu\" role=\"button\">\n");
      out.write("            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("        </a>\n");
      out.write("        <!-- Navbar Right Menu -->\n");
      out.write("        <div class=\"navbar-custom-menu\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("                <!-- Messages: style can be found in dropdown.less-->\n");
      out.write("                \n");
      out.write("                <!-- /.messages-menu -->\n");
      out.write("\n");
      out.write("                <!-- Notifications Menu -->\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- User Account Menu -->\n");
      out.write("                <li class=\"dropdown user user-menu\">\n");
      out.write("                    <!-- Menu Toggle Button -->\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                        <!-- The user image in the navbar-->\n");
      out.write("                        <b> Welcome <i class=\"glyphicon glyphicon-user\"></i>: &nbsp;</b>\n");
      out.write("                        <!--<img src=\"glyphicon glyphicon-user\" class=\"user-image\" alt=\"User Image\">-->\n");
      out.write("                        <!-- hidden-xs hides the username on small devices so only the image appears. -->\n");
      out.write("                        <span class=\"hidden-xs\"> \n");
      out.write("                            ");

                                if (session.getAttribute("user_name") == null || session.getAttribute("user_name").equals("")) {
                                    response.sendRedirect(context_path_header + "/login.jsp");
                                } else {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            ");
      out.print(session.getAttribute("user_name"));
      out.write(" \n");
      out.write("                            ");
 }
                            
      out.write("\n");
      out.write("                            \n");
      out.write("\n");
      out.write("                        </span>\n");
      out.write("                             <div class=\"pull-right\">\n");
      out.write("                                 <a href=\"");
      out.print( request.getContextPath());
      out.write("/pages/logout.jsp\" style=\"color: #000000;\" class=\"btn btn-default btn-flat\"><b><i class=\"fa fa-sign-out\"></i>&nbsp;Sign out</b></a>\n");
      out.write("                            </div>\n");
      out.write("                    </a>\n");
      out.write("                            \n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <!-- The user image in the menu login  -->\n");
      out.write("                        <!--              <li class=\"user-header\">\n");
      out.write("                                        <img src=\"dist/img/user2-160x160.jpg\" class=\"img-circle\" alt=\"User Image\">\n");
      out.write("                        \n");
      out.write("                                        <p>\n");
      out.write("                                          Alexander Pierce - Web Developer\n");
      out.write("                                          <small>Member since Nov. 2012</small>\n");
      out.write("                                        </p>\n");
      out.write("                                      </li>\n");
      out.write("                        <!-- Menu Body -->\n");
      out.write("                        <!--              <li class=\"user-body\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                          <div class=\"col-xs-4 text-center\">\n");
      out.write("                                            <a href=\"#\">Followers</a>\n");
      out.write("                                          </div>\n");
      out.write("                                          <div class=\"col-xs-4 text-center\">\n");
      out.write("                                            <a href=\"#\">Sales</a>\n");
      out.write("                                          </div>\n");
      out.write("                                          <div class=\"col-xs-4 text-center\">\n");
      out.write("                                            <a href=\"#\">Friends</a>\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                                         /.row \n");
      out.write("                                      </li>\n");
      out.write("                        <!-- Menu Footer-->\n");
      out.write("                        <li class=\"user-footer\">\n");
      out.write("                            <div class=\"pull-left\">\n");
      out.write("                                <a href=\"#\" class=\"btn btn-default btn-flat\" style=\"color: #000000;\"><b><i class=\"fa fa-gears\"></i>&nbsp; Profile</b></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"pull-right\">\n");
      out.write("                                <a href=\"../pages/logout.jsp\" style=\"color: #000000;\" class=\"btn btn-default btn-flat\"><b><i class=\"fa fa-sign-out\"></i>&nbsp;Sign out</b></a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <!-- Control Sidebar Toggle Button -->\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\" data-toggle=\"control-sidebar\"></a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</header>");
      out.write("            \n");
      out.write("            <!--end of header-->           \n");
      out.write("            <!-- start of sidebar -->\n");
      out.write("            ");
      out.write("<aside class=\"main-sidebar\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");

        String context_path_sidebar = request.getContextPath();
        String utypes = "";
        if (session.getAttribute("user_type") != null || !session.getAttribute("user_type").equals("")) {
            utypes = session.getAttribute("user_type").toString();
        }
    
      out.write("\n");
      out.write("\n");
      out.write("    <!-- sidebar: style can be found in sidebar.less -->\n");
      out.write("    <section class=\"sidebar\">\n");
      out.write("        <!--*******************************************************-->\n");
      out.write("        <!-- Sidebar user panel (optional) -->\n");
      out.write("        <!--*******************************************************-->      \n");
      out.write("        <div class=\"user-panel\">\n");
      out.write("            <div class=\"pull-left image\">\n");
      out.write("                <img src=\"../img/photo3.jpg\" alt=\"Girl in a jacket\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"pull-left info\">\n");
      out.write("                <p>\n");
      out.write("                    Welcome : ");
      out.print(session.getAttribute("user_name"));
      out.write(" \n");
      out.write("                </p>\n");
      out.write("                Status \n");
      out.write("                <a href=\"#\"><i class=\"fa fa-circle text-success\"></i> Online</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--*******************************************************-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Sidebar Menu -->\n");
      out.write("        <!--**********************************-->\n");
      out.write("        <!-- sidebar menu: : style can be found in sidebar.less -->\n");
      out.write("        <ul class=\"sidebar-menu\" data-widget=\"tree\">\n");
      out.write("            <li class=\"header\">SRFSRS</li>\n");
      out.write("            <li class=\"active treeview menu-open\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <i class=\"fa fa-dashboard\"></i> <span>User Management</span>\n");
      out.write("                    <span class=\"pull-right-container\">\n");
      out.write("                        <i class=\"fa fa-angle-left pull-right\"></i>\n");
      out.write("                    </span>\n");
      out.write("                </a>\n");
      out.write("                <ul class=\"treeview-menu\">\n");
      out.write("                    ");
if (utypes.equalsIgnoreCase("system admin")) {
      out.write("\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/Dashboard/admindashboard.jsp\"><i class=\"fa fa-circle-o\"></i>Home</a></li>\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/createuser_supervisor.jsp\"><i class=\"fa fa-circle-o\"></i>Create Supervisor</a></li>\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/assign_supervisor_area.jsp\"><i class=\"fa fa-circle-o\"></i>Assign Supervisor Area</a></li>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\n");
      out.write("                    ");
if (utypes.equalsIgnoreCase("supervisor")) {
      out.write("\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/Dashboard/surpervisordashboard.jsp\"><i class=\"fa fa-circle-o\"></i>Home</a></li>\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/createuser_supervisor.jsp\"><i class=\"fa fa-circle-o\"></i>Create Surveyor </a></li>\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/assign_surveyor_area.jsp\"><i class=\"fa fa-circle-o\"></i>Assign Surveyor Area</a></li>\n");
      out.write("                     <li class=\"treeview\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <i class=\"fa fa-files-o\"></i>\n");
      out.write("                    <span>Reports</span>\n");
      out.write("                    <span class=\"pull-right-container\">\n");
      out.write("                        <span class=\"label label-primary pull-right\">3</span>\n");
      out.write("                    </span>\n");
      out.write("                </a>\n");
      out.write("                <ul class=\"treeview-menu\">\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/Reports/districtWiseMis.jsp\"><i class=\"fa fa-circle-o\"></i> Districts Wise</a></li>\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/assign_surveyor_area.jsp\"><i class=\"fa fa-circle-o\"></i> Block Wise</a></li>\n");
      out.write("                    <li><a href=\"");
      out.print(context_path_sidebar);
      out.write("/pages/assign_surveyor_area.jsp\"><i class=\"fa fa-circle-o\"></i> Panchayat Wise</a></li>\n");
      out.write("                   \n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("           \n");
      out.write("\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("        <!-- /.sidebar-menu -->\n");
      out.write("    </section>\n");
      out.write("    <!-- /.sidebar -->\n");
      out.write("</aside>");
      out.write("           \n");
      out.write("            <!-- End of Sidebar -->\n");
      out.write("            <div class=\"content-wrapper\">\n");
      out.write("                <!-- Content Header (Page header) -->\n");
      out.write("                <section class=\"content-header\">\n");
      out.write("                </section>\n");
      out.write("                <!-- Main content -->\n");
      out.write("                <section class=\"content container-fluid\">\n");
      out.write("                    <!--################################ BASIC INFORMATION PANEL ########################################-->\n");
      out.write("                    <section class=\"content\">                      \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div class=\"panel-group\">\n");
      out.write("                                    <div class=\"panel panel-primary\">\n");
      out.write("                                        <div class=\"panel-heading\">\n");
      out.write("                                            <strong>");
      out.print(lbluser);
      out.write(" (Basic Information)</strong>\n");
      out.write("                                        </div>                                      \n");
      out.write("                                        <div class=\"panel-body\">\n");
      out.write("                                          <form class=\"form-horizontal form-group-sm\" role=\"form\" id=\"frmId\" name=\"frmName\" method=\"post\"  >\n");
      out.write("                                              <div class=\"form-group\">\n");
      out.write("                                                  <div class=\"col-md-2\" style=\"text-align: right;\">\n");
      out.write("                                                    <label for=\"username\" class=\"col-md-0 control-label\" >Name<span style=\"color:red\">*</span></label>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                  <div class=\"col-md-3\">\n");
      out.write("                                                        \n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"username\" placeholder=\"Username\">\n");
      out.write("                                                        <span id=\"err_username\"></span>\n");
      out.write("                                                    </div>\n");
      out.write("                                                  <div class=\"col-md-2\" style=\"text-align: right;\">\n");
      out.write("                                                    <label for=\"fname\" class=\"col-md-0 control-label\" >Father Name<span style=\"color:red\">*</span></label>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                  <div class=\"col-md-3\">\n");
      out.write("                                                        \n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"fname\" placeholder=\"Father Name\">\n");
      out.write("                                                        <span id=\"err_username\"></span>\n");
      out.write("                                                    </div>\n");
      out.write("                                              </div>\n");
      out.write("                                              \n");
      out.write("                                              <div class=\"form-group\">\n");
      out.write("                                                  <div class=\"col-md-2\" style=\"text-align: right;\">\n");
      out.write("                                                    <label for=\"user_mobile\" class=\"col-md-0 control-label\" >Mobile No.<span style=\"color:red\">*</span></label>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                  <div class=\"col-md-3\">\n");
      out.write("                                                        \n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"user_mobile\" placeholder=\"Mobile No.\">\n");
      out.write("                                                        <span id=\"err_user_mobile\"></span>\n");
      out.write("                                                    </div>\n");
      out.write("                                                  <div class=\"col-md-2\" style=\"text-align: right;\">\n");
      out.write("                                                    <label for=\"uemail\" class=\"col-md-0 control-label\" >Email Id<span style=\"color:red\">*</span></label>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                  <div class=\"col-md-3\">\n");
      out.write("                                                        \n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"uemail\" placeholder=\"Email Id\">\n");
      out.write("                                                        <span id=\"err_username\"></span>\n");
      out.write("                                                    </div>\n");
      out.write("                                              </div>\n");
      out.write("                                              <div class=\"form-group\">\n");
      out.write("                                                  <div class=\"col-md-2\" style=\"text-align: right;\">\n");
      out.write("                                                    <label for=\"udob\" class=\"col-md-0 control-label\" >Date of Birth<span style=\"color:red\">*</span></label>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                  <div class=\"col-md-3\">\n");
      out.write("                                                     \n");
      out.write("                                                      <div class=\"input-group date\" id=\"datepicker\">\n");
      out.write("                                            <input type=\"text\" name=\"udob\" id=\"udob\" class=\"form-control\" />\n");
      out.write("                                            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-th\"></i></span>\n");
      out.write("                                        </div>\n");
      out.write("                                                  </div> \n");
      out.write("                                                   <div class=\"col-md-2\" style=\"text-align: right;\">\n");
      out.write("                                                    <label for=\"uType\" class=\"col-md-0 control-label\" >Type of User<span style=\"color:red\">*</span></label>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                  <div class=\"col-md-3\">\n");
      out.write("                                                 \n");
      out.write("                                                      <select id=\"uType\" class=\"form-control\">\n");
      out.write("                                                         ");
      out.write("\n");
      out.write("                                                          \n");
      out.write("                                                          ");
 
                                                         
                                                          
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
                                                          
      out.write("\n");
      out.write("                                                          <option value=\"");
      out.print(rs.getString("designation_name"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("designation_name"));
      out.write("</option>\n");
      out.write("                                                          \n");
      out.write("                                                          ");
} }catch(Exception Ex){
                                                              
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
                                                        }
      out.write("\n");
      out.write("                                                      </select>\n");
      out.write("                                                  </div> \n");
      out.write("                                              </div>\n");
      out.write("                                              \n");
      out.write("                                              \n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"lbl_btn\" class=\"col-md-6 control-label\"></label>\n");
      out.write("                                                    <div class=\"col-md-6\">\n");
      out.write("                                                        <button type=\"button\" class=\"btn btn-primary\" id=\"btn_success\" onclick=\"save_basic_info();\">Save</button>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <div class=\"col-md-5 col-md-offset-7\">\n");
      out.write("                                                        All fields with an asterisk(<span style=\"color:red; font-size: medium; font-weight: bold;\"> * </span>) mark are mandatory.  \n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </form><!--end of frmId-->\n");
      out.write("                                        </div><!--end of panel-body-->\n");
      out.write("                                    </div><!--end of primary-panel-->\n");
      out.write("                                </div><!--EOF panel-group-->           \n");
      out.write("                            </div><!--/.col-md-12-->\n");
      out.write("                        </div><!--/.row-->                        \n");
      out.write("                    </section><!-- /.content -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </section>\n");
      out.write("                <!-- /.content -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.content-wrapper -->\n");
      out.write("            <!-- Main Footer -->\n");
      out.write("            ");
      out.write("<footer class=\"main-footer\" style=\"background-color: #3C8DBC;\">\n");
      out.write("    <p class=\"text-center\" style=\"color: white;\"><strong><b>Powered By: National Informatic Centre, Tripura State Centre\n");
      out.write("            </b></strong></p>\n");
      out.write("</footer>");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Add the sidebar's background. This div must be placed\n");
      out.write("             immediately after the control sidebar -->\n");
      out.write("\n");
      out.write("            <!--js/jquery.min.js-->\n");
      out.write("\n");
      out.write("            <div class=\"control-sidebar-bg\"></div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"../js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap-datepicker.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("             $('.date').datepicker({\n");
      out.write("            clearBtn: true,\n");
      out.write("            format: \"yyyy-mm-dd\",\n");
      out.write("            autoclose: true\n");
      out.write("            \n");
      out.write("        });\n");
      out.write("                        function fill_subDiv_dropdown(code) {\n");
      out.write("                                                                $.ajax({\n");
      out.write("                                                                    type: 'POST',\n");
      out.write("                                                                    url: \"");
      out.print(context_path_);
      out.write("/Districtslv\",\n");
      out.write("                                                                    data: {\n");
      out.write("                                                                        Element: \"subDiv_dropdown\",\n");
      out.write("                                                                        Code: code\n");
      out.write("                                                                    },\n");
      out.write("                                                                    success: function (data) {   // success callback function\n");
      out.write("                                                                        //alert(data);\n");
      out.write("                                                                        document.getElementById(\"mSubList\").innerHTML = data;\n");
      out.write("                                                                    }\n");
      out.write("                                                                });\n");
      out.write("                                                                }\n");
      out.write("                        function fill_localBody_dropdown(code) {\n");
      out.write("                                                                $.ajax({\n");
      out.write("                                                                    type: 'POST',\n");
      out.write("                                                                    url: \"");
      out.print(context_path_);
      out.write("/Districtslv\",\n");
      out.write("                                                                    data: {\n");
      out.write("                                                                        Element: \"localBody_dropdown\",\n");
      out.write("                                                                        Code: code\n");
      out.write("                                                                    },\n");
      out.write("                                                                    success: function (data) {   // success callback function\n");
      out.write("                                                                        //alert(data);\n");
      out.write("                                                                        document.getElementById(\"localBody\").innerHTML = data;\n");
      out.write("                                                                    }\n");
      out.write("                                                                });\n");
      out.write("                                                                }\n");
      out.write("                                                              \n");
      out.write("\n");
      out.write("           \n");
      out.write("\n");
      out.write("\n");
      out.write("                                                            function save_basic_info() {\n");
      out.write("                                                            \n");
      out.write("                                                                var formJsonData = {};\n");
      out.write("                                                                if (typeof formJsonData.addformJsonData === \"undefined\") {\n");
      out.write("                                                                    formJsonData.addformJsonData = [];\n");
      out.write("                                                                    i = 0;\n");
      out.write("                                                                } else {\n");
      out.write("                                                                    i = formJsonData.addformJsonData.length;\n");
      out.write("                                                                }\n");
      out.write("                                                                 \n");
      out.write("                                                                formJsonData.addformJsonData.push({});\n");
      out.write("                                                                formJsonData.addformJsonData[i]['username'] = $('#username').val();\n");
      out.write("                                                                formJsonData.addformJsonData[i]['usermobile'] = $(\"#user_mobile\").val();\n");
      out.write("                                                                formJsonData.addformJsonData[i]['useremail_id'] = $(\"#uemail\").val();\n");
      out.write("                                                                formJsonData.addformJsonData[i]['fathersname'] = $(\"#fname\").val();\n");
      out.write("                                                                formJsonData.addformJsonData[i]['userdob'] = $(\"#udob\").val();\n");
      out.write("                                                                 formJsonData.addformJsonData[i]['uType'] = $(\"#uType\").val();\n");
      out.write("                                                                \n");
      out.write("                                                                var formData = JSON.stringify(formJsonData);\n");
      out.write("                                                                alert(formData);\n");
      out.write("                                                                $.ajax({\n");
      out.write("                                                                    type: 'POST',\n");
      out.write("                                                                    url: \"");
      out.print(context_path_);
      out.write("/Save_Basic_Info\",\n");
      out.write("                                                                    data: {\n");
      out.write("                                                                        Basic_info_data: formData\n");
      out.write("                                                                    },\n");
      out.write("                                                                    success: function (data) {   // success callback function\n");
      out.write("                                                                        alert(data);\n");
      out.write("                                                                    }\n");
      out.write("                                                                });\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script src=\"../js/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"../js/adminlte.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
