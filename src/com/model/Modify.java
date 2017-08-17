package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class Modify {
	 String user = "rootadmin";
	    String passwd = "sahilshah@9";
	static String driver = "com.mysql.jdbc.Driver";
  //  String url = "jdbc:mysql://localhost:3306/aptitudedb";
    
	static String url="jdbc:mysql://localhost:3306/aptitudedb?user=rootadmin&password=sahilshah@9";
	   
	     static Connection con;
	     static ResultSet rs = null;
	    
	    public void change(String username,int srno) throws Exception{
	    	
	    	db_connect();
	    	
	    	String sql = "update mocks set status=? where srno=? AND username=?";
	    	PreparedStatement pstmt = con.prepareStatement(sql);

			pstmt.setString(1,"VIEW SOLUTION");
			pstmt.setInt(2,srno);
			pstmt.setString(3,username);
			

			pstmt.executeUpdate();

			pstmt.close();
	    	
	    	
	    	db_close();
	    	
	    	
	    }
	    
	    
public static synchronized  void createSolution1(String username,String testname) throws Exception{
	    	
	    	db_connect();
	    	
	    	ArrayList<Integer> id=new ArrayList<Integer>();
	    	ArrayList<String> section=new ArrayList<String>();
	    	
	    	
	    	ArrayList<String> answer=new ArrayList<String>();
	    	
	    	
	    	int s1;
	        String s2,s8;
	        String sql = ("SELECT * FROM mock_paper where testname=? ORDER BY section, id");
	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, testname);
	      
			rs = pstmt.executeQuery();
			while (rs.next()) {
				
				s1 = rs.getInt("id");
				s2 = rs.getString("section");
				
				s8 = rs.getString("ans");
				
				
			id.add(s1);
			section.add(s2);
			
			answer.add(s8);
			
			
			} // end of while

				rs.close();

				
				 sql = "delete from mock_solution where username=? AND testname=?";
				 pstmt = con.prepareStatement(sql);
				
				 pstmt.setString(1, username);
				 pstmt.setString(2, testname);
				pstmt.executeUpdate();
				pstmt.close();
				
			
			for(int i=0;i<id.size();i++){
				
				 sql = "insert into mock_solution(username,testname,id,section,ans,my_ans) values (?,?,?,?,?,?)";
		         pstmt = con.prepareStatement(sql);
		         pstmt.setString(1, username);
		         pstmt.setString(2, testname);
		        pstmt.setInt(3, id.get(i));
		       
		        pstmt.setString(4, section.get(i));
		      
		        pstmt.setString(5, answer.get(i));
		        pstmt.setString(6, "");
		        
		        pstmt.executeUpdate();
		        pstmt.close();
				
				
				
			}

	    	
	    	db_close();
	    	
	    	
	    }

