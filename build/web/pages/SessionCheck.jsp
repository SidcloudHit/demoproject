<%-- 
    Document   : SessionCheck
    Created on : 28 Sep, 2020, 1:41:31 PM
    Author     : acer
--%>

<%
if(session.getAttribute("uid")!=null)
{
    
}
else
{
    %>
    <script language="javascript">
        alert("Usr Session Expired!!Login please..");
        window.top.location="../login.jsp";
    </script>
<%
}
%>
