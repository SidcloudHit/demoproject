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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tapash Majumder
 */
public class svlt_survey_info extends HttpServlet {

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
         HttpSession session = request.getSession(false);
        PrintWriter out = response.getWriter();
       String json_data = request.getParameter("Basic_info_data");
       String dist_code="";
                 String dist_name="";
                String sub_vid_code="";
                String sub_vid_name="";
                String local_body_code="";
                String local_body_name="";
                String local_are_code="";
                String local_are_name="";
                String uid="";
                int res=0;
                Connection conn = null;
                Dbconnection dbc = new Dbconnection();
                PreparedStatement ps = null;
                common.save_survey_info ssi=new common.save_survey_info();
                 int desid=0;
         String lbluser="";
          String utype="";
          if (session.getAttribute("user_type") != null || !session.getAttribute("user_type").equals("")) {
           utype=session.getAttribute("user_type").toString();    
           }
          if(utype!=null && utype.equalsIgnoreCase("system admin")){
          desid=2; 
          lbluser="Create supervisor User";
          }
          if(utype!=null && utype.equalsIgnoreCase("supervisor")){
         desid=3;   
         lbluser="Create surveyor";
         }
       
       try{
                    int surveylength=0;
       String survey_info[] = json_data.split("\\|");
 
     
          conn = dbc.getConnection(); 
      //invst= this.getInvestigation().split("|"); 
       surveylength=json_data.split("\\|").length;
       for(int i=0;i<surveylength;i++){
           dist_code=survey_info[i].split("~")[0];
           dist_name=survey_info[i].split("~")[1];
           sub_vid_code=survey_info[i].split("~")[2];
           sub_vid_name=survey_info[i].split("~")[3];
           local_body_code=survey_info[i].split("~")[4];
           local_body_name=survey_info[i].split("~")[5];
           local_are_code=survey_info[i].split("~")[6];
           local_are_name=survey_info[i].split("~")[7];
           uid=survey_info[i].split("~")[8];
           if(utype!=null && utype.equalsIgnoreCase("system admin")){
             res=  ssi.savesupervisordata(Integer.parseInt(dist_code), dist_name, Integer.parseInt(sub_vid_code), sub_vid_name, Integer.parseInt(local_body_code), local_body_name, Integer.parseInt(local_are_code), local_are_name, Integer.parseInt(uid), conn);   
           }else{
           res=  ssi.savesurveydata(Integer.parseInt(dist_code), dist_name, Integer.parseInt(sub_vid_code), sub_vid_name, Integer.parseInt(local_body_code), local_body_name, Integer.parseInt(local_are_code), local_are_name, Integer.parseInt(uid), conn);    
           }
         
           
             
           
          
          
       } 
       if(res>0){
       out.println("Save successfully");    
       }else{
         out.println("Error In saving..");     
       }
       
       }catch(Exception Ex){
           
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
