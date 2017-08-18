package com.placement.mausam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.placement.mausam.model.Modify;

public class Mock1_exam extends HttpServlet {

	int count = 0;
	int count2 = 0;
	int count3 = 0;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String section = request.getParameter("section");

		if (section.equals("verbal")) {

			ArrayList<String> answers = new ArrayList<String>();

			ArrayList<String> myanswers = new ArrayList<String>();
			count = 0;

			Modify t1 = new Modify();

			String username = request.getParameter("username");
			String testname = request.getParameter("testname");
			int no_of_questions = Integer.parseInt(request
					.getParameter("no_of_questions"));
			String next_page = request.getParameter("redirect_to");

			try {
				answers = t1.getanswerkey1("verbal", testname);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			for (int i = 1; i <= no_of_questions; i++) {

				String choice = request.getParameter(String.valueOf(i));

				if (choice != null) {
					if (choice.equals(answers.get(i - 1)))

					{
						count = count + 1;

					}

					myanswers.add(choice);

				}

				else
					myanswers.add("");

			}

			try {
				t1.myanswer1(username, testname, myanswers, "verbal");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			answers = null;
			myanswers = null;
			t1 = null;

			request.getRequestDispatcher(next_page).forward(
					(ServletRequest) request, (ServletResponse) response);

		}

		if (section.equals("logical")) {

			count2 = 0;

			ArrayList<String> answers = new ArrayList<String>();

			ArrayList<String> myanswers = new ArrayList<String>();

			Modify t1 = new Modify();
			String testname = request.getParameter("testname");
			String username = request.getParameter("username");
			int no_of_questions = Integer.parseInt(request
					.getParameter("no_of_questions"));
			String next_page = request.getParameter("redirect_to");

			try {
				answers = t1.getanswerkey1("logical", testname);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			for (int i = 1; i <= no_of_questions; i++) {

				String choice = request.getParameter(String.valueOf(i));

				if (choice != null) {
					if (choice.equals(answers.get(i - 1)))

					{
						count2 = count2 + 1;

					}

					myanswers.add(choice);

				}

				else
					myanswers.add("");

			}

			try {
				t1.myanswer1(username, testname, myanswers, "logical");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			answers = null;
			myanswers = null;
			t1 = null;
			request.getRequestDispatcher(next_page).forward(
					(ServletRequest) request, (ServletResponse) response);

		}

		if (section.equals("quants")) {

			count3 = 0;

			ArrayList<String> answers = new ArrayList<String>();
			ArrayList<String> myanswers = new ArrayList<String>();
			Modify t1 = new Modify();

			String testname = request.getParameter("testname");
			String username = request.getParameter("username");
			int no_of_questions = Integer.parseInt(request
					.getParameter("no_of_questions"));
			String next_page = request.getParameter("redirect_to");

			try {
				answers = t1.getanswerkey1("quants", testname);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			for (int i = 1; i <= no_of_questions; i++) {

				String choice = request.getParameter(String.valueOf(i));

				if (choice != null) {
					if (choice.equals(answers.get(i - 1)))

					{
						count3 = count3 + 1;

					}

					myanswers.add(choice);

				}

				else
					myanswers.add("");

			}

			try {
				t1.myanswer1(username, testname, myanswers, "quants");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			answers = null;

			myanswers = null;
			t1 = null;
			
			if(next_page.equals("result.jsp")){
			try {

/*				out.println("<h3>You Finished your exam successfully !!!</h3>");
*/
				request.setAttribute("verb_score",String.valueOf(count));
				request.setAttribute("logic_score",String.valueOf(count2));
				request.setAttribute("quants_score",String.valueOf(count3));

				/*
				 * out.println("<h2>Your V Mark is: "+count+"</h2>");
				 * out.println("<h2>Your L Mark is: "+count2+"</h2>");
				 * out.println("<h2>Your Q Mark is: "+count3+"</h2>");
				 */
				int sum = count + count2 + count3;

				// out.println("<h2>Your Total Marks is: "+sum+"</h2>");

				request.setAttribute("total_score",String.valueOf(sum));

				Modify.giverank1(username, testname, count, count2, count3, sum);

				

			} catch (Exception e) {
				out.println("Error: " + e);
			}

			// out.println("<h1><a href='home.jsp'>Home</a></h1>");

			}
			request.getRequestDispatcher(next_page).forward(
					(ServletRequest) request, (ServletResponse) response);

		}

	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}
}
