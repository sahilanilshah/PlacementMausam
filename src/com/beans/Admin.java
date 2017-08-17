
package com.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Admin {
	 String user = "rootadmin";
	    String passwd = "sahilshah@9";
    String driver = "com.mysql.jdbc.Driver";
  //  String url = "jdbc:mysql://localhost:3306/aptitudedb";
    
    String url="jdbc:mysql://localhost:3306/aptitudedb?user=rootadmin&password=sahilshah@9";
    
    
    private String username;
    private String password;
    Connection con;

    public boolean process(String username, String password) throws Exception {
        this.username = username;
        this.password = password;
        int count = 0;
        db_connect();
        String sql = "select count(*) as count from admin where adminname=? AND adminpassword=?";
        PreparedStatement pstmt = this.con.prepareStatement(sql);
        pstmt.setString(1, this.username);
        pstmt.setString(2, this.password);
        ResultSet rst = pstmt.executeQuery();
        if (rst.next()) {
            count = rst.getInt("count");
        }
        rst.close();
        pstmt.close();
        db_close();
        if (count == 1) {
            return true;
        }
        return false;
    }
    
    
    public void adduser(String firstname,String lastname,String date,String contact_no,String email,String username, String password) throws Exception {
        
       
    	db_connect();
        String sql = "insert into user(name,lastname,dob,mobile,email,username,password) values (?,?,?,?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(sql);
        pstmt.setString(1, firstname);
        pstmt.setString(2, lastname);
        pstmt.setString(3, date);
        pstmt.setString(4, contact_no);
        pstmt.setString(5, email);
        pstmt.setString(6, username);
        pstmt.setString(7, password);
        
        pstmt.executeUpdate();
        pstmt.close();
        
        
      sql = "insert into mocks(srno,testname,duration,marking_scheme,sections,username,password,status) values (?,?,?,?,?,?,?,?)";
         pstmt = this.con.prepareStatement(sql);
        pstmt.setInt(1, 1);
        pstmt.setString(2, "Mock Test 1");
        pstmt.setString(3, "90 Minutes");
        pstmt.setString(4, "No Negative Marking");
        pstmt.setString(5, "Verbal,Logical,Quantitative");
       
        pstmt.setString(6, username);
        pstmt.setString(7, password);
        pstmt.setString(8, "TAKE_TEST");
        
        pstmt.executeUpdate();
        pstmt.close();
        
       
        
        
        db_close();
        
    }
    
    public void updateuser(String firstname,String lastname,String date,int contact_no,String email,String username, String password) throws Exception {
        
        
    	db_connect();
        String sql = "update user set name =?, lastname =?, dob =?, mobile =?, email =?, password =? where username =?";
        PreparedStatement pstmt = this.con.prepareStatement(sql);
        pstmt.setString(1, firstname);
        pstmt.setString(2, lastname);
        pstmt.setString(3, date);
        pstmt.setInt(4, contact_no);
        pstmt.setString(5, email);
        pstmt.setString(6, password);
        pstmt.setString(7,username);
        
        pstmt.executeUpdate();
        pstmt.close();
        
      
        
        db_close();
        
    }
    
    public void registeruser(String date,String firstname,String lastname,String email,String college,String mobile) throws Exception {
        
        
    	db_connect();
        String sql = "insert into register(date,firstname,lastname,email,college,mobile) values (?,?,?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(sql);
        pstmt.setString(1, date);
        pstmt.setString(2, firstname);
        pstmt.setString(3, lastname);
        pstmt.setString(4, email);
        pstmt.setString(5, college);
        pstmt.setString(6, mobile);
      
        
        pstmt.executeUpdate();
        pstmt.close();
        
        
      
       
        
        
        db_close();
        
    }
    
public void changePassword(String username,String new_password) throws Exception {
        
        
    	db_connect();
        String sql = "update user set password =? where username =?";
        PreparedStatement pstmt = this.con.prepareStatement(sql);
        pstmt.setString(1, new_password);
        pstmt.setString(2, username);
       
        pstmt.executeUpdate();
        pstmt.close();
        
      
        
        db_close();
        
    }
    
    
    
    private void db_connect() throws Exception {
		Class.forName(driver);
		con = DriverManager.getConnection(url);
	}

	private void db_close() throws SQLException {

		con.close();
	}	    
    
}