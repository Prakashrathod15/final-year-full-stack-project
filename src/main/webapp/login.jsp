<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sing in</title>
    <link rel="stylesheet" href="login.css">
    <style>
#alert{
    margin-left: 20px;
    margin-bottom: 20px;
    font-size: 20px;
    color: red;
    text-align: center;
    background-color: white;
}

input[type="text"] {
    caret-color: rgb(27, 160, 221);
}

input {
   padding-left: 10px;
}
    
    </style>
</head>
<body>

    <div class="container">
             <div class="box1">
                  
                <img  id="i"  src="signin-image.jpg" alt="Gilt" >
                <a id="Registerpage" href="Registration.html">Create an account</a>

             </div>
             <div class="box2">
                <h1 id="sing"> Sign in </h1>
                <form action="loginServlet" method="post" onsubmit="return validate()">  
                    <div class="innerbox">
                     <img id="user"  src="user-solid.svg">
                     <input id="userName" type="text" placeholder=" Your Name" name="userName" required><br>
                     <img id="pass"  src="lock-solid.svg">
                     <input id="passWord" type="password" placeholder=" Password" name="passWord" onkeyup="validation(this)" required>
                     <error id="alert"></error><br>
                     
                     <div id="rem">
                        <input id="ch" type="checkbox" name="remember"> Remember me </label>
                    </div>

                    <button type="submit" class="btn"> Log in </button>
                    </div>
                </form> 
             </div>
    </div>
    <script>
         var password = document.getElementById('passWord');
         var flag = 1;

         function validation(element)
         {
        	 if(element.value.length !=0)
             {
               if(element.value.length < 5)
               {
                  document.getElementById('alert').innerText = "Password should be more than 5 latters";
               }else{
                 document.getElementById('alert').innerText = "";
               }
             }else{
                document.getElementById('alert').innerText = ""; 
             }
         }
        
         function validate()
         {
             if(flag==1)
             {
                return true;
             } else{
                return false;
             }
         }


    </script>
         
</body>
</html>