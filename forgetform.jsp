<%-- 
    Document   : forgetform
    Created on : Sep 15, 2020, 3:36:41 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Re-Generate Password</title>
        
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
         <!--Forgot Password Page-->
   
  <div class="registrationpage" title="Forget Password">   

  <div id="re-generate " >
      
 <div class="signup-form" >
 
     <div class="modal-dialog modal-login " style="width:100%;"  >

         <div class="modal-content" >
 
   
    <form action="forgetcode.jsp" method="post">
	
       <div class="modal-header">
				<div class="avatar">
					<img src="image/avtar.png" alt="Avatar">
				</div>				
				<h4 class="modal-title">Re-generate Password</h4>	
                                <a href="index.jsp" style="text-decoration: none"><button type="button" class="close" data-dismiss="modal" aria-hidden="true" >&times;</button></a>
			</div>
        
        
                
		<p class="hint-text">Enter valid details to Re-generate your password.</p>
        <div class="form-group">
			
		<div class="form-group">
        	<input type="text" id="username" class="form-control" name="user" placeholder="Username" required="required">
        </div>
		<div class="form-group">
            <input type="password" maxlength="9"  id="pass" class="form-control" name="password" placeholder="New Password" required="required">
        </div>
		<div class="form-group">
            <input type="password" maxlength="9" id="cpass" class="form-control" name="confirm_password" placeholder="Confirm New Password" required="required">
        </div>        
       
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">RE-GENERATE</button>
        </div>
    </form>
            
       
       
</div>
                 <div class="modal-footer">
	<div class="text-center">Not Need ! <a href="loginform.jsp"  data-toggle="modal" data-dismiss="modal">Sign in</a></div>
        </div>
 </div>
         </div>
    </div>
   </div>
    </body>
</html>
<%
if(session.getAttribute("notupdated")=="notupdated"){
%><script>alert("New Password and Confirm-Password Should be Same.");</script><%
    session.setAttribute("notupdated",null);
}
%>