/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class User_login {
    
    
    
    public String get_login_status(java.sql.Connection conn, String username, String password) throws java.sql.SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String username_pass = "";
        String uid = "";
        String user_type = "";
        String query = "SELECT userid as uid, username as uname, userpassword as password,usertype FROM tbl_mas_user where username =? AND userpassword=?";
        String status = "";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                //status = rs.getInt(1);
                username_pass = rs.getString("uname");
                uid = rs.getString("uid");
                user_type = rs.getString("usertype");
                status = username_pass + "~" + uid+ "~" + user_type;
            }
            
            
        } catch (SQLException ex) {
            throw ex;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
        return status;
    }

    
    
    
    
}
