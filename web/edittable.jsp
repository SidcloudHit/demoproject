<%-- 
    Document   : edittable
    Created on : 28 Jan, 2022, 4:46:30 PM
    Author     : Dipankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        var jsonData = '[{"rank":"9","content":"Alon","UID":"5"},{"rank":"6","content":"Tala","UID":"6"}]';

        $.ajax({
            url: '<%=request.getContextPath()%>/dynamic',
            type: 'POST',
            data: {
                'jsondata': jsonData
            },
            success: function (response) {
                alert(response);
                response = JSON.parse(response);
                var trHTML = '';
                $.each(response, function (i, item) {
                    trHTML += '<tr><td>' + item.rank + '</td><td>' + item.content + '</td><td>' + item.UID + '</td><td><button type="button"  id=' + item.UID + ' onclick="loadTweets(' + item.UID + ')" >Click Me!</button></td></tr>';
                });
                $('#records_table').append(trHTML);
            }
        });
    </script>
    
    <script type="text/javascript">
        function loadTweets(i){
            alert(i);
            return true;
        } 
    </script>
    
    <body>
        <table id="records_table" border='1'>
            <tr>
                <th>Rank</th>
                <th>Content</th>
                <th>UID</th>
                <th>Edit</th>
            </tr>
        </table>
    </body>
</html>
