/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnection;

import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import javax.naming.Context;


/**
 *
 * @author Administrator
 */
public class Dbconnection {
    
    private String dsName;

    public Dbconnection() {
        setDsName("SRFDB");
    }

    public java.sql.Connection getConnection() {
        String _dsName = "";
        //_dsName = "java:/comp/env/jdbc/" + getDsName();
        _dsName = getDsName();
        try {
            
            InitialContext ctx=new InitialContext();
            Context c = (Context) ctx.lookup("java:/comp/env");
            DataSource ds = (DataSource) c.lookup(_dsName);
            try {
                return ds.getConnection();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (NamingException ex) {
            ex.printStackTrace();
        }
        return null;
    }
     public java.sql.Connection getConnectionnew() {
        String _dsName = "";
        java.sql.Connection conn=null;
        //_dsName = "java:/comp/env/jdbc/" + getDsName();
       
        try {
            
          
            try {
                return conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/survey", "postgres", "postgres");
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public String getDsName() {
        return dsName;
    }

    public void setDsName(String dsName) {
        this.dsName = dsName;
    }
    
}
