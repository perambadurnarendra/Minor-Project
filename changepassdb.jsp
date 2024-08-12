<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<%
    
    String email= (String) session.getAttribute("email");
    
    String password= request.getParameter("pwd");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery( "select * from registration where email= '"+email+"'");
        if(rs.next())
        {
       int i= st.executeUpdate( "update registration set pwd='"+password+"' where email='"+email+"'");
        if(i>0)
        {
            %>
            <script type="text/javascript">
                alert("password changed!!");
                location="login.jsp";
            </script>
            <%
        }
        
        }
  

}
   catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>