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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author acer
 */
public class SlvtAdminDashboard extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement pstm = null;
        Connection conn = null;
        ResultSet rs = null;
        int tot = 0;
        int flag = 0;
        JSONObject jsonsupeervisor;
        JSONArray supeervisordetails = new JSONArray();
        JSONObject supeervisordetail = new JSONObject();

        HttpSession session = request.getSession();
        String utype = "";
        try {
            Dbconnection dbc = new Dbconnection();
            conn = dbc.getConnection();
            if (session.getAttribute("user_type") != null && !session.getAttribute("user_type").equals("")) {
                utype = session.getAttribute("user_type").toString();
            }
            if (request.getParameter("flagType") != null) {
                flag = Integer.parseInt(request.getParameter("flagType").toString());
            }
            if (flag == 1) {
                String Query = "SELECT userid,username,usermobile,useremail_id,COALESCE(fathersname,'') as fathersname FROM tbl_mas_user WHERE usertype='supervisor'";
                pstm = conn.prepareStatement(Query);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    jsonsupeervisor = new JSONObject();
                    jsonsupeervisor.put("UID", rs.getString("userid"));
                    jsonsupeervisor.put("UNAME", rs.getString("username"));
                    jsonsupeervisor.put("UMOB", rs.getString("usermobile"));
                    jsonsupeervisor.put("UEMAIL", rs.getString("useremail_id"));
                    jsonsupeervisor.put("UFATHER", rs.getString("fathersname"));
                    supeervisordetails.put(jsonsupeervisor);
                    tot++;
                }
                supeervisordetail.put("SUPERVISORLIST", supeervisordetails);
                supeervisordetail.put("TOTSUPERVISOR", tot);
                out.println(supeervisordetail.toString());
            }
            if (flag == 2) {
                int userid = 0;
                if (request.getParameter("userid") != null) {
                    userid = Integer.parseInt(request.getParameter("userid").toString());
                }
                String Query = "SELECT dist_name,subdiv_name,block_name,panchaayet_name from tbl_supervisor_area Where userid=?";
                pstm = conn.prepareStatement(Query);
                pstm.setInt(1, userid);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    jsonsupeervisor = new JSONObject();
                    jsonsupeervisor.put("DIST", rs.getString("dist_name"));
                    jsonsupeervisor.put("SUBDIV", rs.getString("subdiv_name"));
                    jsonsupeervisor.put("BLOCK", rs.getString("block_name"));
                    jsonsupeervisor.put("PANCHAAYAT", rs.getString("panchaayet_name"));
                   
                    supeervisordetails.put(jsonsupeervisor);
                   // tot++;
                }
                supeervisordetail.put("SUPERVISORAREALIST", supeervisordetails);
                
                out.println(supeervisordetail.toString());
            }
        } catch (Exception e) {
            // e.printStackTrace();
            out.println(e.getMessage().toString());
        } finally {
            try {
                if (rs != null) {

                    rs.close();

                }
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(Save_Basic_Info.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
