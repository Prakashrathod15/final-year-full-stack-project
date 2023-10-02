<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Protfolio Website</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

.portfolio-container{

    height: 100vh;
    width: 100vw;
    background: blueviolet;
    display: flex;

}

.navlist{
    display: flex;
    gap: 3.5rem;
    height: 15vh;
    width: 100%;
    justify-content: center;
    align-items: center;
    color: white;
    position: fixed;
}

.navlist li{
    list-style:none;
}


.navlist li a{
    text-decoration: none;
    text-transform: uppercase;
    font-size: 1rem;
    background-color: white;
    position: relative;
}

.left-container{
    width: 70%;
    height: 100vh; 
    background: #262525;
    padding-left: 3rem;
    display: flex;
    align-items: center;
}

.right-container{
    width: 30%;
    height:  100vh;
    background: linear-gradient(-45deg,#3877FF,#262525 70%);
    display: flex;
    align-items: center;
}

.icons .fa-brands{
    color:#bbb;
    font-size: 1.7rem;

}

.icons{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 3rem;
    
}

.content{
    margin-left: 4rem;
}

.content .intro{
    font-size: 1.5rem;
    color: white;
}

.content .intro span{
    color:#5DB9EE ;
}
.content h1{
    font-size: 4rem;
    color: #5DB9EE;
}

.content .detail{
    font-size: 1.1rem;
    color: #fff;
    max-width: 38rem;
    margin: 1.1rem 0 3rem 0;
    line-height: 1.8rem;
}

.btn-container button{
    border: .1rem solid #5DB9EE;
    font-size: 1.1rem;
    padding: .8rem 1.5rem;
    border-radius: .5rem;
    cursor: pointer;
    transition: .5s ease;
}

button:nth-child(1){
    background: #5DB9EE;
    color: #262525;
}

button:nth-child(2){
    background: transparent;
    color:#5DB9EE;
    margin-left: 2rem;
}

button:nth-child(1):hover{
    background: transparent;
    color:#5DB9EE;
  
}

button:nth-child(2):hover{
    background: #5DB9EE;
    color:#262525;
  
}

.icons .fa-brands:hover{
    cursor: pointer;
    background: linear-gradient(#3877FF,#3877FF);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.design .circle{
   aspect-ratio: 1;
   position:absolute;
   border-radius: 50%;
   top: 50%;
   left: 70%;
   transform: translate(-50%,-50%);
}

.circle:nth-child(1)
{
   background: linear-gradient(90deg,transparent 50%,#262525 50%);
   width: 33rem;
}
.circle:nth-child(2)
{
   background-image: url("WhatsApp\ Image\ 2023-10-01\ at\ 18.24.05.jpeg");
    width: 25rem;
    background-size: 100%;
    background-repeat: no-repeat;
    border: 1rem solid white;
    box-shadow: 
    0 0 1rem #fff,
    inset 0 0  1rem #fff,
    0 0 2rem #3877FF,
    inset 0 0 2rem #3877FF,
    0 0 4rem #3877FF,
    inset 0 0 4rem #3877FF;
}

.navlist li a::after{
    content: "";
    position: absolute;
    background: #fff;
    width: 0;
    height: .1 rem;
    left: 0;
    bottom: -5px;
    transform: scaleX(0);
    transform-origin: bottom right;
    transition: transform(.5s);
}

.navlist li a:hover{
    transform: scaleX(1);
    transform-origin: bottom left;
}   
    
    
    
    
    </style>
</head>
<body>
       <div class="portfolio-container">
            <ul class="navlist">
                <li><a href="#"></a>Home</li>
                <li><a href="#"></a>Work</li>
                <li><a href="#"></a>About</li>
                <li><a href="https://www.linkedin.com/in/prakash-rathod-8b8279226/"></a>Project</li>
                <li><a href="#"></a>Service</li>
            </ul> 
           
           <div class="left-container">
                <div class="icons">
                    <li class="fa-brands fa-facebook-f"></li>
                    <li class="fa-brands fa-linkedin-in"><a href="https://www.linkedin.com/in/prakash-rathod-8b8279226/"></a></li>
                    <li class="fa-brands fa-twitter"></li>
                    <li class="fa-brands fa-codepen"></li>
                </div>
                 <div class="content">
                    <p class="intro">Hi! I Am <span>Prakash Rathod</span></p>
                    <h1>Web Developer</h1>
                    <p class="detail">- 👋 Hi, I`m Prakash Rathod...Currently pursuing MCA<br>
                                      - 👀 I`m interested in Software development...<br>
                                      - 🌱 I`m Currently learning Java Fullstack..<br>
                                      - 💞 I`m looking to collaborate on software development job.<br>
                                       - ✉️ you want to reach me , , so contact me on this email </p>
                     <div class="btn-container">
                          <button>Hire Me</button>
                          <button>View Project</button>
                     </div>
                </div>

           </div>
           <div class="right-container"></div>
            <div class="design">
                <div class="circle"></div>
                <div class="circle"></div>
            </div>

   


       </div> 
</body>
</html>