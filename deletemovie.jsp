<%-- 
    Document   : deletemovie
    Created on : Sep 16, 2020, 11:32:24 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <%
String del=request.getParameter("delete");
try{
 Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
    PreparedStatement ps=con.prepareStatement("delete from moviesinfo where movie_name='"+del+"'");
int i=ps.executeUpdate();
if(i>0){
session.setAttribute("del", "del");
response.sendRedirect("movieinfo.jsp");
}
con.close();
}catch(Exception ex){out.print(ex);}

%>
    </body>
</html>
