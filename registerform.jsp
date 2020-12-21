<%-- 
    Document   : registerpage
    Created on : Sep 12, 2020, 12:00:44 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
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
    <body>
        <div class="registrationpage" id="registervk" title="Register" style="text-decoration: none">   

  <div id="register" class=""  >
      
 <div class="signup-form" >
 
     <div class="modal-dialog modal-login " style="width:100%;"  >

         <div class="modal-content" >
 
   
    <form action="registercode.jsp" method="POST">
	
       <div class="modal-header">
				<div class="avatar">
					<img src="image/avtar.png" alt="Avatar">
				</div>				
				<h4 class="modal-title">Register</h4>	
                <a href="index.jsp" style="text-decoration: none"><button type="button" class="close" data-dismiss="modal" aria-hidden="true" >&times;</button><a>
			</div>
        
        
                
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="form-group">
			<div class="row">
				<div class="col"><input type="text" id="fname" class="form-control" name="first_name" placeholder="First Name" required="required" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"></div>
				<div class="col"><input type="text" id="lname" class="form-control" name="last_name" placeholder="Last Name" required="required" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"></div>
			</div>        	
        </div>
        <div class="form-group">
            <input type="text" maxlength="11" id="uname" class="form-control" name="username" placeholder="Username" required="required">
        </div>
		<div class="form-group">
        	<input type="email" id="email" class="form-control" name="email" placeholder="Email" required="required">
        </div>
        <div class="form-group">
            <input type="text" maxlength="9" id="pass" class="form-control" name="password" placeholder="Password" required="required">
        </div>
		<div class="form-group">
            <input type="password" maxlength="9" id="cpass" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required">
        </div>        
       
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block" onclick="formValidation()">Register Now</button>
        </div>
    </form>
             
         <div class="modal-footer">
	<div class="text-center">Already have an account? <a href="loginform.jsp"  data-toggle="modal" data-dismiss="modal">Sign in</a></div>
        </div>
</div>
 </div>
         </div>
    </div>
   </div> 
    </body>
</html>
<%
if(session.getAttribute("unsuccess")=="unsuccess"){
%><script>alert("Username is already existed use different username");</script><%
    session.setAttribute("unsuccess",null);
}

if(session.getAttribute("notequals")=="notequals"){
%><script>alert("Password and Confirm Password Should be Same.");</script><%
    session.setAttribute("notequals",null);
}
%>