<%-- 
    Document   : sendSMSTest
    Created on : 25 Apr, 2019, 3:06:00 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //if (session.getAttribute("user_id") != null) {

    String regMsg = "";
    String type = "light";

    if (session.getAttribute("RegMsg") != null) {
        regMsg = session.getAttribute("RegMsg").toString();
        session.removeAttribute("RegMsg");
    }

    if (session.getAttribute("type") != null) {
        type = session.getAttribute("type").toString();
        session.removeAttribute("type");
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRBT || Send SMS Test</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/icheck-material.css">
    </head>
    <body>
        <div class="container">
            
<%
            String path = request.getContextPath();
        %>

                    <div class="card mb-3">
                        <div class="card-header">
                            <h4 class="text-primary">Send SMS Test:</h4>
                        </div>
                        <div class="card-body bg-form">
                            <form id="frmSendSMS" action="<%=path%>/SendMessage" method="post">
                                <div class="form-group row">                                                  
                                    <div class="input-group mb-3  col-md-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">Mobile Number :</span>
                                        </div>                            
                                        <input type="text" id="txtMobileNo" name="txtMobileNo" size="10" class="form-control form-control-sm" value="" required="required"/>
                                    </div>
                                    <div class="input-group mb-3  col-md-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon2">Message :</span>
                                        </div>                            
                                        <input type="text" id="txtMessage" name="txtMessage" size="100" class="form-control form-control-sm" value="" required="required"/>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <button type="submit" id="btnSendSMS" name="btnSendSMS" class="btn btn-primary" >
                                            Send SMS    
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
