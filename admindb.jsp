
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
        ResultSet rs= st.executeQuery( "select * from admin where email= '"+email+"' and pwd='"+pwd+"'");
        if(rs.next())
        {
        String username= rs.getString(1);
        String a_email= rs.getString(2);
  
        response.sendRedirect("adminhome.jsp");
        session.setAttribute("username", username);
        session.setAttribute("a_email", a_email);
        
        
        }
        response.sendRedirect("admin.jsp?msg=login failed");

}
   catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>