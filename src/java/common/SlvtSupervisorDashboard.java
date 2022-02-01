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
public class SlvtSupervisorDashboard extends HttpServlet {

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
        JSONObject jsonsurveyor;
        JSONArray surveyordetails = new JSONArray();
        JSONObject surveyordetail = new JSONObject();

        HttpSession session = request.getSession();
        String utype = "";
        int sesuserid=0;
        try {
            Dbconnection dbc = new Dbconnection();
            conn = dbc.getConnection();
             if (request.getParameter("flagType") != null) {
                flag = Integer.parseInt(request.getParameter("flagType").toString());
            }
              if (session.getAttribute("uid") != null) {
                sesuserid = Integer.parseInt(session.getAttribute("uid").toString());
            }
            if (request.getParameter("flagType") != null) {
                flag = Integer.parseInt(request.getParameter("flagType").toString());
            }
            if (flag == 1) {
                String Query = "SELECT u.userid,u.username,u.usermobile,u.useremail_id,COALESCE(u.fathersname,'') as fathersname FROM tbl_mas_user u,tbl_surveyor_supervisor_mapping m WHERE u.userid=m.user_surveyor_id AND  u.usertype='surveyor' AND m.supervisor_id=?";
                pstm = conn.prepareStatement(Query);
                pstm.setInt(1,sesuserid);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    jsonsurveyor = new JSONObject();
                    jsonsurveyor.put("UID", rs.getString("userid"));
                    jsonsurveyor.put("UNAME", rs.getString("username"));
                    jsonsurveyor.put("UMOB", rs.getString("usermobile"));
                    jsonsurveyor.put("UEMAIL", rs.getString("useremail_id"));
                    jsonsurveyor.put("UFATHER", rs.getString("fathersname"));
                    surveyordetails.put(jsonsurveyor);
                    tot++;
                }
                surveyordetail.put("SURVEYORLIST", surveyordetails);
                surveyordetail.put("TOTSURVEYOR", tot);
                out.println(surveyordetail.toString());
            }
            if (flag == 2) {
                int userid = 0;
                if (request.getParameter("userid") != null) {
                    userid = Integer.parseInt(request.getParameter("userid").toString());
                }
                String Query = "SELECT dist_name,subdiv_name,block_name,panchaayet_name from tbl_user_survey_area Where userid=?";
                pstm = conn.prepareStatement(Query);
                pstm.setInt(1, userid);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    jsonsurveyor = new JSONObject();
                    jsonsurveyor.put("DIST", rs.getString("dist_name"));
                    jsonsurveyor.put("SUBDIV", rs.getString("subdiv_name"));
                    jsonsurveyor.put("BLOCK", rs.getString("block_name"));
                    jsonsurveyor.put("PANCHAAYAT", rs.getString("panchaayet_name"));

                    surveyordetails.put(jsonsurveyor);
                    // tot++;
                }
                surveyordetail.put("SUPERVISORAREALIST", surveyordetails);

                out.println(surveyordetail.toString());
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
