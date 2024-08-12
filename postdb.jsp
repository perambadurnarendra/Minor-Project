<%-- 
    Document   : ratedb
    Created on : Jul 11, 2019, 12:54:54 PM
    Author     : Sarada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<%
    String location= request.getParameter("location");
    String conditions= request.getParameter("conditions");
    String details= request.getParameter("details");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        int k= st.executeUpdate("insert into post values('"+location+"',now(),'"+conditions+"','"+details+"') ");
        if(k>0)
        { %>
        <script type="text/javascript">
            window.location="postweather.jsp";
            window.alert("posted");
            
            </script>
        <% }
else
{ %>
<script type="text/javascript">
            window.alert("error in posting");
window.location="postweather.jsp";
        </script>
<% }

      

    }
      
    
    catch(Exception e){
        out.println(e);
    }
    %>    