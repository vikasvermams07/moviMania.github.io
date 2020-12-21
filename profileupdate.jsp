<%-- 
    Document   : profileupdate
    Created on : Sep 15, 2020, 4:50:56 PM
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
    String user=(String)session.getAttribute("username");
    out.print(user);
    String fname=request.getParameter("fname");
    out.print(fname);
    String lname=request.getParameter("lname");
    out.print(lname);
    String email=request.getParameter("email");
    out.print(email);
  
        
        try{
         
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
        Statement stmt=con.createStatement();
        con.setAutoCommit(false);
        stmt.addBatch("update userinfo set userfirstname='"+fname+"' where username='"+user+"'");
        stmt.addBatch("update userinfo set userlastname='"+lname+"' where username='"+user+"'");
        stmt.addBatch("update userinfo set useremail='"+email+"' where username='"+user+"'");
       int[] count=stmt.executeBatch();
       
       if(count!=null){
       session.setAttribute("updated","updated");
      response.sendRedirect("login.jsp");
       }
       con.commit();
        con.close();
        }catch(Exception ex){out.print(ex);}
   
    
    %>
    </body>
</html>
