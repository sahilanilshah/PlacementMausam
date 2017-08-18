package com.placement.masaum.roles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.placement.mausam.connection.manager.ConnectionManager;

public class Admin {
	 
	private final static String USER = "rootadmin";
	private final static String PASSWORD = "sahilshah@9";
    private final static String DRIVER = "com.mysql.jdbc.Driver";
    private final static String CONNECTION_STRING = "jdbc:mysql://localhost:3306/aptitudedb?";
    private final static String CONNECTION_URL = CONNECTION_STRING + 
    											 "user="+ USER + "&" +
    											 "password="+PASSWORD;
    
    private final static String ADMIN_QUERY = "SELECT " +
    										  "COUNT(*) "+
    										  "AS Count " +
    										  "FROM admin " +
    										  "WHERE adminname=? " + 
    										  "AND adminpassword=?";
    
    private final static String INSERT_USER = "INSERT INTO USER " +
    										  "(NAME, LASTNAME, DOB, MOBILE, EMAIL, USERNAME, PASSWORD) " + 
    										  "VALUES (?,?,?,?,?,?,?)";
    
    private final static String INSERT_MOCK = "INSERT INTO MOCKS " +
    										  "(SRNO, TESTNAME, DURATION, MARKING_SCHEME, SECTIONS, " +
    										  "USERNAME, PASSWORD, STATUS) "+
    										  "VALUES (?,?,?,?,?,?,?,?)";
    
    private final static String UPDATE_USER = "UPDATE USER " +
    										  "SET " +
    										  "NAME = ?, " +
    										  "LASTNAME = ?, " +
    										  "DOB = ?, " +
    										  "MOBILE = ?, " +
    										  "EMAIL = ?, " + 
    										  "PASSWORD = ? " +
    										  "WHERE USERNAME = ?";
    
    private final static String REGISTER_USER = "INSERT INTO REGISTER " +
    											"(DATE, FIRSTNAME, LASTNAME, EMAIL, COLLEGE, MOBILE) " +
    											"VALUES (?,?,?,?,?,?)";
    
    private final static String CHANGE_PASSWORD = "UPDATE USER " +
    											  "SET password = ? WHERE username = ?";
    
    private String userName;
    private String password;
    private Connection conn;

    public boolean process(final String userName, final String password) {
        this.userName = userName;
        this.password = password;
        int count = 0;
        ConnectionManager.openConnection(DRIVER,CONNECTION_URL);
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
        	pstmt = this.conn.prepareStatement(ADMIN_QUERY);
			pstmt.setString(1, this.userName);
			pstmt.setString(2, this.password);
	        rs = pstmt.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt("Count");
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
    
    
    public void addUser(final String firstName, 
    					final String lastName, 
    					final String date,
    					final String contact, 
    					final String email, 
    					final String userName, 
    					final String password) {
       
    	ConnectionManager.openConnection(DRIVER,CONNECTION_URL);
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
        	pstmt = this.conn.prepareStatement(INSERT_USER);
        	pstmt.setString(1, firstName);
            pstmt.setString(2, lastName);
            pstmt.setString(3, date);
            pstmt.setString(4, contact);
            pstmt.setString(5, email);
            pstmt.setString(6, userName);
            pstmt.setString(7, password);
            pstmt.executeUpdate();
            
        } catch (final SQLException sqle) {
        	sqle.printStackTrace();
        }
        finally {
        	ConnectionManager.closeResultSet(rs);
            ConnectionManager.closePreparedStatement(pstmt);
        }
        
        try {
        	pstmt = this.conn.prepareStatement(INSERT_MOCK);
            pstmt.setInt(1, 1);
            pstmt.setString(2, "Mock Test 1");
            pstmt.setString(3, "90 Minutes");
            pstmt.setString(4, "No Negative Marking");
            pstmt.setString(5, "Verbal, Logical, Quantitative");
           
            pstmt.setString(6, userName);
            pstmt.setString(7, password);
            pstmt.setString(8, "TAKE_TEST");
            pstmt.executeUpdate();
            
        } catch (final SQLException sqle) {
        	sqle.printStackTrace();
        }
        finally {
        	ConnectionManager.closeResultSet(rs);
            ConnectionManager.closePreparedStatement(pstmt);
            ConnectionManager.closeConnection(conn);
        }
          
    }
    
    public void updateUser(final String firstName,
    					   final String lastName,
    					   final String date,
    					   final int contact,
    					   final String email,
    					   final String userName, 
    					   final String password) {
        
    	ConnectionManager.openConnection(DRIVER,CONNECTION_URL);
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
        	pstmt = this.conn.prepareStatement(UPDATE_USER);
            pstmt.setString(1, firstName);
            pstmt.setString(2, lastName);
            pstmt.setString(3, date);
            pstmt.setInt(4, contact);
            pstmt.setString(5, email);
            pstmt.setString(6, password);
            pstmt.setString(7,userName);
            pstmt.executeUpdate();
        } catch (final SQLException sqle) {
        	sqle.printStackTrace();
       }
        finally {
        	ConnectionManager.closeResultSet(rs);
            ConnectionManager.closePreparedStatement(pstmt);
            ConnectionManager.closeConnection(conn);
        }
    	
    }
    
    public void registerUser(final String date,
    						 final String firstName,
    						 final String lastName,
    						 final String email,
    						 final String college,
    						 final String mobile) {
        
    	ConnectionManager.openConnection(DRIVER,CONNECTION_URL);
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
        	pstmt = this.conn.prepareStatement(REGISTER_USER);
        	pstmt.setString(1, date);
            pstmt.setString(2, firstName);
            pstmt.setString(3, lastName);
            pstmt.setString(4, email);
            pstmt.setString(5, college);
            pstmt.setString(6, mobile);
            pstmt.executeUpdate();
        } catch (final SQLException sqle) {
        	sqle.printStackTrace();
       }
        finally {
        	ConnectionManager.closeResultSet(rs);
            ConnectionManager.closePreparedStatement(pstmt);
            ConnectionManager.closeConnection(conn);
        }
    }
    
    public void changePassword(final String userName,
    						   final String newPassword) {
        
    	ConnectionManager.openConnection(DRIVER,CONNECTION_URL);
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
        	pstmt = this.conn.prepareStatement(CHANGE_PASSWORD);
        	pstmt.setString(1, newPassword);
            pstmt.setString(2, userName);
            pstmt.executeUpdate();
        } catch (final SQLException sqle) {
        	sqle.printStackTrace();
       }
        finally {
        	ConnectionManager.closeResultSet(rs);
            ConnectionManager.closePreparedStatement(pstmt);
            ConnectionManager.closeConnection(conn);
        }
        
    }
           
}