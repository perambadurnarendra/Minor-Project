
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>home page</title>
        
<style>
    
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}
#new
{
    
    width: 45%;
    margin-top: 450px;
}
img
{
    border: solid black 5px;
    border-color: black;
}
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

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
#footer1{
        margin-bottom: 150px;
        height: 0px;
    }
</style>
    </head>
    <body style="background-image: url(index.jpg)">
        
        
        <div id="menu" style="font-size: 25px">
            <ul>
               
                <li><a href="searchweather.jsp">SEARCH WEATHER</a></li>
                
                   
                    
                    <li><a href="contact.jsp">CONTACT US</a></li>
                    <li><a href="rate.jsp">RATE THIS APP</a></li>
                    <li><a href="login.jsp">LOGOUT</a></li>
            </ul>
            </div>
        <%
        String username=(String)session.getAttribute("username");
        String location=(String)session.getAttribute("location");
        %>
    <center><div id="left2"><h1><font style="font-size: 20px;color: #330099; float: right">WEATHER REPORT MANAGEMENT</font></h1></div></center>
    <div id="right5"><center><h1><font style="font-size: 20px;color: #330099;  margin-right: 85px">welcome <%=username%></font></center><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        
        
        <%  try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        
        String email= (String)session.getAttribute("email");
                ResultSet rs1= st.executeQuery( "select * from profile where email= '"+email+"'");
                    if(rs1.next())
                    { %>
                        <a href="updatedp1.jsp" title="dont like this? upload a new one here!"><img src="view.jsp" alt="not found" width="200" height="200"></a>
                   <% }
                    else
{ %>
<a href="updatedp.jsp"><img src="images.png" title="no profile pic" width="200" height="200"></a>
<% }
        %>
        
        
        
        
        
        
        
        
        
        
        
        
        <br/><br/><br/>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                </div>
        <br/>
        <br/>
    
   
    
    
       
    
        

    
    
        <div id="left1" style="border: 5px; border-style: solid; border-color:#330099 ; margin-left: 10px;">
   
    <p style="color: white; font-size: 20px;margin: 0px;" align="center"><b><font size="10">"</font></b></p>
        <p align="justify" style="margin:20px; "><b><i>
            This weather reporting application aims at analyzing the economic costs of more frequent and more extreme weather events on
            transport and on the wider economy and explores adaptations strategies for reducing them in the context of sustainable policy design.
            the research is carried by the international team of eight european institutes, lead by the fraunhofer institutes for systems and innovation
            research. the work plan for this application forsees several events for exchanging information and views with stakeholders, policy makers and 
            the scientific community.</i></b></p>
            </div><br/><br/><br/><br/><br/><br/>
                  
          <center><div id="new">  <table border="2px" style="width: 100%; border-color: black; background-color: #bbb"  >
    <tr>
        <th>location
            </th>
            <th>date
                </th>
            <th>condition
            </th>
            <th>details
            </th>
    </tr>
    <%
        ResultSet rs= st.executeQuery( "select * from post where location= '"+location+"'");
        while(rs.next())
        {
        %>
    
        
    <tr>
        <td><%=rs.getString(1)%></td>
         <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td>
         
    </tr>
          
        <% }
%>
</table></div></center>
<%
}
         catch(Exception ex)
         {
            out.print(ex);
         }
           
       %>

    </body>
</html>
