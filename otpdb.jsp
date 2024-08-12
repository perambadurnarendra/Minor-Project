<%-- 
    Document   : otpdb
    Created on : Jul 5, 2019, 9:37:18 PM
    Author     : Sarada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<%
    
    String email= (String) session.getAttribute("email");
    
    String otp= request.getParameter("otp");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery( "select * from otp where msg= '"+otp+"'");
        if(rs.next())
        {
       int i= st.executeUpdate( "update otp set status='verified' where email='"+email+"'");
        if(i>0)
        {
            %>
            <script type="text/javascript">
                alert("otp verified!!");
                location="changepass.jsp";
            </script>
            <%
        }
        else
        {
         %>
            <script type="text/javascript">
                alert("otp verification issue!!! TRY AGAIN!");
                location="forgot.jsp";
            </script>
            <%   
        }
        }
%>
            <script type="text/javascript">
                alert("otp wrong!!! TRY AGAIN!");
                location="forgot.jsp";
            </script>
            <%
  

}
   catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>