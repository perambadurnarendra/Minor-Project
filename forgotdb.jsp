<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<%@page  import="com.mail.*"%>
<%@page  import="java.util.*"%>
<% Random  r=new Random();
int i=r.nextInt(500000+200);
String ii= ""+i;
String msg="this is your otp:"+ ii + "to change password";
String email= request.getParameter("email");
try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm", "root", "root");
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery( "select * from registration where email= '"+email+"'");
        if(rs.next())
        {
        int k= st.executeUpdate(" insert into otp values('"+email+"','"+ii+"',now(),'waiting') ");
        if(k>0)
        {
            Mail.secretMail(email, msg);
            session.setAttribute("email", email);
            %>
            <script type="text/javascript">
                window.alert("otp generated and sent to mail");
                window.location="otp.jsp";
                </script>
                <%
            
        }
else
{
%>
<script type="text/javascript">
                window.alert("otp generation failed try again!");
                window.location="forgot.jsp";
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
