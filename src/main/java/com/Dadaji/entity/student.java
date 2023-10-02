package com.Dadaji.entity;

public class student {
	
	String Name;
	String passWord;
	String course;
	String roll;
	String email;
	String contact;
	
	public student()
	{
		
	}
	public student(String name, String passWord, String course, String roll, String email, String contact) {
		
		this.Name = name;
		this.passWord = passWord;
		this.course = course;
		this.roll = roll;
		this.email = email;
		this.contact = contact;
	}
	
	public student(String name, String passWord)
	{
		this.Name = name;
		this.passWord = passWord;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getRoll() {
		return roll;
	}
	public void setRoll(String roll) {
		this.roll = roll;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	

}
