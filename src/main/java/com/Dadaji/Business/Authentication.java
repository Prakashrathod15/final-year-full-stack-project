package com.Dadaji.Business;
import java.sql.SQLException;

import com.Dadaji.dataAccess.dataAccess;
import com.Dadaji.entity.student;

public class Authentication {
	
	public int verify(student student) 
	{
		dataAccess obj = new dataAccess();
		int status = 0;
		try {
			status = obj.newUser(student);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean registration(student student)
	{
		dataAccess obj = new dataAccess();
		int status = 0;
		try {
			status = obj.newUser(student);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		boolean var = false;
		if(status==0)
		{
			try {
				obj.save(student);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
			var = true;
		}else if(status==1 || status==3)
		{
			var = false;
		}
		
		return var;
	}

}