public void myanswer1(String username,String testname,ArrayList<String> myanswer,String section) throws Exception{
 	
 	db_connect();
 	
 	
 	ArrayList<String> temp=myanswer;
 	
 	for(int i=0;i<temp.size();i++){
 	
    String sql = "update mock_solution set my_ans =? where username =? AND testname=? AND id=? AND section=?";
 	PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,temp.get(i));
		
		pstmt.setString(2,username);
		pstmt.setString(3,testname);
		pstmt.setInt(4,i+1);
		pstmt.setString(5,section);
		
		
		pstmt.executeUpdate();
        pstmt.close();

		
 	}
	
 	db_close();
 	
 	
 	
 	
 }
    
	    
	    
  public static synchronized void giverank1(String username,String testname,int verbal,int logical,int quants,int total) throws Exception{
	    	
	    	db_connect();
	    	
	    	ArrayList<String> usernames=new ArrayList<String>();
	    	ArrayList<Integer> verbals=new ArrayList<Integer>();
	    	
	    	ArrayList<Integer> logicals=new ArrayList<Integer>();
	    	ArrayList<Integer> quantives=new ArrayList<Integer>();
	    	ArrayList<Integer> totals=new ArrayList<Integer>();
	    	
	    	
	    	
	    	
	    	String sql = "insert into ranks(testname,rank,username,verbal,logical,quants,total) values (?,?,?,?,?,?,?)";
	        PreparedStatement pstmt = con.prepareStatement(sql);
	       
	        pstmt.setString(1, testname);
	        pstmt.setInt(2, 1);
	        pstmt.setString(3, username);
	        pstmt.setInt(4, verbal);
	        pstmt.setInt(5, logical);
	        pstmt.setInt(6, quants);
	        pstmt.setInt(7, total);
	        
	       
	        pstmt.executeUpdate();
	        pstmt.close();
	    	
	    	
	    	
	        int s2,s3,s4,s5;
	        String s1;
	        sql = ("SELECT * FROM ranks where testname=? order by total desc");
	         pstmt = con.prepareStatement(sql);

	         pstmt.setString(1, testname);
	         
			rs = pstmt.executeQuery();
			while (rs.next()) {
				
				s1 = rs.getString("username");
				s2 = rs.getInt("verbal");
				s3 = rs.getInt("logical");
				s4 = rs.getInt("quants");
				s5 = rs.getInt("total");
				
			usernames.add(s1);
			verbals.add(s2);
			logicals.add(s3);
			quantives.add(s4);
			totals.add(s5);
			
			} // end of while

				rs.close();

				 sql = "delete from ranks where testname=? ";
			 pstmt = con.prepareStatement(sql);
			
			 pstmt.setString(1, testname);
	         

			pstmt.executeUpdate();
			pstmt.close();
			
			
			for(int i=0;i<totals.size();i++){
				
				 sql = "insert into ranks(testname,rank,username,verbal,logical,quants,total) values (?,?,?,?,?,?,?)";
		         pstmt = con.prepareStatement(sql);
		         
		         pstmt.setString(1, testname);
		        pstmt.setInt(2,i+1);
		        pstmt.setString(3, usernames.get(i));
		        pstmt.setInt(4, verbals.get(i));
		        pstmt.setInt(5, logicals.get(i));
		        
		        pstmt.setInt(6, quantives.get(i));
		        
		        pstmt.setInt(7, totals.get(i));
		        
		       
		        pstmt.executeUpdate();
		        pstmt.close();
				
				
				
			}

	    	
	    	db_close();
	    	
	    	
	    }
 
 public int checkrank1(String username,String testname) throws Exception{
 	
 	db_connect();
 	
 	
 	 int rank=0;

 	
 	
 	String sql = "select rank from ranks where username = ? AND testname=?";
 	PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,username);
		pstmt.setString(2,testname);
		
		rs = pstmt.executeQuery();
		while (rs.next()) {
			
			
			rank = rs.getInt("rank");
			
	
		} // end of while

		

		pstmt.close();
 	rs.close();
 	
 	db_close();
 	
 	return rank;
 	
 	
 }
 
 public ArrayList<String> getanswerkey1(String section,String testname) throws Exception{
	 	
	 	db_connect();
	 	
	 	
	 	ArrayList<String> answers=new ArrayList<String>();

	 	String s1="";
	 	
	 	String sql = "select ans from mock_paper where testname=? AND section = ? order by id";
	 	PreparedStatement pstmt = con.prepareStatement(sql);

			
	 	pstmt.setString(1,testname);
	 	pstmt.setString(2,section);
			
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				
				
				s1 = rs.getString("ans");
				
				answers.add(s1);
				
		
			} // end of while

			

			pstmt.close();
	 	rs.close();
	 	
	 	db_close();
	 	
	 	return answers;
	 	
	 	
	 }
 
 
 public void giveFeedback(String date,String testname,String username,String comment) throws Exception{
 	
 	db_connect();
 	
 	
			String sql = "insert into feedback(date,testname,username,comment) values (?,?,?,?)";
			PreparedStatement   pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, date);
	         pstmt.setString(2, testname);
	         pstmt.setString(3, username);
	         pstmt.setString(4, comment);
		        
	        
	        pstmt.executeUpdate();
	        pstmt.close();
			
			
			
		

 	
 	db_close();
 	
 	
 }

	    
	    
	    private static  void db_connect() throws Exception {
			Class.forName(driver);
			con = DriverManager.getConnection(url);
		}

		private static  void db_close() throws SQLException {

			con.close();
		}	    


}
