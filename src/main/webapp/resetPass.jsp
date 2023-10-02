<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Dadaji.entity.student,com.Dadaji.service.loginServlet,com.Dadaji.dataAccess.dataAccess" %> 
<%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f2f2f2; margin: 0; padding: 0; display: flex; justify-content: center; align-items: center; height: 100vh;">

<div style="background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 20px; border-radius: 5px; text-align: center;">
    <form action="resetPasswordServlet" method="POST" onsubmit="return validate()>
        <h2 style="margin: 0 0 20px; font-size: 24px; color: #333;">Reset Password</h2>
        <p style="font-size: 16px; color: #555;">Enter your new password below.</p>
        <div style="margin: 20px 0;">
            <label for="userName" style="font-weight: bold;">Student Name:</label>
            <input type="text" id="userName" name="userName" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;" onkeyup="checkpassWord(this)" required>
             <error id="msg"></error>
        </div>
        <div style="margin: 20px 0;">
            <label for="password" style="font-weight: bold;">New Password:</label>
            <input type="password" id="passWord" name="passWord" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;" onkeyup="checkpassWord(this)" required>
             <error id="msg"></error>
        </div>
        <div style="margin: 20px 0;">
            <label for="repassWord" style="font-weight: bold;">Confirm Password:</label>
            <input type="password" id="repassWord" name="confirm_password" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;" onkeyup="checkConfirmPassWord(this)" required>
            <error id="alert"></error><br>
        </div>
        <div style="margin: 20px 0;">
            <button type="submit" style="background-color: #007bff; color: #fff; border: none; border-radius: 5px; padding: 10px 20px; font-size: 16px; cursor: pointer; transition: background-color 0.3s;">Reset Password</button>
        </div>
    </form>
</div>
</body>
<script type="text/javascript">
    var passWord = document.getElementById('passWord');
    var flag = 1; // 1- no error & 0 - errors
    
   
    function checkpassWord(element)
    {

        if(element.value.length > 0)
        {
            if(element.value.length < 5)
          {
             document.getElementById('msg').innerText = "Password should be greater than 5 letters";
             flag = 0;
          } else{
             document.getElementById('msg').innerHTML ="";
             flag = 1;
          }
        } else{
            document.getElementById('msg').innerHTML ="";
             flag = 1;
        }
          
    }
    
    function checkConfirmPassWord(elem){

        if(elem.value.length > 0){
            if(elem.value != passWord.value)
            {
                   document.getElementById('alert').innerText = "Confirm password does not match";
                    flag = 0;
                }else{
                document.getElementById('alert').innerText = "";
                flag = 1;
            }
        }else{
            document.getElementById('alert').innerText = "Please Enter confirm password";
            flag = 0;
        }

    }
    function validate()
    {
        if(flag==1)
        {
            return true;
        }else{
             return false;
        }
    }      
</script>
</html>