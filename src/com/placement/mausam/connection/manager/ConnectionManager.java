package com.placement.mausam.connection.manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionManager
{
	public static void closeConnection(final Connection conn) {
		try {
			conn.close();
		} catch (final SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	public static void openConnection(final String DRIVER, final String CONNECTION_URL) {
		try {
			Class.forName(DRIVER);
			final Connection conn = DriverManager.getConnection(CONNECTION_URL);
		} catch (final SQLException sqle) {
			sqle.printStackTrace();
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		}
	}
	
	public static void closeResultSet(final ResultSet rs) {
		try {
			rs.close();
		} catch (final SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	public static void closePreparedStatement(final PreparedStatement pstmt) {
		try {
			pstmt.close();
		} catch (final SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	
}