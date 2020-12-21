<%-- 
    Document   : downloadpage
    Created on : Aug 30, 2020, 11:23:43 AM
    Author     : admin
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Elegant Modal Login Modal Form with Avatar Icon</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="FilmyWorld.css">
<script src="FilmyWorld.js"></script>

<script>
    function confirmmessage(){
var result;
var r = confirm("Are you sure! Want to Loggrd Out.");
if (r == true) {
  result = 1;
} else {
  result =0;
}
if(result===1){
    window.location.href = "logoutpage.jsp";
}
}
</script>

<style>
/* css for download page*/

p{
font-size:18px;
text-align:justify;
}
.screenshots{
display:inline-block;
width:70%;
height:255px;
border:2px solid black;
margin:20px;
border:none;
}

.screenshots img{
width:100%;
height:255px;
}

.moviedetails{
width:40%;
height:700px;
background-color:black;
}
.movieimage{
display:inline-block;
margin-top:25px;
width:60%;
height:450px;
background-color:white;
}

.movieimage img{
width:100%;
height:450px;
}
.moviebox{
display:inline-block;
width:300px;
height:190px;
margin-top:20px;
text-align:justify;
}

.moviebox label{
display:inline-block;
color:white;
font-weight:bold;
}
.moviebox a{
color:white;
}
.moviebox a:hover{
    color:white;
}
.moviebox h3{
font-weight:bold;
color:white;
}
button{
border-radius:30px;
margin:10px;
background-color:#eb4e01;
color:white;
width:150px;
height:50px;
}

button:hover{
border:2px solid black;
background-color:lightgreen;
}

button:active{
background-color:black;
color:white;

}
.movieinfo label{
font-weight:bold;
font-size:18;
}
.title{
display:block;
font-size:37px;
margin:30px;
color:black;
font-weight:bold;
}

.moviesblock{
display:block;
margin:70px;
background-color:#ffffff;
padding:30px;
}




.btnblock h3{
font-size:20px;
}

</style>
</head>
<body style="background-color: #63738a;">


 <!--Home Page-->
    
<nav class="navbar navbar-expand-lg navbar-light" style="height: 60px;">

	<a href="#" class="navbar-brand">Filmy<b>World</b></a>  		
	<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<div class="navbar-nav">
			<a href="login.jsp" class="nav-item nav-link">Home</a>
			
                       <a href="#" class="nav-item nav-link" data-toggle="modal">About
                           <span class="tooltiptext">This is a web site from where you can download any kind of movie for free.You can download movies easly from this web site.</span>
                        </a>			
			
			<a href="#" class="nav-item nav-link" data-toggle="modal">Contact
                         <span class="tooltiptext">Want To Contact US <br>This is Our Official Mail Id.<br><label style="text-transform:lowercase;color:blue;">filmyworld@gmail.com</label></span>
                        </a>
                        
		
        </div>
		<form class="navbar-form form-inline ml-auto" action="searchpage.jsp" method="POST">
			<div class="input-group search-box" style="margin-top:20px;">
                            <input type="text" class="form-control" placeholder="Enter Movie Name" name="searchbox" required="">
				<div class="input-group-append" style="padding-right:50px;">
					<button type="submit" class="btn btn-danger" style="height:40px;width:70px;margin-top:-1px;margin-left:-1px"><span >Search</span></button>
				</div>
			</div>
		</form>	
			
			
		<div class="navbar-nav">
			<button class="nav-item nav-link active" style="font-weight: bold;background:transparent;border:none;color:#EB4E01;margin-top:-1px;margin-left:-7px;height:40px;width: 100px" onclick="confirmmessage()">LOGOUT</button>
					
	
		</div>
	</div>
	
