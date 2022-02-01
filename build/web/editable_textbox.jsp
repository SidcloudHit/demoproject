<%-- 
    Document   : editable_textbox
    Created on : 28 Jan, 2022, 5:14:53 PM
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
        var jsonData = '[{"rank":"1","content":"Dipankar","UID":"1"},{"rank":"2","content":"Tala","UID":"2"},{"rank":"3","content":"ajay","UID":"3"},{"rank":"4","content":"suresh","UID":"4"},{"rank":"5","content":"rajesh","UID":"5"},{"rank":"6","content":"Brajesh","UID":"6"}]';

        $.ajax({
            url: '<%=request.getContextPath()%>/dynamic',
            type: 'POST',
            data: {
                'jsondata': jsonData
            },
            success: function (response) {
               // alert(response);
                response = JSON.parse(response);
                var trHTML = '';
                $.each(response, function (i, item) {
                    trHTML += '<tr><td><input type="text" id=rank' + item.UID + '  value=' + item.rank + ' name=' + item.rank + '></td><td><input type="text" id=Content' + item.UID + '  value=' + item.content + ' name=' + item.content + '></td></td><td><input type="text" id=UID' + item.UID + '  value=' + item.UID + ' name=' + item.UID + '></td><td><a type="btn"  id=btn_edit' + item.UID + ' onclick="loadTweets(' + item.UID + ')" >Edit Me!</a><a type="btn"  id=btn_save' + item.UID + ' onclick="save(' + item.UID + ')" >Save Me!</a></td></tr>';
                });
                $('#records_table').append(trHTML);
                $("input").prop('disabled', true);
                
            }
        });
    </script>
    
    <script type="text/javascript">
        function loadTweets(i){
           // alert(i);
           $("#records_table :input").attr("disabled", true);
            //var childCount = ($('#parent_2').get(0).rowIndex - $('#parent_1').get(0).rowIndex) - 1;
            var rank = "rank"+i;
            var Content = "Content"+i;
            var UID = "UID"+i;
            //alert(rank);
            $("#"+rank).prop("disabled", false);
            $("#"+Content).prop("disabled", false);
            $("#"+UID).prop("disabled", false);
           // $("#"+btn_save).show();
            //alert($("#"+UID).val() + $("#"+Content).val() +$("#"+rank).val());
            return true;
        } 
    </script>
    
    <script type="text/javascript">
        function save(i){
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
