<%-- 
    Document   : updatelink
    Created on : Sep 18, 2020, 11:59:55 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="FilmyWorld.css">

<script>
    
    function confirmlogedout(){
       var result;
var r = confirm("Are you sure! Want to Loggrd Out.");
if (r == true) {
  result = 1;
} else {
  result =0;
}
if(result===1){
    window.location.href = "adminlogout.jsp";
}
    }
</script>
<style>
body{
background-color:#63738a;
margin:30px;
background-color:#f2f3f7;
padding:20px;
font-family:Times New Roman;
font-weight:bold;
}


input{
height:30px;
width:400px;
margin-top:5px;
margin-bottom:5px;
border-radius:3px;
}


input:focus,textarea:focus {
border:2px solid red;
background-color:lightblue;
}



.submit,.reset{
height:40px;
background-color:#eb4e01;
border-radius:5px;
color:white;
font-weight:bold;
width:100px;
margin: 20px;
}

.submit:hover,.reset:hover{
background-color:lightgreen;
}

.submit:active,.reset:active{
background-color:black;
}
</style>
        
    </head>
    <body>
        <div class="links">
			<label>Downloading Links:</label><br>
                       <form action="updatelinkcode.jsp" method="POST">
			 <input type="text" placeholder="480p Links" name="link480p"><br>
			 <input type="text" placeholder="720p Links" name="link720p"><br>
			 <input type="text" placeholder="1080p Links" name="link1080p"><br>
                         <input type="submit" class="submit">
                         <input type="submit" class="reset" value="Cancel" formaction="movieinfo.jsp">
                       </form>
	</div>
    </body>
</html>
<%
 String name=request.getParameter("delete");
session.setAttribute("name",name);

%>