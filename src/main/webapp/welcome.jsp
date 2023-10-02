<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Dadaji.entity.student,com.Dadaji.service.loginServlet" %> 
<%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
    <link rel="stylesheet" href="Welcome.css">
</head>
<body>
   <%
       student st = (student)session.getAttribute("user");
   
   %>
   <form action="loginServlet">
    <div class="navbar">
        <div class="logo">Hello <%=st.getName() %></div>
        <ul>
            <li><a href="http://sdits.org/Default.aspx">Home</a></li>
            <li><a href="http://sdits.org/TheInstitute.aspx">About</a></li>
            <li><a href="http://sdits.org/AcademicNew.aspx">Academics</a></li>
            <li><a href="http://sdits.org/ContactUs.aspx">Contact</a></li>
        </ul>
        <div class="logout-profile">
            <a href="LogoutServlet">Logout</a>
            <a href="portfolio.jsp">portfolio</a>
            <a href="profile.jsp">Profile</a>
        </div>
    </div>
    <div class="content main">
        
        <h1 id="name">Welcome to Your Shri Dadaji Institute of Technology & Science Student Portal!</h1>
    
        
    </div>
   </form>
</body>
</html>
    