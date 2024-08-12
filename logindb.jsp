
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page  import="java.sql.*"%>
<%
    
    String email= request.getParameter("email");
    
    
    String pwd= request.getParameter("pwd");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery( "select * from registration where email= '"+email+"' and pwd='"+pwd+"'");
        if(rs.next())
        {
        String username= rs.getString(5);
        String location= rs.getString(7);
        String rec_email= rs.getString(3);
        response.sendRedirect("userhome.jsp");
        session.setAttribute("username", username);
        session.setAttribute("location", location);
        session.setAttribute("email", email);
        
        }
        response.sendRedirect("login.jsp?msg=login failed");

}
   catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>