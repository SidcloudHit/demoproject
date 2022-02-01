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
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class loginslv extends HttpServlet {

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
        String context_path = request.getContextPath();
        try {
            if (request.getParameter("username") != null && request.getParameter("password") != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                Connection conn = null;
                Dbconnection dbc = new Dbconnection();
               conn = dbc.getConnection();
               // conn = DriverManager.getConnection("jdbc:postgresql://10.183.9.112:5433/survey", "postgres", "postgres");
                String login_status = "";
                common.User_login check_login = new common.User_login();
                login_status = check_login.get_login_status(conn, username, password);
                if (login_status != null) {

                    String[] parts = login_status.split("~");
                    String user_name = parts[0]; // 004
                    String uid = parts[1];
                    String utype = parts[2];
                    HttpSession session = request.getSession();
                    session.setAttribute("user_name", user_name);
                    session.setAttribute("uid", uid);
                    session.setAttribute("user_type", utype);
                    
                    if(utype.equalsIgnoreCase("system admin"))
                    {
                         response.sendRedirect(context_path + "/pages/Dashboard/admindashboard.jsp");
                    }
                    if(utype.equalsIgnoreCase("supervisor"))
                    {
                         response.sendRedirect(context_path + "/pages/Dashboard/surpervisordashboard.jsp");
                    }
                    
                   
                }else{
                   response.sendRedirect(context_path + "/login.jsp"); 
                }
            }

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
