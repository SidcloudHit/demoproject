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
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 *
 * @author Tapash Majumder
 */
public class GetDistrictSurveyDetails extends HttpServlet {

    Connection conn = null;
    Dbconnection dbc = new Dbconnection();
    PreparedStatement ps = null;
    ResultSet rs = null;
   

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        response.setContentType("text/html;charset=UTF-8");
         int sl = 1;
        JSONArray arr = new JSONArray();
        JSONObject appObj = new JSONObject();
        JSONObject appDetails = new JSONObject();
        String distCode = request.getParameter("disCode");
        String query = "select b.block_name,b.gp_vc_ward_name,a.total from (\n"
                + "SELECT a.block_code,a.add_gp_adcvc_wardno,count(a.family_id) as total FROM public.tbl_family_basic_info a\n"
                + "where a.dist_code=? group by a.block_code,a.add_gp_adcvc_wardno) a \n"
                + "inner join public.master_dist_sd_block_bac_gp b on a.add_gp_adcvc_wardno=b.gp_vc_ward_code\n"
                + "where  \n"
                + "a.block_code=b.block_code and \n"
                + "a.add_gp_adcvc_wardno=b.gp_vc_ward_code";
        conn = dbc.getConnection();
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(distCode));
            rs = ps.executeQuery();
            while (rs.next()) {
                appDetails.put("sl", sl);
                appDetails.put("block", rs.getString("block_name"));
                appDetails.put("panchayat", rs.getString("gp_vc_ward_name"));
                appDetails.put("total", rs.getString("total"));
                arr.add(appDetails);
                sl++;
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        finally {
                if (rs != null) {
                    try {
                        rs.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(Districtslv.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                if (ps != null) {
                    try {
                        ps.close();
                        conn.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(Districtslv.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        appObj.put("data", arr);
        response.getWriter().print(appObj.toString());
        
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
