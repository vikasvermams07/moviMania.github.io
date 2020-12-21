<%-- 
    Document   : loginpage
    Created on : Sep 12, 2020, 11:50:46 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jqu``ery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

 <link rel="stylesheet" href="FilmyWorld.css">
<script src="FilmyWorld.js"></script>
    </head>
    <body style="background-color: #63738a;">
   <div id="" class="" title="LogIn">
   <div class="signup-form">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
					<img src="image/avtar.png" alt="Avatar">
				</div>				
				
                            <h4 class="modal-title">Member Login</h4>	
                            <a href="index.jsp" style="text-decoration: none"> <button type="button" class="close" aria-hidden="true">&times;</button></a>
			</div>
			<div class="modal-body">
                                    <form action="logincode.jsp" method="post">
                                            <div class="form-group">
                                                    <input type="text" maxlength="11" id="lusername" class="form-control" name="username" placeholder="Username" required="required">		
                                            </div>
                                            <div class="form-group">
                                                    <input type="password" maxlength="9" id="lpass" class="form-control" name="password" placeholder="Password" required="required">	
                                            </div>        
                                            <div class="form-group" >
                                                    <button type="submit" class="btn btn-primary btn-lg btn-block login-btn" >Login</button>
                                            </div>
                                    </form>
			</div>
			<div class="modal-footer">
				<a href="forgetform.jsp"  data-toggle="modal" data-dismiss="modal">Forgot Password?</a><br>
                 <div class="text-center">Don't have Account ? <a href="registerform.jsp" data-dismiss="modal"  data-toggle="modal">Create Account</a></div>
			</div>
		</div>
	</div>
</div>
   </div>
    </body>
</html>

<%
if(session.getAttribute("register")=="success"){
%><script>alert("You are Registered Successfully.");</script><%
  session.setAttribute("register",null);
}

if(session.getAttribute("incorrect")=="incorrect"){
%><script>alert("Incorrect Username or Password.");</script><%
  session.setAttribute("incorrect",null);
}

if(session.getAttribute("updated")=="updated"){
%><script>alert("Password Updated Successfully.");</script><%
   session.setAttribute("updated",null);
}
%>
