package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editable_005fdatatable_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <link href=\"https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"https://cdn.datatables.net/select/1.3.4/css/select.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"https://cdn.datatables.net/datetime/1.1.1/css/dataTables.dateTime.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"https://editor.datatables.net/extensions/Editor/css/editor.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/select/1.3.4/js/dataTables.select.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/datetime/1.1.1/js/dataTables.dateTime.min.js\"></script>\n");
      out.write("    <script src=\"https://editor.datatables.net/extensions/Editor/js/dataTables.editor.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("        var jsonData = '[{\"DT_RowId\": \"row_1\",\"first_name\": \"Tiger\",\"last_name\": \"Nixon\",\"position\": \"System Architect\",\"email\": \"t.nixon@datatables.net\",\"office\": \"Edinburgh\",\"extn\": \"5421\",\"age\": \"61\",\"salary\": \"320800\",\"start_date\": \"2011-04-25\"},{\"DT_RowId\": \"row_2\",\"first_name\": \"Garrett\",\"last_name\": \"Winters\",\"position\": \"Accountant\",\"email\": \"g.winters@datatables.net\",\"office\": \"Tokyo\",\"extn\": \"8422\",\"age\": \"63\",\"salary\": \"170750\",\"start_date\": \"2011-07-25\"},{\"DT_RowId\": \"row_3\",\"first_name\": \"Ashton\",\"last_name\": \"Cox\",\"position\": \"Junior Technical Author\",\"email\": \"a.cox@datatables.net\",\"office\": \"San Francisco\",\"extn\": \"1562\",\"age\": \"66\",\"salary\": \"86000\",\"start_date\": \"2009-01-12\"}]';\n");
      out.write("        var editor; // use a global for the submit and return data rendering in the examples\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $.ajax({url: \"");
      out.print(request.getContextPath());
      out.write("/dynamic\",\n");
      out.write("                context: document.body,\n");
      out.write("                data: {\n");
      out.write("                'jsondata': jsonData\n");
      out.write("            },\n");
      out.write("                \n");
      out.write("                success: function (response) {\n");
      out.write("//                    alert(\"done\");\n");
      out.write("                    alert(response);\n");
      out.write("                   // var data_value = JSON.stringify(response);\n");
      out.write("                    var employeedata = \"\";\n");
      out.write("                    rclist = JSON.parse(response);\n");
      out.write("                    console.log(rclist);\n");
      out.write("                 \n");
      out.write("             \n");
      out.write("                    $.each(rclist, function (key, value)\n");
      out.write("                    {\n");
      out.write("\n");
      out.write("                        employeedata += '<tr>';\n");
      out.write("                        employeedata += '<td>' + value.DT_RowId + '</td>';\n");
      out.write("                        employeedata += '<td>' + value.first_name + '</td>';\n");
      out.write("                        employeedata += '<td><button type=\"button\" id='hhh' onclick=\"mydetails(' + value.DT_RowId + ')\">Click Me!</button></td>';\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                     \n");
      out.write("                        employeedata += '</tr>';\n");
      out.write("                    });\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                    ///  datatable body\n");
      out.write("                    $('#tbody1').append(employeedata);\n");
      out.write("                     //  datatable table id\n");
      out.write("                    $('#example').DataTable();\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("    function mydetails(val){\n");
      out.write("        \n");
      out.write("        alert(val);\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table id=\"example\" class=\"display\" cellspacing=\"0\" width=\"100%\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                  \n");
      out.write("                    <th>First name</th>\n");
      out.write("                    <th>Last name</th>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody id=\"tbody1\"></tbody>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
