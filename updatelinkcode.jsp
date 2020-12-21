<%-- 
    Document   : updatelinkcode
    Created on : Sep 18, 2020, 12:13:35 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        String name=(String)session.getAttribute("name");
      
        String link480p=request.getParameter("link480p");
       
        String link720p=request.getParameter("link720p");
      
        String link1080p=request.getParameter("link1080p");
      
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
    PreparedStatement ps=con.prepareStatement("update MOVIESINFO set movie_480p_link='"+link480p+"',movie_720p_link='"+link720p+"',movie_1080p_link='"+link1080p+"' where movie_name='"+name+"'");
        int i=ps.executeUpdate();
        if(i>0){
        out.print("row affected");
        session.setAttribute("name",null);
        session.setAttribute("link","link");
        response.sendRedirect("movieinfo.jsp");
       
        }
        con.close();
        }catch(Exception ex){out.print(ex);}
        %>
    </body>
</html>
