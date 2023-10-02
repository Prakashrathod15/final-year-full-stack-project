<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sing Up</title>
    <link rel="stylesheet" href="Registration.css">
    
</head>
<body>
    <div class="container">
             
        <div class="box1">
            <h1 id="sing"> Sign up </h1>
            <form action="RegistrationServlet" method="post" onsubmit="return validate()">  
                <div class="innerbox">
                 <img id="user"  src="user-solid.svg">
                 <input id="userName" type="text" placeholder="   Your Name" name="userName" required><br>
                 <img id="mail"  src="envelope-solid.svg">
                 <input id="email" type="text" placeholder="   Your email" name="email"   onkeyup="emailvalidate(this)" required>
                 <error id="emailAlert"></error><br>
                 <label for="course"><img id="courseIcon"  src="graduation-cap-solid.svg"></label>
                 <select id="courseSelection" name="course" required>
                 <option value="volvo">Course </option>
                 <option value="MCA_first_year">MCA ( first  year )</option>
                 <option value="MCA_second_year">MCA ( second year )</option>
                 </select> <br>
                 <img id="pass"  src="lock-solid.svg">
                 <input id="passWord" type="password" placeholder="   Password" name="passWord" onkeyup="checkpassWord(this)" required>
                 <error id="msg"></error><br>
                 <img id="repass"  src="repeat-solid.svg">
                 <input id="repassWord" type="password" placeholder="   Repeat Your password" name="repassWord" onkeyup="checkConfirmPassWord(this)" required>
                 <error id="alert"></error><br>
                 <img id="contact_icon"  src="address-book-solid.svg">
                 <input id="contact" type="text" placeholder="   Contact no" name="contact" onkeyup="validateContact(this)">
                 <error id="contactAlert"></error><br>
                 
                 <div id="rem">
                    <input id="check_box" type="checkbox" name="remember" required> I agree of statements in Terms of services </label>
                    <error id="show"></error>
                </div>

                <button type="submit" class="btn"> Register </button>
                </div>
            </form> 


        </div>
        <div class="box2">
            <img  id="i"  src="signup-image.jpg" alt="Gilt" >
            <a id="loginpage" href="login.jsp">I am already member</a>

        </div>





    </div>  
</body>
<script type="text/javascript">
    var passWord = document.getElementById('passWord');
    var flag = 1; // 1- no error & 0 - errors
    var email = document.getElementById('email');

    function validateContact(element)
    {
        
        if(element.value.length > 0)
        {  
              if(element.value.length==10)
              {
                
                var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
                if(element.value.match(phoneno))
                  {
                        document.getElementById('contactAlert').innerText = "";
                        flag = 1;
	               }
                 else
                   {
                          document.getElementById('contactAlert').innerText = "Please Enter valide phone number";
	                      flag = 1;
                    }
              }else{
                  document.getElementById('contactAlert').innerText = "Enter 10 Digit phone number";
                  flag = 1;
              }
        } else{
            document.getElementById('contactAlert').innerText = "";
            flag = 1;
        }


    }

    function emailvalidate(element)
    {
        var mailFormat =  /\S+@\S+\.\S+/;
        if(email.value.length > 0)
        {
            if (element.value.match(mailFormat)) 
             {
                 document.getElementById('emailAlert').innerText = "";
                 flag = 1;
            } else
               {
                   document.getElementById('emailAlert').innerText = "Enter valide email id";
                    flag = 0;
    
        }
        }else{

            document.getElementById('emailAlert').innerText = "";
            flag = 1;

        }
        
        
    }

   
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