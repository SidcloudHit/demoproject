<%-- 
    Document   : logout
    Created on : Jul 6, 2020, 4:08:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <%
        String context_path = request.getContextPath();
        session.invalidate();
        response.sendRedirect(context_path+"/login.jsp");
    %>
    <body>       
    </body>
</html>
