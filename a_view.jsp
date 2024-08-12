<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%try{
    String a_email=  (String)session.getAttribute("a_email");
     Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/wrm","root","root");
   Statement st=conn.createStatement();
   ResultSet r=st.executeQuery("select dp from a_profile where email='"+a_email+"'");
   Blob image;
   byte[] imagedata=null;
   if(r.next()){
     image=r.getBlob(1);
     imagedata=image.getBytes(1,(int)image.length());
     response.setContentType("image/gif");
   OutputStream o=response.getOutputStream();
   %>
   <body>
   <div style=""> <% o.write(imagedata); %></div>
   </body>
   <%
   o.flush();
   o.close();
   }else{
       out.println("image not found");
   }
   
}catch(Exception e){
  out.println(e);  
}
%>