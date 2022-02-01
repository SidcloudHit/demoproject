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

/**
 *
 * @author Administrator
 */
public class Districtslv extends HttpServlet {

    Connection conn = null;
        Dbconnection dbc = new Dbconnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String district_dropdown = "";
       
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
        

        if (request.getParameter("Element").equals("district_dropdown")) {
           conn = dbc.getConnection(); 

            String query = "select distinct dist_code,dist_name from master_dist_sd_block_bac_gp;";
            try {
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                district_dropdown = "<option value=\"0\">Please Select</option>";
                // district_dropdown += "<select name=\"ddl_district\" class=\"form-control input-sm\" id=\"ddl_district\" onchane=\"alert('hi')\">";
                while (rs.next()) {
                    district_dropdown += "  <option value=\"" + rs.getString("dist_code") + "\">" + rs.getString("dist_name") + "</option>";
                }
                //   district_dropdown += "</select>";

                out.print(district_dropdown);
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
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
        }
        if (request.getParameter("Element").equals("subDiv_dropdown")) {
            String subDiv_dropdown = "";
           conn = dbc.getConnection();
            String district_code = request.getParameter("Code");
            String query = "SELECT distinct subdiv_code, subdiv_name FROM master_dist_sd_block_bac_gp where dist_code=?;";
            try {
                ps = conn.prepareStatement(query);
                ps.setInt(1, Integer.parseInt(district_code));
                rs = ps.executeQuery();
                subDiv_dropdown += "<option value=\"0\">Please Select</option>";
                // district_dropdown += "<select name=\"ddl_district\" class=\"form-control input-sm\" id=\"ddl_district\">";
                while (rs.next()) {
                    subDiv_dropdown += "  <option value=\"" + rs.getString("subdiv_code") + "\">" + rs.getString("subdiv_name") + "</option>";
                }
                // district_dropdown += "</select>";
                out.print(subDiv_dropdown);
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
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
        }
        if (request.getParameter("Element").equals("localBody_dropdown")) {
            
        String localBody_dropdown = "";
        
            conn = dbc.getConnection();
            String subDiv_code = request.getParameter("Code");
            //String block_code = request.getParameter("Block_code");
            String query = "SELECT distinct block_code, block_name FROM master_dist_sd_block_bac_gp where subdiv_code=?";
            try {
                ps = conn.prepareStatement(query);
                ps.setInt(1, Integer.parseInt(subDiv_code));
               // ps.setInt(2, Integer.parseInt(district_code));
                rs = ps.executeQuery();
                localBody_dropdown += "<option value=\"0\">Please Select</option>";
                // district_dropdown += "<select name=\"ddl_district\" class=\"form-control input-sm\" id=\"ddl_district\">";
                while (rs.next()) {
                    localBody_dropdown += "  <option value=\"" + rs.getString("block_code") + "\">" + rs.getString("block_name") + "</option>";
                }
                // district_dropdown += "</select>";
                out.print(localBody_dropdown);
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
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
        }
        
        if (request.getParameter("Element").equals("localArea_dropdown")) {
            String localArea_dropdown = "";
            conn = dbc.getConnection();
            String localBody_code = request.getParameter("Code");
            //String block_code = request.getParameter("Block_code");
            String query = "SELECT gp_vc_ward_code, gp_vc_ward_name FROM master_dist_sd_block_bac_gp where block_code=?";
            try {
                ps = conn.prepareStatement(query);
                ps.setInt(1, Integer.parseInt(localBody_code));
               // ps.setInt(2, Integer.parseInt(district_code));
                rs = ps.executeQuery();
                localArea_dropdown += "<option value=\"0\">Please Select</option>";
                // district_dropdown += "<select name=\"ddl_district\" class=\"form-control input-sm\" id=\"ddl_district\">";
                while (rs.next()) {
                    localArea_dropdown += "  <option value=\"" + rs.getString("gp_vc_ward_code") + "\">" + rs.getString("gp_vc_ward_name") + "</option>";
                }
                // district_dropdown += "</select>";
                out.print(localArea_dropdown);
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
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
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
        String userList="";
        if (request.getParameter("Element").equals("userList"))
        {
            conn = dbc.getConnection();
            String query = "Select userid,concat(tbl_mas_user.username,'-',tbl_mas_user.usermobile) as uname from  tbl_mas_user order by uname";
            try {
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                userList += "<tr><td>User Id</td></tr>";
                // district_dropdown += "<select name=\"ddl_district\" class=\"form-control input-sm\" id=\"ddl_district\">";
                while (rs.next()) {
                    userList += "<tr><td>" + rs.getInt("userid") + "</td></tr>";
                }
            }
            catch(SQLException sq)
            {
                sq.printStackTrace();
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
        
    }
        out.print(userList);
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
