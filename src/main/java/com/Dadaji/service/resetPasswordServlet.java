package com.Dadaji.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dadaji.Business.Authentication;
import com.Dadaji.dataAccess.dataAccess;
import com.Dadaji.entity.student;

@WebServlet("/resetPasswordServlet")
public class resetPasswordServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		String userName = request.getParameter("userName");
		String newPassWord = request.getParameter("passWord");
		
		student student = new student(userName,newPassWord);
		Authentication user = new Authentication();
		int status = user.verify(student);
		
		
		// status == 0 New user 
	    // status == 1 user Name match but pass not 
		// status == 3 both match
		
		if(status==1)
		{
			dataAccess obj = new dataAccess();
			obj.resetPassword(student);
			response.sendRedirect("relogin.html");
		}else if(status==0){
			response.sendRedirect("firstRegister.html");
		}else {
			PrintWriter out = response.getWriter();
			out.println(" Error Ocuured ");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