</nav>

 <%     String name=request.getParameter("moviename");
      
 
 try{
    
     Class.forName("org.apache.derby.jdbc.ClientDriver");
     Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from moviesinfo where movie_name='"+name+"' ");
if(rs.next()){

Blob blob=rs.getBlob(12);
   byte[] imageBytes=blob.getBytes(1, (int)blob.length());

   String encodedImage=Base64.getEncoder().encodeToString(imageBytes);
 String image="data:image/jpg;base64,"+encodedImage;
 
Blob blob1=rs.getBlob(13);
   byte[] screen1image=blob1.getBytes(1, (int)blob1.length());

   String encodedImagescreen1=Base64.getEncoder().encodeToString(screen1image);
 String screen1="data:image/jpg;base64,"+encodedImagescreen1;

Blob blob2=rs.getBlob(14);
   byte[] screen2image=blob2.getBytes(1, (int)blob2.length());

   String encodedImagescreen2=Base64.getEncoder().encodeToString(screen2image);
 String screen2="data:image/jpg;base64,"+encodedImagescreen2;
 
Blob blob3=rs.getBlob(15);
   byte[] screen3image=blob3.getBytes(1, (int)blob3.length());

   String encodedImagescreen3=Base64.getEncoder().encodeToString(screen3image);
 String screen3="data:image/jpg;base64,"+encodedImagescreen3;

Blob blob4=rs.getBlob(16);
   byte[] screen4image=blob4.getBytes(1, (int)blob4.length());

   String encodedImagescreen4=Base64.getEncoder().encodeToString(screen4image);
 String screen4="data:image/jpg;base64,"+encodedImagescreen4;

%>
<div class="moviesblock">

<center><nav class="title"><%=rs.getString(5)%></nav></center>

<h1 style="color:green;font-size:29px;">StoryLine</h1>

<p><%=rs.getString(4)%></p>
<hr>
<center>
<div class="moviedetails">

							<div class="movieimage">
                                                            <img src="<%=image%>">
							</div>
<hr style="height:1px;color:gray;background-color:gray;">
		<div class="moviebox">
			<h3>Constantine</h3>
			<label>Rating:</label><a><%=rs.getString(18)%>/10</a><label style="background-color:yellow;height:17px;width:35px;font-size:10px;color:black;margin:4px;text-align:center;">IMDB</label><br>
			<label>Director:</label><a><%=rs.getString(19)%></a><br>
			<label>Actors:</label><a><%=rs.getString(20)%></a><br>
		</div>	
</div>

<hr>
</center>
<h1 style="color:green;font-size:29px;">Movie Info</h1><br>
<div class="movieinfo">
<label>Movie Name:</label><a style="font-size:17;margin-left:10px;"><%=rs.getString(1)%></a><br><br>
<label>Language:</label><a style="font-size:17;margin-left:10px;"><%=rs.getString(3)%></a><br><br>
<label>Quality:</label><a style="font-size:17;margin-left:10px;"><%=rs.getString(17)%></a><br><br>
</div>
<hr>

<h1 style="color:green;font-size:29px;">ScreenShots</h1>
<center>

<div class="screenshots">
    <img src="<%=screen1%>">
</div>

<div class="screenshots">
<img src="<%=screen2%>">
</div>

<div class="screenshots">
<img src="<%=screen3%>">
</div>

<div class="screenshots">
<img src="<%=screen4%>">
</div>

<div class="btnblock">
<h3><%=rs.getString(6)%></h3>
<a href="<%=rs.getString(9)%>" style="text-decoration:none;"><button>Download</button></a>

<h3><%=rs.getString(7)%></h3>
<a href="<%=rs.getString(10)%>" style="text-decoration:none;"><button>Download</button></a>

<h3><%=rs.getString(8)%></h3>
<a href="<%=rs.getString(11)%>" style="text-decoration:none;"><button>Download</button></a>
</div>
</center>



</div>
 
 <%
     }
session.setAttribute("val", null);
 con.close();    
 }
 catch(Exception ex){
 out.print("<script>alert('Somethig is wrong.');</script>");
 }
 %>


<!--Footer-->
 <div class="myfooter">
  <label>Have Any Problem ? Then Please Mail Us.</label>
</div>


</body>
</html>