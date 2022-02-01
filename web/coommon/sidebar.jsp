<aside class="main-sidebar">


    <%
        String context_path_sidebar = request.getContextPath();
        String utypes = "";
        if (session.getAttribute("user_type") != null || !session.getAttribute("user_type").equals("")) {
            utypes = session.getAttribute("user_type").toString();
        }
    %>

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!--*******************************************************-->
        <!-- Sidebar user panel (optional) -->
        <!--*******************************************************-->      
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../img/photo3.jpg" alt="Girl in a jacket">
            </div>
            <div class="pull-left info">
                <p>
                    Welcome : <%=session.getAttribute("user_name")%> 
                </p>
                Status 
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!--*******************************************************-->


        <!-- Sidebar Menu -->
        <!--**********************************-->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">SRFSRS</li>
            <li class="active treeview menu-open">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>User Management</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <%if (utypes.equalsIgnoreCase("system admin")) {%>
                    <li><a href="<%=context_path_sidebar%>/pages/Dashboard/admindashboard.jsp"><i class="fa fa-circle-o"></i>Home</a></li>
                    <li><a href="<%=context_path_sidebar%>/pages/createuser_supervisor.jsp"><i class="fa fa-circle-o"></i>Create Supervisor</a></li>
                    <li><a href="<%=context_path_sidebar%>/pages/assign_supervisor_area.jsp"><i class="fa fa-circle-o"></i>Assign Supervisor Area</a></li>
                        <%}%>

                    <%if (utypes.equalsIgnoreCase("supervisor")) {%>
                    <li><a href="<%=context_path_sidebar%>/pages/Dashboard/surpervisordashboard.jsp"><i class="fa fa-circle-o"></i>Home</a></li>
                    <li><a href="<%=context_path_sidebar%>/pages/createuser_supervisor.jsp"><i class="fa fa-circle-o"></i>Create Surveyor </a></li>
                    <li><a href="<%=context_path_sidebar%>/pages/assign_surveyor_area.jsp"><i class="fa fa-circle-o"></i>Assign Surveyor Area</a></li>
                     <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>Reports</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">3</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=context_path_sidebar%>/pages/Reports/districtWiseMis.jsp"><i class="fa fa-circle-o"></i> Districts Wise</a></li>
                    <li><a href="<%=context_path_sidebar%>/pages/assign_surveyor_area.jsp"><i class="fa fa-circle-o"></i> Block Wise</a></li>
                    <li><a href="<%=context_path_sidebar%>/pages/assign_surveyor_area.jsp"><i class="fa fa-circle-o"></i> Panchayat Wise</a></li>
                   
                </ul>
            </li>
                        <%}%>
                        <%-- <li class="active"><a href="<%=context_path_sidebar%>/pages/economic_activity.jsp"><i class="fa fa-circle-o"></i>Economic Activity</a></li>  --%>
                </ul>
            </li>
           

        </ul>

        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>