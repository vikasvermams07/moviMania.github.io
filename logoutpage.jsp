<%-- 
    Document   : logoutpage
    Created on : Sep 12, 2020, 5:20:56 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut Successfully</title>
    </head>
    <body>
       <%
           session.setAttribute("username", null);
           session.setAttribute("password",null);
           session.invalidate();
           response.sendRedirect("index.jsp");
       %>
    </body>
</html>
