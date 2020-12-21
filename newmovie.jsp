<%-- 
    Document   : newmovie
    Created on : Sep 17, 2020, 10:22:18 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!dOCTYPE HTML>
<HTML>
<head>
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

}
.movieform{
margin:30px;
background-color:#f2f3f7;
padding:20px;
font-family:Times New Roman;
font-weight:bold;
}

.radiobuttons input{
height:auto;
width:auto;
margin-left:10px;
}

.radiobuttons{
margin:20px;
}

input{
height:30px;
width:400px;
margin-top:5px;
margin-bottom:5px;
border-radius:3px;
}
textarea{
border-radius:3px;
}

input:focus,textarea:focus {
border:2px solid red;
background-color:lightblue;
}


.imagedetails{
width:750px;
height:auto;
padding:20px;
}

.type{
float:left; 

}
.audio{
display:inline-block;

overflow: hidden; 
margin-left:200px;
}

.cast input{
height:30px;
width:337px;
}
.cast{
float:left; 
 width:30%;

}
.title{
 width:35%;
float:left;

overflow: hidden; 

}
.links{
 width:35%;
 float:left;
overflow: hidden; 

}

.areatitle{
float:left;
}
.areastory{
margin-left:100px;
}
.submit,.reset{
height:40px;
background-color:#eb4e01;
border-radius:5px;
color:white;
font-weight:bold;
width:200px;
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
    
        
<nav class="navbar navbar-expand-lg navbar-light">

	<a href="#" class="navbar-brand">Filmy<b>World</b></a>  		
	<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<div class="navbar-nav">
		
			<a href="Homepage.jsp" class="nav-item nav-link">User_Info</a>			
			<a href="movieinfo.jsp" class="nav-item nav-link">Movies_Info</a>
			<a href="newmovie.jsp" class="nav-item nav-link" >Add New Movies</a>
        </div>
           
		<div class="navbar-nav">
                    
                    <button type="submit" class="nav-item nav-link active" style="font-weight:bold;background:transparent;border: none;color:#eb4e01; font-size: 15px" onclick="confirmlogedout()">LOGOUT</button>
					
                  
		</div>
	</div>
	
</nav>
		<div class="movieform">	
                    
                    <form action="insermovie.jsp" method="POST">
			
			
			<center><h1 >Enter New Movie Details</h1></center><br>
		
			<input type="text" name="name" placeholder="Movie Name" required><br><br>
			<textarea name="title" rows="4" cols="35" required placeholder="Move Title" class="areatitle"></textarea>
			<textarea  name="story" rows="4" cols="35" required placeholder="Move Story" class="areastory"></textarea><br>
			
			
			
			<div class="radiobuttons">
			
			<div class="type">
			<label>Movie Type:</label><br>
					<input type="radio" id="hollywood" name="movitype"  required value="Hollywood">
					 <label for="male">Hollywood</label>
					 <input type="radio" id="bollywood" required name="movitype" value="Bollywood">
						<label for="male">Bollywood</label><br>
			 
			 </div>
                            
			 <div class="audio">
					 <label>Movie Audio:</label><br>
					
					<input type="radio" id="hindi" name="movieaudio" required value="Hindi">
					 <label for="male">Hindi</label>
					 
					 <input type="radio" id="english" name="movieaudio" required value="English">
					 <label for="male">English</label>
					 
					 <input type="radio" id="dual" name="movieaudio" required value="Dual Audio [Hindi - English]">
					 <label for="male">Dual Audio [Hindi - English]</label><br>
			</div>
			
			</div>
                        
	<div class="cast">		
			<label>Movie Cast Details:</label><br>
			
			 <input type="text" placeholder="Director Name" required name="director" required><br>
			 <input type="text" placeholder="Actors Name" required name="actors"><br>
			 <input type="number" max="10" required step=".01" min="1" placeholder="Rating out of 10" name="rating"><br>
	</div>		 
	<div class="title">
			 <label>Downloading Titles:</label><br>
			 <input type="text" placeholder="480p Title" name="480p" required><br>
			 <input type="text" placeholder="720p Title" name="720p" required><br>
			 <input type="text" placeholder="1080p Title" name="1080p" required><br>
	</div>
	<div class="links">
			<label>Downloading Links:</label><br>
			 <input type="text" placeholder="480p Links" name="link480p" required><br>
			 <input type="text" placeholder="720p Links" name="link720p" required><br>
			 <input type="text" placeholder="1080p Links" name="link1080p" required><br>
	</div>
          <label>Movie Resolution:</label><br>
	 <input type="text" placeholder="480p,720p,1080p" name="resolution" required>
		<div class="imagedetails"> 
			 
			 <label>Movie Image:</label><br>
			 
                         <input type="text"  name="movieImage" class="movieimage" placeholder="Movie Image URL" required><br>
			 <input type="text" name="screen1"  class="img1" placeholder="Screen Shot1 URL" required>
			 <input type="text" name="screen2"  class="img2" placeholder="Screen Shot2 URL" required>
			 <input type="text" name="screen3" class="img3" placeholder="Screen Shot3 URL" required>
			 <input type="text" name="screen4" class="img4" placeholder="Screen Shot4 URL" required><br><br>
			 
		
			</div>
         	<center><input type="submit" class="submit"><input type="reset" class="reset"></center>
			</form></div>
</body>
</html>
<%
if( session.getAttribute("inserted")=="inserted"){
out.print("<script>alert('Movie Inserted Successfully.');</script>");
session.setAttribute("inserted",null);
}

if(session.getAttribute("user")==null && session.getAttribute("password")==null){
response.sendRedirect("index.jsp");
}
%>