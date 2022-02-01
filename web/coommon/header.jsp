<header class="main-header">
    <!-- Logo -->
    <%
        String context_path_header = request.getContextPath();
    %>
    <a href="index.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <!--<span class="logo-mini"><b>A</b>LT</span>-->
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>SRFSRS</b></span>

    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->
                
                <!-- /.messages-menu -->

                <!-- Notifications Menu -->
                


                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <b> Welcome <i class="glyphicon glyphicon-user"></i>: &nbsp;</b>
                        <!--<img src="glyphicon glyphicon-user" class="user-image" alt="User Image">-->
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs"> 
                            <%
                                if (session.getAttribute("user_name") == null || session.getAttribute("user_name").equals("")) {
                                    response.sendRedirect(context_path_header + "/login.jsp");
                                } else {
                            %>

                            <%=session.getAttribute("user_name")%> 
                            <% }
                            %>
                            

                        </span>
                             <div class="pull-right">
                                 <a href="<%= request.getContextPath()%>/pages/logout.jsp" style="color: #000000;" class="btn btn-default btn-flat"><b><i class="fa fa-sign-out"></i>&nbsp;Sign out</b></a>
                            </div>
                    </a>
                            
                    <ul class="dropdown-menu">
                        <!-- The user image in the menu login  -->
                        <!--              <li class="user-header">
                                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        
                                        <p>
                                          Alexander Pierce - Web Developer
                                          <small>Member since Nov. 2012</small>
                                        </p>
                                      </li>
                        <!-- Menu Body -->
                        <!--              <li class="user-body">
                                        <div class="row">
                                          <div class="col-xs-4 text-center">
                                            <a href="#">Followers</a>
                                          </div>
                                          <div class="col-xs-4 text-center">
                                            <a href="#">Sales</a>
                                          </div>
                                          <div class="col-xs-4 text-center">
                                            <a href="#">Friends</a>
                                          </div>
                                        </div>
                                         /.row 
                                      </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat" style="color: #000000;"><b><i class="fa fa-gears"></i>&nbsp; Profile</b></a>
                            </div>
                            <div class="pull-right">
                                <a href="../pages/logout.jsp" style="color: #000000;" class="btn btn-default btn-flat"><b><i class="fa fa-sign-out"></i>&nbsp;Sign out</b></a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="#" data-toggle="control-sidebar"></a>
                </li>
            </ul>
        </div>
    </nav>
</header>