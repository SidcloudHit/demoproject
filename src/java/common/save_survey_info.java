/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import java.sql.ResultSet;

/**
 *
 * @author Tapash Majumder
 */
public class save_survey_info {
    
    public int savesurveydata(int dist_code,String dist_name,int sub_div_code,String sub_div_name,int local_body_code,String local_body_name,int local_are_code,String local_are_name,int uid, java.sql.Connection con) {
        
       java.sql.PreparedStatement pstmt = null;
        ResultSet rs=null;

       int res=0;
        String emergency_contact = "";
//        if (ehospital.HTML.Constants.ernakulum_hospital_id == hospitalID) {
//            emergency_contact = ",coalesce(emergancy_contactno,'') as emergency_contact";
//        }
        String sqlstr = "INSERT INTO public.tbl_user_survey_area(userid, dist_name, survey_dist, subdiv_name, survey_subdiv, block_name, survey_block, panchaayet_name, survey_panchayet) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
           pstmt = con.prepareStatement(sqlstr);
           pstmt.setInt(1, uid);
          pstmt.setString(2, dist_name);
          pstmt.setInt(3, dist_code);
          pstmt.setString(4, sub_div_name);
          pstmt.setInt(5, sub_div_code);
           pstmt.setString(6, local_body_name);
           pstmt.setInt(7, local_body_code);
           pstmt.setString(8, local_are_name);
           pstmt.setInt(9, local_are_code);
           res = pstmt.executeUpdate();
            if (res > 0) {
             res=1;   
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception ex) {
                System.out.println(ex);
            }

        }

        return res;
    }
    public int savesupervisordata(int dist_code,String dist_name,int sub_div_code,String sub_div_name,int local_body_code,String local_body_name,int local_are_code,String local_are_name,int uid, java.sql.Connection con) {
        String hospital = "";
       java.sql.PreparedStatement pstmt = null;
        ResultSet rs=null;

       int res=0;
        String emergency_contact = "";
//        if (ehospital.HTML.Constants.ernakulum_hospital_id == hospitalID) {
//            emergency_contact = ",coalesce(emergancy_contactno,'') as emergency_contact";
//        }
        String sqlstr = "INSERT INTO public.tbl_supervisor_area(userid, dist_name, survey_dist, subdiv_name, survey_subdiv, block_name, survey_block, panchaayet_name, survey_panchayet) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
           pstmt = con.prepareStatement(sqlstr);
           pstmt.setInt(1, uid);
          pstmt.setString(2, dist_name);
          pstmt.setInt(3, dist_code);
          pstmt.setString(4, sub_div_name);
          pstmt.setInt(5, sub_div_code);
           pstmt.setString(6, local_body_name);
           pstmt.setInt(7, local_body_code);
           pstmt.setString(8, local_are_name);
           pstmt.setInt(9, local_are_code);
           res = pstmt.executeUpdate();
            if (res > 0) {
             res=1;   
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception ex) {
                System.out.println(ex);
            }

        }

        return res;
    }
    
    
    
}
