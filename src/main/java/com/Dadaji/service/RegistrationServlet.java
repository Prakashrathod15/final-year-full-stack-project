package com.Dadaji.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dadaji.Business.Authentication;
import com.Dadaji.entity.student;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		String studentName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		String course = request.getParameter("course");
		String rollno = "123455";
		String email = request.getParameter("email");
		String contactno = request.getParameter("contact");
		
		student student = new student(studentName,passWord,course,rollno,email,contactno);
		PrintWriter out = response.getWriter();
		
		Authentication var = new Authentication();
		HttpSession session = request.getSession();
		
		if(var.registration(student))
		{
			session.setAttribute("login"," Please login in Your Profile ");
		    response.sendRedirect("login.jsp");
		}else {
			session.setAttribute("login","Already registered please here ");
		    response.sendRedirect("login.jsp");
		}
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

