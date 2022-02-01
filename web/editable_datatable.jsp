<%-- 
    Document   : editable_datatable
    Created on : 29 Jan, 2022, 12:17:38 PM
    Author     : Dipankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/select/1.3.4/css/select.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/datetime/1.1.1/css/dataTables.dateTime.min.css" rel="stylesheet" type="text/css" />
    <link href="https://editor.datatables.net/extensions/Editor/css/editor.dataTables.min.css" rel="stylesheet" type="text/css" />


    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.3.4/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/datetime/1.1.1/js/dataTables.dateTime.min.js"></script>
    <script src="https://editor.datatables.net/extensions/Editor/js/dataTables.editor.min.js"></script>
    <script type="text/javascript">

        var jsonData = '[{"DT_RowId": "rr1","first_name": "Tiger","last_name": "Nixon","position": "System Architect","email": "t.nixon@datatables.net","office": "Edinburgh","extn": "5421","age": "61","salary": "320800","start_date": "2011-04-25"},{"DT_RowId": "2","first_name": "Garrett","last_name": "Winters","position": "Accountant","email": "g.winters@datatables.net","office": "Tokyo","extn": "8422","age": "63","salary": "170750","start_date": "2011-07-25"},{"DT_RowId": "3","first_name": "Ashton","last_name": "Cox","position": "Junior Technical Author","email": "a.cox@datatables.net","office": "San Francisco","extn": "1562","age": "66","salary": "86000","start_date": "2009-01-12"}]';
        var editor; // use a global for the submit and return data rendering in the examples
        $(document).ready(function () {
            $.ajax({url: "<%=request.getContextPath()%>/dynamic",
                context: document.body,
                data: {
                'jsondata': jsonData
            },
                
                success: function (response) {
//                    alert("done");
                    alert(response);
                   // var data_value = JSON.stringify(response);
                    var employeedata = "";
                    rclist = JSON.parse(response);
                    console.log(rclist);
                 
             
                    $.each(rclist, function (key, value)
                    {
                        var uu = value.DT_RowId;
                        employeedata += '<tr>';
                        employeedata += '<td>' + value.DT_RowId + '</td>';
                        employeedata += '<td>' + value.first_name + '</td>';
                       // employeedata += '<td><button type="button" id="ggg" onclick="mydetails(' + value.DT_RowId + ')">Click Me!</button></td>';
                      // employeedata += '<td><button type="button" class="btn btn-primary" onclick="mydetails('+value.DT_RowId+');">click</button></td>';
                       employeedata += '<td><button type="button" class="btn btn-primary" onClick="mydetails(\'' + value.DT_RowId + '\')">click</button></td>';
                        employeedata += '</tr>';
                    });
                   
                    ///  datatable body
                    $('#tbody1').append(employeedata);
                     //  datatable table id
                    $('#example').DataTable();



                }
            });
        });

    </script>
    <script type="text/javascript">
    function mydetails(i){
        
        alert(i);
        
    }
    </script>


    <body>
        <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>
                  
                    <th>First name</th>
                    <th>Last name</th>
                    
                </tr>
            </thead>
            <tbody id="tbody1"></tbody>
        </table>
    </body>
</html>
