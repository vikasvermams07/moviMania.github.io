<%-- 
    Document   : forgetcode
    Created on : Sep 15, 2020, 3:41:47 PM
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
    String user=request.getParameter("user");
    String npass=request.getParameter("password");
    String cnpass=request.getParameter("confirm_password");
    if(npass.equals(cnpass)){
        
        try{
         
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
        PreparedStatement ps=con.prepareStatement("update userinfo set userpassword='"+npass+"' where username='"+user+"'");
       int i= ps.executeUpdate();
       
       if(i>0){
       session.setAttribute("updated","updated");
       response.sendRedirect("loginform.jsp");
       }
        con.close();
        }catch(Exception ex){}
    }else{
    session.setAttribute("notupdated", "notupdated");
    response.sendRedirect("forgetform.jsp");
    }
    %>
    </body>
</html>
