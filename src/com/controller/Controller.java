package com.controller;

import com.beans.Admin;
import com.beans.User;
import com.model.Modify;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controller
extends HttpServlet {
    private static final long serialVersionUID = 1;
    //test comment
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
        	request.setAttribute("msg", null);
        	request.setAttribute("msg1", null);
            request.getRequestDispatcher("index.jsp").forward((ServletRequest)request, (ServletResponse)response);
        } else {
            this.doPost(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
    	String action = request.getParameter("action");
        String id = request.getParameter("id");
        String status=request.getParameter("status");
        
        String username = request.getParameter("username");
        
        PrintWriter out = response.getWriter();
        
        if (action.equals("doLogin")) {
             
            String password = request.getParameter("password");
            User account = new User();
            boolean flag = false;
            try {
                flag = account.process(username, password);
                
            }
            catch (Exception e) {
                e.printStackTrace();
                
                request.setAttribute("msg",e);
        		request.getRequestDispatcher("login.jsp").forward((ServletRequest)request, (ServletResponse)response);

            }
            if (flag) {
                account = null;
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                
                request.getRequestDispatcher("home.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
            	
            	 Admin account1 = new Admin();
                  flag = false;
                  
                  try {
                      flag = account1.process(username, password);
                     
                  }
                  catch (Exception e) {
                      e.printStackTrace();
              		request.getRequestDispatcher("updateuser.jsp").forward((ServletRequest)request, (ServletResponse)response);

                      
                  }
                  
                  
                  
            	if(flag){
            		
            		 account1=null;
            		
            		request.getRequestDispatcher("adminhome.jsp").forward((ServletRequest)request, (ServletResponse)response);
            		
            		
            		
            	}
            	else{
            	
                request.setAttribute("msg", "Invalid Login Credentials");
                request.setAttribute("msg1", null);
                request.getRequestDispatcher("index.jsp").forward((ServletRequest)request, (ServletResponse)response);
            	  }
            	}
        }
        
        if (action.equals("register")) {
            
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String college = request.getParameter("college");

        	String mobile = request.getParameter("mob");
            Admin account = new Admin();
            Date dNow = new Date( );
		      SimpleDateFormat ft = 
		      new SimpleDateFormat ("yyyy-MM-dd hh:mm a");

		      String date=ft.format(dNow);
			
            
        try {
			account.registeruser(date,firstname, lastname, email, college, mobile);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
           
        account=null;
        request.setAttribute("msg", null);
        request.setAttribute("msg1", "Thank You");
        request.getRequestDispatcher("index.jsp").forward((ServletRequest)request, (ServletResponse)response);

        
        }
        
 if (action.equals("change_pass_request")) {
	 
	 request.setAttribute("msg","");
            
request.getRequestDispatcher("pass.jsp").forward((ServletRequest)request, (ServletResponse)response);

        
        }
        
        if (action.equals("change_password")) {
            

    		
            Admin account = new Admin();
            String new_password=request.getParameter("npass");
    		
            
        try {
			account.changePassword(username,new_password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
        account=null;
        request.setAttribute("msg","Password Changed Succefully");
    	request.getRequestDispatcher("pass.jsp").forward((ServletRequest)request, (ServletResponse)response);

        
        }
        
        
        
        
        if (action.equals("test") && id.equals("1") && status.equals("TAKE TEST")) {
        	
        	
        	
        	 Modify t1=new Modify();
        	 
        	try {
				t1.change(username, 1);
        		
        		Modify.createSolution1(username,"mock1");
        		
			} catch (Exception e) {
			  out.print(e);
			}
        	
        	
      
        

        	 HttpSession session = request.getSession();
             session.setAttribute("testpaper","mock1");
             session.setAttribute("exam","Mock1_exam");
             
        	request.getRequestDispatcher("mock1_ins.jsp").forward((ServletRequest)request, (ServletResponse)response);
             
             
             
         
        
        }
        
 if (action.equals("feedback")) {
            

		
            Modify account = new Modify();
    		String testname = request.getParameter("testname");
    		String comment=request.getParameter("comments");

            Date dNow = new Date( );
		      SimpleDateFormat ft = 
		      new SimpleDateFormat ("yyyy-MM-dd hh:mm a");

		      String date=ft.format(dNow);
			
            
        try {
			account.giveFeedback(date,testname, username, comment);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		} 
        account=null;
           
    	request.getRequestDispatcher("feedback.jsp").forward((ServletRequest)request, (ServletResponse)response);

        
        }


        
        
        if (action.equals("test") && id.equals("1") && status.equals("VIEW SOLUTION")) {
        	
        	HttpSession session = request.getSession();
        	 session.setAttribute("testpaper1","mock1");
            request.getRequestDispatcher("solution1.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
       
        
        
        if (action.equals("rank") && id.equals("1") && status.equals("VIEW SOLUTION")) {
        	
        	Modify t1=new Modify();
        	int myrank=0;
        	
        	try {
				myrank=t1.checkrank1(username,"mock1");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	
        	t1=null;
        	
        	if(myrank==0)
        		request.setAttribute("myrank","");
        	else
        		request.setAttribute("myrank","Your Rank = "+myrank);
        	
        	request.setAttribute("test","mock1");
        	
            request.getRequestDispatcher("ranking.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        
        if (action.equals("add_user")) {
           
            request.getRequestDispatcher("newuser.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        if (action.equals("add_user1")) {
        	
        	
        	String firstname=request.getParameter("firstname");
        	String lastname=request.getParameter("lastname");
        	String date=request.getParameter("dob");
            String  contact_no=request.getParameter("contact_no");
        	String email=request.getParameter("email");
        	String username1=request.getParameter("username");
        	String password=request.getParameter("password");
        	
        	Admin t1=new Admin();
        	
        	try {
				t1.adduser(firstname,lastname,date,contact_no,email,username1,password);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	
        	t1=null;
        	
        	
            request.getRequestDispatcher("adminhome.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        if (action.equals("update_user")) {
            
            request.getRequestDispatcher("updateuser.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        
  if (action.equals("update_user1")) {
            
	  	String username1=request.getParameter("username");
	  	
	  	 request.setAttribute("username1", username1);
            request.getRequestDispatcher("updateuser1.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
  
  if (action.equals("update_user2")) {
      

  	String firstname=request.getParameter("firstname");
  	String lastname=request.getParameter("lastname");
  	String date=request.getParameter("dob");
  	int contact_no=Integer.parseInt(request.getParameter("contact_no"));
  	String email=request.getParameter("email");
  	String username1=request.getParameter("username");
  	String password=request.getParameter("password");
  	Admin t1=new Admin();
  	
  	try {
		t1.updateuser(firstname,lastname,date,contact_no,email,username1,password);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	t1=null;
	
	
  	
          request.getRequestDispatcher("adminhome.jsp").forward((ServletRequest)request, (ServletResponse)response);
      }
  
       
        if (action.equals("home")) {
            request.getRequestDispatcher("home.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        
        if (action.equals("log-out1")) {
        	response.setContentType("text/html");  
           
            HttpSession session=request.getSession();  
            session.setAttribute("username",null);  
            request.setAttribute("msg", null);
            request.setAttribute("msg1", null); 
          
           
           
            request.getRequestDispatcher("index.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        if (action.equals("home1")) {
            request.getRequestDispatcher("adminhome.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        
        
    }
}