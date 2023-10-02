package com.Dadaji.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dadaji.Business.Authentication;
import com.Dadaji.dataAccess.dataAccess;
import com.Dadaji.entity.student;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	   String userName = request.getParameter("userName");
	   String passWord = request.getParameter("passWord");
	   PrintWriter out = response.getWriter();
	   
	   student student = new student(userName,passWord);
	   Authentication user = new Authentication();
	   int status = user.verify(student);
	   HttpSession ses = request.getSession();
	   
	   
	   // status == 0 New user 
	   // status == 1 user Name match but pass not 
	   // status == 3 both match
	    
	 if(status==3)
	 {
         dataAccess d = new dataAccess();
         student st = d.getStudent(student);
		 ses.setAttribute("user",st);
		 RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
		 rd.forward(request, response);
	 }else if(status==1){
		response.sendRedirect("wrongPass.html");	 
	 }else if(status==0) {
		 response.sendRedirect("firstRegister.html");	
		 
	 }
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
