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
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Administrator
 */
public class Save_Basic_Info extends HttpServlet {

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
        try {
            System.err.println("hi");
            String json_data = request.getParameter("Basic_info_data");
            JSONObject jsonobj = new JSONObject(json_data);
            // String encsek = (String)jsonobj.get("Result");
            out.println("Save successfully");

        } catch (Exception e) {
            e.printStackTrace();
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
        // processRequest(request, response);
        PrintWriter out = response.getWriter();

        PreparedStatement pstm = null;
        Connection conn = null;
        ResultSet rs = null;

        HttpSession session = request.getSession();
        String useremail_id = "";
        String username = "";
        String userpassword = "Tripura@123";
        String usermobile = "";
        int mpin = 0;
        String deviceid = "";
        String fathersname = "";
        java.sql.Date userdob = null;
        String usertype = "";
        String utype = "";
        JSONObject outerObject;
        int supervisor_id = 0, user_surveyor_id = 0;
        String supervisor_name = "";
        try {
            Dbconnection dbc = new Dbconnection();

            if (session.getAttribute("user_type") != null && !session.getAttribute("user_type").equals("")) {
                utype = session.getAttribute("user_type").toString();
               
            }
            if (session.getAttribute("uid") != null && !session.getAttribute("uid").equals("")) {
                supervisor_id = Integer.parseInt(session.getAttribute("uid").toString());
            }

            if (session.getAttribute("user_name") != null && !session.getAttribute("user_name").equals("")) {
                supervisor_name = session.getAttribute("user_name").toString();
            }
            String json_data = request.getParameter("Basic_info_data");
            JSONObject jsonobj = new JSONObject(json_data);
            JSONArray jsonArray = jsonobj.getJSONArray("addformJsonData");

            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject basicdata = jsonArray.getJSONObject(i);

                useremail_id = basicdata.getString("useremail_id");
                username = basicdata.getString("username");
                usermobile = basicdata.getString("usermobile");
                fathersname = basicdata.getString("fathersname");
                userdob = Date.valueOf(basicdata.getString("userdob"));
                usertype=basicdata.getString("uType");
            }

            conn = dbc.getConnection();

            String Query = "INSERT INTO public.tbl_mas_user(useremail_id, username, userpassword, usermobile, mpin, "
                    + "deviceid, fathersname, userdob, usertype) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?);";
            pstm = conn.prepareStatement(Query);
            pstm.setString(1, useremail_id);
            pstm.setString(2, username);
            pstm.setString(3, userpassword);
            pstm.setString(4, usermobile);
            pstm.setInt(5, mpin);
            pstm.setString(6, deviceid);
            pstm.setString(7, fathersname);
            pstm.setDate(8, userdob);
            pstm.setString(9, usertype);
            if (pstm.executeUpdate() > 0) {
                if (utype.equalsIgnoreCase("supervisor")) {

                    String qsupid = "SELECT userid from  tbl_mas_user WHERE useremail_id=? AND username=? AND usermobile=? AND userdob=? AND usertype=?";
                    pstm = conn.prepareStatement(qsupid);
                    pstm.setString(1, useremail_id);
                    pstm.setString(2, username);
                    pstm.setString(3, usermobile);
                    pstm.setDate(4, userdob);
                    pstm.setString(5, usertype);
                    rs = pstm.executeQuery();
                    if (rs.next()) {
                        user_surveyor_id = rs.getInt(1);

                    }

                    String Querysup = "INSERT INTO public.tbl_surveyor_supervisor_mapping(user_surveyor_id, "
                            + "surveyor_name, supervisor_id, supervisor_name, mapping_active_yn)"
                            + "VALUES (?, ?, ?, ?, 'Y')";
                    pstm = conn.prepareStatement(Querysup);
                    pstm.setInt(1, user_surveyor_id);
                    pstm.setString(2, username);
                    pstm.setInt(3, supervisor_id);
                    pstm.setString(4, supervisor_name);
                    pstm.executeUpdate();
                }
            }
            out.println("Save successfully");

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
//        System.out.println(request.getParameter("Basic_info_data"));
//        JSONObject outerObject;
//        StringBuffer jsString = new StringBuffer();
//        String userPass = "Tripura@123";
//        Random rand = null;
//        int otp = 0;
//        try {
//            rand = new Random();
//            otp = rand.nextInt(10000);
//            outerObject = new JSONObject(request.getParameter("Basic_info_data"));
//            JSONArray jsonArray = outerObject.getJSONArray("addformJsonData");
//            String s = jsonArray.toString();
//            s = s.replace("[", "");
//            s = s.replace("}]", "");
//            jsString.append(s);
//            jsString.append(',');
//            jsString.append('"');
//            jsString.append("userpassword").append('"').append(":").append('"').append(userPass).append('"');
//            jsString.append(',');
//            jsString.append('"');
//            jsString.append("mpin").append('"').append(":").append('"').append(0).append('"');
//            jsString.append(',');
//            jsString.append('"');
//            jsString.append("deviceid").append('"').append(":").append('"').append(0).append('"');
//            jsString.append(',');
//            jsString.append('"');
//            jsString.append("otp").append('"').append(":").append('"').append(otp).append('"');
//            jsString.append("}");
//            System.out.println("ssssssssssssss");
//            System.out.println(jsString);
//            //String[] ele=JSONObject.getNames("Basic_info_data");
//            System.out.println("El:" + jsonArray.length());
//
//            String result = "";
//            String getSub_Query = "SELECT user_registration(?)";
//            Dbconnection dbc = new Dbconnection();
//            conn = dbc.getConnectionnew();
//
//            try {
//                pstm = conn.prepareStatement(getSub_Query);
//                pstm.setString(1, jsString.toString());
//
//                rs = pstm.executeQuery();
//                if (rs.next()) {
//                    result = rs.getString(1);
//
//                }
//                out.write(result);
//            } catch (SQLException ex) {
//                Logger.getLogger(Save_Basic_Info.class.getName()).log(Level.SEVERE, null, ex);
//            }
//
//        } catch (JSONException ex) {
//            Logger.getLogger(Save_Basic_Info.class.getName()).log(Level.SEVERE, null, ex);
//        }
        //JSONObject innerObject = outerObject.getJSONObject("addformJsonData");
        //JSONArray getArray = getObject.getJSONArray("JArray1");

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
