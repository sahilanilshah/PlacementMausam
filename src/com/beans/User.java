package com.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class User {
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
        Class.forName("com.mysql.jdbc.Driver");
        this.con = DriverManager.getConnection(url);
        String sql = "select count(*) as count from user where username=? AND password=?";
        PreparedStatement pstmt = this.con.prepareStatement(sql);
        pstmt.setString(1, this.username);
        pstmt.setString(2, this.password);
        ResultSet rst = pstmt.executeQuery();
        if (rst.next()) {
            count = rst.getInt("count");
        }
        rst.close();
        pstmt.close();
        this.con.close();
        if (count == 1) {
            return true;
        }
        return false;
    }
}