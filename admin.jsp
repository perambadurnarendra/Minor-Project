
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <link rel="stylesheet" href="style.css">
        <style>
            #middle{
                float: left;
    text-decoration: none;
    width: 30%;
    height: 175px;
    margin-top: 70px;
    margin-left: 130px;
    
        }
       
    

* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
.prev {
  left: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */


/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}
input { font-size: 20px; }

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
        
       
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(index.jpg)"><center>
        
<div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="sunny.jpg" style="width:1000px; height: 250px;">
  <div class="text">watch the weather and move!</div>
</div>

<div class="mySlides fade">

  <img src="rainy.jpg" style="width:1000px; height: 250px">
  <div class="text">live weather reports on the go!!</div>
</div>

<div class="mySlides fade">
 
  <img src="windy.jpg" style="width:1000px; height: 250px">
  <div class="text">lovely interface :-p</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) 
{
  showSlides(slideIndex += n);
}

function currentSlide(n) 
{
  showSlides(slideIndex = n);
}

function showSlides(n) 
{
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) 
  {
      slideIndex = 1;
  }    
  if (n < 1) 
  {
      slideIndex = slides.length;
  }
  for (i = 0; i < slides.length; i++) 
  {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) 
  {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
<% String msg= request.getParameter("msg");
        if(msg!= null)
        {
            %>
            <h2><%=msg%></h2>
            <%
        }
        %>
<div id="middle" style="background-image: url(login.jpg);background-size: auto;
  background-repeat: no-repeat;
  
  background-position: 75% 15%; "   >
    <form name="login" action="admindb.jsp" method="POST"  >
        <center><b>ADMIN LOGIN</b></center><table border="5" style="border-color: black">
                <td>EMAIL:
                </td>
                <td><input type=email name="email" required="required">
                </td>
            </tr>
                        <tr>
                <td>PASSWORD:
                </td>
                <td><input type=password name="pwd" required="required">
                </td>
            </tr>
                   
                        <tr>
                            <td><input type="submit" value="login">
                </td>
                <td><button onclick="window.location.href='index.html'" style="background-color: pink; font-style: italic; font-size: 20px"> GO BACK </button>
                </td>
            </tr>
            </table></form>
        </div>
<div id="right" style="border: 5px; border-style: solid; border-color: black; margin-right: 10px;">
   
    <p style="color: black; font-size: 20px;margin: 0px;" align="center"><b><font size="10">"</font></b></p>
        <p align="justify" style="margin:20px; "><b><i>
            This weather reporting application aims at analyzing the economic costs of more frequent and more extreme weather events on
            transport and on the wider economy and explores adaptations strategies for reducing them in the context of sustainable policy design.
            the research is carried by the international team of eight european institutes, lead by the fraunhofer institutes for systems and innovation
            research. the work plan for this application forsees several events for exchanging information and views with stakeholders, policy makers and 
            the scientific community.</i></b></p>
      
</div>
        
        
        
        
                    

    </center></body>
</html>
