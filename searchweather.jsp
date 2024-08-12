<%-- 
    Document   : searchfriend
    Created on : Jul 8, 2019, 8:01:40 PM
    Author     : Sarada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
       <% String username= (String)session.getAttribute("username");
              String sen_email= (String)session.getAttribute("sen_email");
 %>

<!DOCTYPE html>
<html>
    <head>
                <link rel="stylesheet" href="style.css">
                <style>
                        
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
input { font-size: 30px; }

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
                    </style>

    </head>
    <body style="background-image: url(index.jpg)">
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
      slideIndex = slides.length
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
<div id="right" style="border: 5px; border-style: solid; border-color: black; margin-right: 10px;">
   
    <p style="color: black; font-size: 20px;margin: 0px;" align="center"><b><font size="10">"</font></b></p>
        <p align="justify" style="margin:20px; "><b><i>
            this weather reporting application aims at analyzing the economic costs of more frequent and more extreme weather events on
            transport and on the wider economy and explores adaptations strategies for reducing them in the context of sustainable policy design.
            the research is carried by the international team of eight european institutes, lead by the fraunhofer institutes for systems and innovation
            research. the work plan for this application forsees several events for exchanging information and views with stakeholders, policy makers and 
            the scientific community.</i></b></p>
      
</div><center>
    <h1 style="color: white"><b><%=username%></b></h1>
        <form action="searchweatherdb.jsp">
            <table style="color: white;margin-left: 100px; background-color: #717171; font-size: 25px; border-color: black ; border-style: solid" border="2">
            <tr>
                <td>
                    ENTER LOCATION:
                </td>
                <td>
                    <input type="text" name="location" required="">
                </td>
            </tr>
            <tr>
                <td>
                    <center><input type="submit" value="search"></center>
                </td>
                <td>
                    <center>                    <button onclick="window.location.href='adminhome.jsp'" style="background-color: pink; font-style: italic; font-size: 20px"> GO BACK </button>
</center>
                </td>
            </tr>
            </table>
            </form>
            
            
<br/><br/><br/><br/><br/><br/><br/><br/>
<center>
    <h3>THANK YOU!!</h3></center>
</center></body>
</html>
