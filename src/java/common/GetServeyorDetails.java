/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import dbconnection.Dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 *
 * @author Tapash Majumder
 */
public class GetServeyorDetails extends HttpServlet {

    Connection conn = null;
    Dbconnection dbc = new Dbconnection();
    PreparedStatement ps = null;
    ResultSet rs = null;
    int sl = 1;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);
        PrintWriter out = response.getWriter();
        int sl=1;
         int desid=0;
         String lbluser="";
          String utype="";
          if (session.getAttribute("user_type") != null || !session.getAttribute("user_type").equals("")) {
           utype=session.getAttribute("user_type").toString();    
           }
          if(utype!=null && utype.equalsIgnoreCase("system admin")){
          desid=2; 
          lbluser="supervisor";
          }
          if(utype!=null && utype.equalsIgnoreCase("supervisor")){
         desid=3;   
         lbluser="surveyor";
         }
        
            JSONArray arr = new JSONArray();
            JSONObject appObj = new JSONObject();
            JSONObject appDetails = new JSONObject();
            String query = "SELECT userid, useremail_id, username, usermobile,fathersname, to_char(userdob,'DD/MM/YYYY') as udob\n" +
"                           FROM public.tbl_mas_user where usertype=? order by username";
            conn = dbc.getConnection();
            try {
                ps = conn.prepareStatement(query);
                ps.setString(1, lbluser);
                rs = ps.executeQuery();
                while (rs.next()) {
                    appDetails.put("sl", sl);
                    appDetails.put("name", rs.getString("username"));
                    appDetails.put("fname", rs.getString("fathersname"));
                    appDetails.put("dob", rs.getString("udob"));
                    appDetails.put("email", rs.getString("useremail_id"));
                    appDetails.put("mobile", rs.getString("usermobile"));
                    appDetails.put("action", "<input type=\"checkbox\" name=\"userCheckbox\" onclick=\"selectOnlyThis(this,'"+rs.getString("userid")+"')\" id='"+rs.getInt("userid")+"'>");
                    arr.add(appDetails);
                    sl++;
                }
            } catch (SQLException sql) {
                sql.printStackTrace();
            }

            appObj.put("data", arr);
            response.getWriter().print(appObj.toString());

      
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
