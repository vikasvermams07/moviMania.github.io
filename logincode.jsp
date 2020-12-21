<%-- 
    Document   : logincode
    Created on : Sep 15, 2020, 9:57:59 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
       <%
   String user=request.getParameter("username");
   String pass=request.getParameter("password");
try{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
PreparedStatement ps=con.prepareStatement("select * from userinfo where username='"+user+"' and userpassword='"+pass+"'");
ResultSet rs= ps.executeQuery();

if(rs.next()){
session.setAttribute("username", user);
session.setAttribute("password", pass);
response.sendRedirect("login.jsp");
}

else{
session.setAttribute("incorrect","incorrect");
response.sendRedirect("loginform.jsp");
}

con.close();
}
catch(Exception ex){}

%>
    </body>
</html>
