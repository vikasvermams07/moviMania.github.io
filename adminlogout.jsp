<%-- 
    Document   : adminlogout
    Created on : Sep 17, 2020, 11:47:27 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       session.setAttribute("username",null);
       session.setAttribute("password",null);
       response.sendRedirect("index.jsp");
       %>
    </body>
</html>
