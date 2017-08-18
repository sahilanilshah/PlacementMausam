package com.placement.masaum.roles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.placement.mausam.connection.manager.ConnectionManager;

public class User {
    
	private final static String USER = "rootadmin";
	private final static String PASSWORD = "sahilshah@9";
    private final static String DRIVER = "com.mysql.jdbc.Driver";
    private final static String CONNECTION_STRING = "jdbc:mysql://localhost:3306/aptitudedb?";
    private final static String CONNECTION_URL = CONNECTION_STRING + 
    											 "user="+ USER + "&" +
    											 "password="+PASSWORD;
    
    private final static String USER_QUERY = "SELECT " +
    										 "COUNT(*) " +
    										 "AS Count " +
    										 "FROM USER " +
    										 "WHERE username = ? " +
    										 "AND password = ?";
    
    private String userName;
    private String password;
    private Connection conn;

    public boolean process(String userName, String password) throws Exception {
        this.userName = userName;
        this.password = password;
        int count = 0;
        ConnectionManager.openConnection(DRIVER,CONNECTION_URL);
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
        	pstmt = this.conn.prepareStatement(USER_QUERY);
			pstmt.setString(1, this.userName);
			pstmt.setString(2, this.password);
	        rs = pstmt.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt("count");
	        }
	        if (count == 1) {
	            return true;
	        }
	        return false;
        } catch (final SQLException sqle) {
        	sqle.printStackTrace();
        	return false;
		}
        finally {
        	ConnectionManager.closeResultSet(rs);
            ConnectionManager.closePreparedStatement(pstmt);
            ConnectionManager.closeConnection(conn);
        }
    }
}