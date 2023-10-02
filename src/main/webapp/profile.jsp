<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Dadaji.entity.student,com.Dadaji.service.loginServlet" %> 
<%@ page import="java.util.List" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="profile.css">
</head>
<body>
   <%
       student st = (student)session.getAttribute("user");
       
   
   %>

    <div class="navbar">
        <a href="Welcome_page.html">Home</a>
        <a href="https://www.linkedin.com/in/prakash-rathod-8b8279226/">LinkedIn</a>
        <a href="LogoutServlet">Logout</a>
        
    </div>

      <div class="container">
         
        <div class="box1">
            <h1 id="sing"> Student Profile </h1>
            <form action="loginServlet">
                     <div class="innerbox">
                        <div class="cl">
                        <input id="studentName" type="text"  name="userName" >
                        <p class="para fancy-heading ">student Name :<span class=" emphasize colorful-text"><%=st.getName()  %><span></span></p><br>
                        
                       </div>
                       <div class="cl">
                        <input id="courseName" type="text"  name="userName" >
                        <p class="para fancy-heading">Course Name :<span class=" emphasize colorful-text"><%=st.getCourse()  %><span></span></p><br>
                        
                       </div>
                       <div class="cl">
                        <input id="rollno" type="text"  name="userName" >
                        <p class="para fancy-heading ">Roll Number:<span class=" emphasize colorful-text"><%=st.getRoll()  %><span></span></p><br>
                        
                       </div>
                       <div class="cl">
                        <input id="email" type="text"  name="userName" >
                        <p class="para fancy-heading ">student Email :<span class=" emphasize colorful-text"><%=st.getEmail()  %><span></span></p>
                        
                       </div>
                       <div class="cl">
                        <input id="contactno" type="text"  name="contactno" >
                        <p class="para fancy-heading ">student contact :<span class=" emphasize colorful-text"><%=st.getContact()  %></span></p>
                        
                       </div>

                       <button type="submit" class="btn"> <a id="loginpage" href="LogoutServlet"> Logout </a> </button>


                     </div>
            </form>


        </div>
        <div class="box2">
            
            <img  id="i"  src="signup-image.jpg" alt="Gilt" >

        </div>

      </div>
      
    
</body>
</html>