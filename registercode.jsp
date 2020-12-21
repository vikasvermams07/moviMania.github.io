<%-- 
    Document   : registercode
    Created on : Sep 15, 2020, 10:07:42 AM
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
    String fname=request.getParameter("first_name").toLowerCase();
    String lnamer=request.getParameter("last_name").toLowerCase();
    String user=request.getParameter("username");
    String mail=request.getParameter("email");
    String pass=request.getParameter("password");
    String cpass=request.getParameter("confirm_password");
    
if(pass.equals(cpass)){
try{
    
    
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
PreparedStatement ps=con.prepareStatement("insert into userinfo values(?,?,?,?,?)");
ps.setString(1,fname);
ps.setString(2,lnamer);
ps.setString(3,user);
ps.setString(4,mail);
ps.setString(5,pass);

int i=ps.executeUpdate();

if(i>0){
session.setAttribute("register", "success");
response.sendRedirect("loginform.jsp");
}
con.close();
}
catch(Exception ex){
session.setAttribute("unsuccess", "unsuccess");
response.sendRedirect("registerform.jsp");
}
}

else{
 session.setAttribute("notequals","notequals");
    response.sendRedirect("registerform.jsp");
}
%>
    </body>
</html>
