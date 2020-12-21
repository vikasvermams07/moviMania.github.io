<%-- 
    Document   : index
    Created on : Aug 28, 2020, 10:07:29 AM
    Author     : admin
--%>

<%@page import="java.sql.*"%>

<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>FilmyWorld</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jqu``ery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="FilmyWorld.css">
<script src="FilmyWorld.js"></script>

        <style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 15%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>

<script>
    function hidemess(){
        document.getElementById("smallmessage").style.display="none";
    }
    </script>

<%! static int k=0 ; 
  static int p=0;
  static int q=0;
   String image="";
    static String[] img=new String[100];
static String[] value=new String[100];
  static String[] last=new String[100];
  static int r=-1 ;
 %>
</head>
<body style="background-color: #63738a;">
  
    <!--Home Page-->
    
<nav class="navbar navbar-expand-lg navbar-light">

	<a href="#" class="navbar-brand">Filmy<b>World</b></a>  		
	<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<div class="navbar-nav">
			<a href="index.jsp" class="nav-item nav-link">Home</a>
			
                        <a href="#" class="nav-item nav-link">About
                        <span class="tooltiptext"><p>This is a web site from where you can download any kind of movie for free.You can download movies easly from this web site.</p></span>
                        </a>			
			
			<a href="#" class="nav-item nav-link" data-toggle="modal">Contact
                         <span class="tooltiptext">Want To Contact US <br>This is Our Official Mail Id.<br><label style="text-transform:lowercase;color:blue;">filmyworld@gmail.com</label></span>
                        </a>
			
        </div>
            <form class="navbar-form form-inline ml-auto" action="" method="POST">
			<div class="input-group search-box" >
                            <input type="text" class="form-control" placeholder="Enter Movie Name" name="searchbox" required="Enter Movie Name">
				<div class="input-group-append" style="padding-right:50px;">
					<button type="button" onclick="alertMessage()" class="btn btn-danger" ><span >Search</span></button>
				</div>
			</div>
		</form>	
			
		<div class="navbar-nav">
			<a href="loginform.jsp" class="nav-item nav-link active" data-toggle="modal">LOGIN</a>
			<a href="registerform.jsp" class="nav-item nav-link active" data-toggle="modal">REGISTER</a>		
	
		</div>
	</div>
	
</nav>

    
<!-- Slideshow container -->
<center>
    <div class="container">
			<div class="outer">
				
			</div>
    </div>
</center>
<!--Tags-->
<div class="tags">

<div class="firstrow">
<form action="" method="POST">
     <input type="hidden" name="typeaudio" id="typeaudio">
                <button type="button" id="hollywood" onclick="alertMessage()">Hollywood</button>
                <button type="button" id="bollywood" onclick="alertMessage()">Bollywood</button>
                <button type="button" id="hindi" onclick="alertMessage()">Hindi</button>
                <button type="button" id="enlish" onclick="alertMessage()">English</button>
                <button type="button" id="dual" onclick="alertMessage()">Dual Audio</button>
</form>
</div>

<div class="secondrow" name="verma">
<form action="" method="POST">
            <button type="button" onclick="alertMessage()">480p</button>
            <button type="button" onclick="alertMessage()">720p</button>
            <button type="button" onclick="alertMessage()">1080p</button>
<form>
</div>
</div>
<!--Small Message-->

<div class="smallmessage" id="smallmessage">
    <label>To Download Latest Movies Join Our Site FilmyWold </label>
    <button type="button" class="close" onclick="hidemess()" style="margin-top:10px;margin-right: 20px;">&times;</button>
</div>

   
   
  
   <!--Image Table-->
   <br><br>
   
 
       <div class="myImages" >
           <div class="row" style="padding:10px;">
 
    <% 
       Blob blob=null; 
    try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
        
        Statement ps=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
      
    
     ResultSet  rs=ps.executeQuery("select * from moviesinfo");
     
     while(rs.next()){
         
    blob=rs.getBlob(12);
   byte[] imageBytes=blob.getBytes(1, (int)blob.length());

   String encodedImage=Base64.getEncoder().encodeToString(imageBytes);
 image="data:image/jpg;base64,"+encodedImage;


%>

<div class="column" style="background-color:lightgray;border-radius: 10px;margin:  10px">
      <img src="<%=image%>" alt="Snow" style="width:100%"><br><br>
      <button style="border:none;background:transparent" onclick="alertMessage()"><%=rs.getString(5)%></button>
  </div>

 <%

}
con.close();

}
    catch(Exception ex){}
    %>
   </div>

   <!--Footer-->
 <div class="myfooter">
  <label>Have Any Problem ? Then Please Mail Us.</label>
</div>
   
</div>
</body>
</html>
 