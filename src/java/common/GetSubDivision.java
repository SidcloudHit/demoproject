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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 *
 * @author tapash
 */
public class GetSubDivision extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            System.out.println("data1:" + request.getParameter("districtId"));
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
        PrintWriter out = response.getWriter();
        
        PreparedStatement pstm = null;
        Connection conn = null;
        ResultSet rs = null;
        //String getSub_Query = "SELECT lgd_subdivision_code,subdivision_name FROM tbl_subdivision where lgd_district_code=?";
        String getSub_Query = "SELECT get_lgd_data(?)";
        Dbconnection dbc = new Dbconnection();
                conn = dbc.getConnection();
        
        JSONArray jarray = new JSONArray();
        JSONObject item_sub = new JSONObject();
        JSONObject item_mc = new JSONObject();
        JSONObject item = new JSONObject();
        JSONObject obj = new JSONObject();
        String jsonString = null;
        String subDivison=null;
        String corporation=null;
        String mulicipality=null;
        String nagar=null;
        String block=null;
        String adc=null;
               
        try {
            //con = conMaker.getConnection();
            pstm = conn.prepareStatement(getSub_Query);
            pstm.setString(1, request.getParameter("districtId"));
            rs = pstm.executeQuery();
            if (rs.next()) {
                jsonString = rs.getString(1);
                
            }
            String[] jsonarrSplit = jsonString.split("],");
            for (int i = 0; i < jsonarrSplit.length; i++) {
                subDivison=jsonarrSplit[i]+"]";
                corporation=jsonarrSplit[i+1]+"]";
                mulicipality=jsonarrSplit[i+2]+"]";
                nagar=jsonarrSplit[i+3]+"]";
                block=jsonarrSplit[i+4]+"]";
                adc=jsonarrSplit[i+5];
                break;
            }
            
            item_sub.put("sublist", subDivison);
            item_mc.put("corlist", mulicipality);
            item_mc.put("mclist", mulicipality);
            item.put("sublist", subDivison);
            item.put("corlist", corporation);
            item.put("mclist", mulicipality);
            item.put("nplist", nagar);
            item.put("blocklist", block);
            item.put("adclist", adc);
            jarray.add(item);
                       
            obj.put("lgd", jarray);
            //System.out.println("data:" + item.toString());
            out.write(obj.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
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
