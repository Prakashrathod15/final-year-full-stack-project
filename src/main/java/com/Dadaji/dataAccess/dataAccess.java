package com.Dadaji.dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Dadaji.entity.student;

public class dataAccess {
	
	public int newUser(student student) throws ClassNotFoundException, SQLException
	{
		// database connectivity 
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalYear_I","root","Vinayaksir@2022");
		
		String userName = student.getName();
		String passWord = student.getPassWord();
		
		String query = "select * from student";
		
		Statement stmt = con.createStatement();
		
		ResultSet res = stmt.executeQuery(query);
		
		int result = 0;

		   // status == 0 New user 
		   // status == 1 user Name match but pass not 
		   // status == 3 both match
		
		while(res.next())
		{
			if(userName.equals(res.getString(1)) && passWord.equals(res.getString(2)) )
			{
				result = 3;
			}else if(userName.equals(res.getString(1))){
				result = 1;
			}
						
		}
		stmt.close();
		con.close();
		
		
		return result;
		
	}
	
	public boolean save(student student) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalYear_I","root","Vinayaksir@2022");
		
		PreparedStatement pstmt = con.prepareStatement("insert into student values(?,?,?,?,?,?)");
		
		pstmt.setString(1, student.getName());
		pstmt.setString(2, student.getPassWord());
		pstmt.setString(3, student.getCourse());
		pstmt.setString(4, student.getRoll());
		pstmt.setString(5, student.getEmail());
		pstmt.setString(6, student.getContact());
		
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		
		return true;
	}
	
	public student getStudent(student student)
	{

		student newStudent = new student();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalYear_I","root","Vinayaksir@2022");
			
			String userName = student.getName();
			String passWord = student.getPassWord();
			
			PreparedStatement pstmt = con.prepareStatement("select * from student where Name= ? and password= ?");
			
			pstmt.setString(1,userName);
			pstmt.setString(2, passWord);
						
			ResultSet res = pstmt.executeQuery();
			res.next();
			newStudent.setName(res.getString(1));
			newStudent.setPassWord(res.getString(2));
			newStudent.setCourse(res.getString(3));
			newStudent.setRoll(res.getString(4));
			newStudent.setEmail(res.getString(5));
			newStudent.setContact(res.getString(6));
			
						
			con.close();
			pstmt.close();
			
			return newStudent;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newStudent;
	}
	
	public boolean resetPassword(student student)
	{
		boolean flag = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalYear_I","root","Vinayaksir@2022");
			
			String query = "update student set password = ? where Name = ? ";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, student.getPassWord());
			pstmt.setString(2, student.getName());
			
			
			pstmt.execute();
			pstmt.close();
			con.close();
			

			flag = true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
   

}
