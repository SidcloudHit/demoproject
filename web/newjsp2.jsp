<%-- 
    Document   : newjsp2
    Created on : 17 Dec, 2021, 5:46:39 PM
    Author     : Dipankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="<%=request.getContextPath() %>/NewServlet" name="MyForm" id="MyForm" method="post">
        <button class="btn success"> Download Success</button>
        </form>
        <p></p>
        
        
    </body>
</html>
