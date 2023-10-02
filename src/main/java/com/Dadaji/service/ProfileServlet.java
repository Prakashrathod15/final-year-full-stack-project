package com.Dadaji.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	    request.getRequestDispatcher("link.jsp").include(request, response);
		
		HttpSession session = request.getSession(false);
		String name = (String) session.getAttribute("user");
		if(name!=null)
		{
			out.print(" Hello Mr. "+name);
		}else {
			out.println("<h3>please login first </h3> <a href='login.jsp' > login </a> ");
			//request.getRequestDispatcher("login.jsp").include(request, response);
		}
		
		out.close();
		
		
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
