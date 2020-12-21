<%-- 
    Document   : adminlogin
    Created on : Sep 15, 2020, 9:37:18 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       <%
       String user=request.getParameter("username");
       String pass=request.getParameter("password");
      
       
       try{
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
       
       Statement st=con.createStatement();
       
       ResultSet rs=st.executeQuery("select * from admin where username='"+user+"' and password='"+pass+"'");
       
       if(rs.next()){
            session.setAttribute("username",user);
       session.setAttribute("password",pass);
        response.sendRedirect("Homepage.jsp");
        
       }
       else{
         session.setAttribute("unsuccess","unsuccess");
            response.sendRedirect("index.jsp");
       }
       }catch(Exception ex){}
           
       %>
    </body>
</html>
