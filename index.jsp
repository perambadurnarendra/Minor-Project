<%-- 
    Document   : index
    Created on : Jul 3, 2019, 2:44:19 PM
    Author     : Sarada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page  import="java.sql.*"%>
<%
    String fname= request.getParameter("fname");
    String lname= request.getParameter("lname");
    String email= request.getParameter("email");
    String phone= request.getParameter("phone");
    String uname= request.getParameter("uname");
    String pwd= request.getParameter("pwd");
        String location= request.getParameter("location");

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery( "select COUNT(*) as count from registration where email= '"+email+"'");
        while(rs.next())
        {
            int count=rs.getInt("count");
            if(count>0)
            {
              %>
              <script type="text/javascript">
                  window.alert("email id already exists");
                  window.location="registration.html";
                  </script>
                  <%
            }
else
{ 

int i =st.executeUpdate( "insert into registration values('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+uname+"','"+pwd+"','"+location+"')");

if(i>0)
{
%>
<script type="text/javascript">
    window.alert("registration successful");
    window.location="login.jsp";
    </script>
    <%
}
%>
    <%
            
        }
    }
}
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>