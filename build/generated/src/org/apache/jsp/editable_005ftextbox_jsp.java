package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editable_005ftextbox_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        var jsonData = '[{\"rank\":\"9\",\"content\":\"Alon\",\"UID\":\"5\"},{\"rank\":\"6\",\"content\":\"Tala\",\"UID\":\"6\"}]';\n");
      out.write("\n");
      out.write("        $.ajax({\n");
      out.write("            url: '");
      out.print(request.getContextPath());
      out.write("/dynamic',\n");
      out.write("            type: 'POST',\n");
      out.write("            data: {\n");
      out.write("                'jsondata': jsonData\n");
      out.write("            },\n");
      out.write("            success: function (response) {\n");
      out.write("                alert(response);\n");
      out.write("                response = JSON.parse(response);\n");
      out.write("                var trHTML = '';\n");
      out.write("                $.each(response, function (i, item) {\n");
      out.write("                    trHTML += '<tr><td><input type=\"text\" id=' + item.UID + ' readonly='true' value=' + item.rank + ' name=' + item.rank + '></td><td><input type=\"text\" id=' + item.content + ' readonly='true' value=' + item.content + ' name=' + item.content + '></td></td><td><input type=\"text\" id=' + item.UID + ' readonly='true' value=' + item.UID + ' name=' + item.UID + '></td><td><button type=\"button\"  id=' + item.UID + ' onclick=\"loadTweets(' + item.UID + ')\" >Click Me!</button></td></tr>';\n");
      out.write("                });\n");
      out.write("                $('#records_table').append(trHTML);\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function loadTweets(i){\n");
      out.write("            alert(i);\n");
      out.write("            $(\"#\"+i).prop(\"readonly\", true);\n");
      out.write("            return true;\n");
      out.write("        } \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <table id=\"records_table\" border='1'>\n");
      out.write("            <tr>\n");
      out.write("                <th>Rank</th>\n");
      out.write("                <th>Content</th>\n");
      out.write("                <th>UID</th>\n");
      out.write("                <th>Edit</th>\n");
      out.write("            </tr>\n");
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
