<%-- 
    Document   : login
    Created on : Jul 28, 2020, 4:39:52 PM
    Author     : admin
--%>


<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn Successfuly</title>
        
        
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>

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

<script>
    function hidemess(){
        document.getElementById("smallmessage").style.display="none";
    }
    
    function enabletextbox(){
        document.getElementById("firstname").removeAttribute("disabled"); 
         document.getElementById("lastname").removeAttribute("disabled"); 
          document.getElementById("email").removeAttribute("disabled"); 
          document.getElementById("update").removeAttribute("hidden");
          document.getElementById("cancel").removeAttribute("hidden");
          document.getElementById("dis").setAttribute("hidden","");
          Cssstyle();
          
    }
    
    function disabletextbox(){
        document.getElementById("firstname").disabled = true;
        document.getElementById("lastname").disabled = true;
        document.getElementById("email").disabled = true;
        document.getElementById("update").setAttribute("hidden","");
          document.getElementById("cancel").setAttribute("hidden","");
          document.getElementById("dis").removeAttribute("hidden");
          RemoveCss();
        
    }
    
    function Cssstyle(){
        
        document.getElementById("firstname").style.background=" #6ba6d4";
        document.getElementById("lastname").style.background=" #6ba6d4";
        document.getElementById("email").style.background=" #6ba6d4";
        
        document.getElementById("firstname").style.borderRadius ="5px";
        document.getElementById("lastname").style.borderRadius ="5px";
        document.getElementById("email").style.borderRadius ="5px";
        
        document.getElementById("firstname").style.border ="2px solid black";
        document.getElementById("lastname").style.border ="2px solid black";
        document.getElementById("email").style.border ="2px solid black";
    }
    
    function RemoveCss(){
         document.getElementById("firstname").style.background=" none";
        document.getElementById("lastname").style.background=" none";
        document.getElementById("email").style.background=" none";
        
        document.getElementById("firstname").style.borderRadius ="none";
        document.getElementById("lastname").style.borderRadius ="none";
        document.getElementById("email").style.borderRadius ="none";
        
        document.getElementById("firstname").style.border ="none";
        document.getElementById("lastname").style.border ="none";
        document.getElementById("email").style.border ="none";
    }
    </script>

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


 <%! static int k=1 ; 
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

<!--header part--> 
 
 <nav class="navbar navbar-expand-lg navbar-light">

	<a href="#" class="navbar-brand">Filmy<b>World</b></a>  		
	<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<div class="navbar-nav">
			<a href="login.jsp" class="nav-item nav-link">Home</a>
                        
                        
	 <a href="#" class="nav-item nav-link">About
                        <span class="tooltiptext"><p>This is a web site from where you can download any kind of movie for free.You can download movies easly from this web site.</p></span>
               </a>			
			
	<a href="#" class="nav-item nav-link" data-toggle="modal">Contact
                         <span class="tooltiptext">Want To Contact US <br>This is Our Official Mail Id.<br><label style="text-transform:lowercase;color:blue;">filmyworld@gmail.com</label></span>
              </a>
			
                        <a href="#profile" class="nav-item nav-link" data-toggle="modal">Profile</a>
			
        </div>
		<form class="navbar-form form-inline ml-auto" action="searchpage.jsp" method="POST">
			<div class="input-group search-box" >
                            <input type="text" class="form-control" placeholder="Enter Movie Name" name="searchbox" required="Enter Movie Name">
				<div class="input-group-append" style="padding-right:50px;">
					<button type="submit" class="btn btn-danger" ><span >Search</span></button>
				</div>
			</div>
		</form>	
			
		<div class="navbar-nav">
                    <button class="nav-item nav-link active" style="background:transparent;border:none;color:#EB4E01;font-weight: bold;" onclick="confirmmessage()">LOGOUT</button>
					
	
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

<div class="firstrow" name="vikas">
<form action="movie_type_and_audio.jsp" method="POST">
     <input type="hidden" name="typeaudio" id="typeaudio">
                <button type="submit" id="hollywood" onclick="movietypeaudio(this.id)">Hollywood</button>
                <button type="submit" id="bollywood" onclick="movietypeaudio(this.id)">Bollywood</button>
                <button type="submit" id="hindi" onclick="movietypeaudio(this.id)">Hindi</button>
                <button type="submit" id="english" onclick="movietypeaudio(this.id)">English</button>
                <button type="submit" id="dual" onclick="movietypeaudio(this.id)">Dual Audio</button>

</div>

<div class="secondrow" name="verma">

    <input type="hidden" name="typeaudio" id="typeaudio">
            <button type="submit" id="480p" onclick="movietypeaudio(this.id)">480p</button>
            <button type="submit"  id="720p" onclick="movietypeaudio(this.id)">720p</button>
            <button type="submit"  id="1080p" onclick="movietypeaudio(this.id)">1080p</button>
</form>
</div>
</div>
<!--Small Message-->

<div class="smallmessage" id="smallmessage">
    <label>Welcome To FilmyWold </label>
    <button type="button" class="close" onclick="hidemess()" style="margin-top:10px;margin-right: 20px;">&times;</button>
</div>
            
 <!--Profile Info-->

 <%
         String user=(String)session.getAttribute("username");
        String password=(String)session.getAttribute("password");
        if(user==null || password==null){
        response.sendRedirect("index.jsp");
        }
         try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
            
            Statement st=con.createStatement();
            
            
     ResultSet rs=st.executeQuery("select * from userinfo where username='"+user+"' and userpassword='"+password+"' ");
 
    
     if(rs.next()){

%>

<div id="profile" class="modal fade" >
   <div class="signup-form">
	<div class="modal-dialog modal-login">
            <div class="modal-content" style="background-color:	#f2f3f7;">
			<div class="modal-header">
								
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
<form action="profileupdate.jsp" method="POST">
                                    <div class="avatar" style="width:90px;height:90px;margin-top:27px">
                                                       <img src="image/avtar.png" alt="Avatar">
                                   </div><br><br>

               <center><lable><%= rs.getString(3)%></lable></center></a>
               <%session.setAttribute("username",rs.getString(3));%>
               <hr><br>
                   <label for="firstname"><b>First Name</b></label><br>
                   <input type="text" id="firstname" name="fname" value="<%= rs.getString(1)%>" disabled style="border:none;" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"><br>

               <hr><br>

                   <label for="lastname"><b>Last Name</b></label><br>
                   <input type="text" id="lastname" name="lname"  value="<%= rs.getString(2)%>" disabled style="border:none;" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"><br>

               <hr><br>

                   <label for="email"><b>Email ID</b></label><br>
                   <input type="email" id="email" name="email"  value="<%= rs.getString(4)%>" disabled style="border:none;"><br>

                 <hr><br>   

               <div class="form-group" >
                   <button type="button" class="btn btn-primary btn-lg btn-block login-btn" onclick="enabletextbox()"  id="dis">Update your Account</button>
                   <button type="submit" id="update" class="btn btn-primary btn-lg btn-block login-btn" hidden>Update</button>
                    <button type="button" id="cancel" class="btn btn-primary btn-lg btn-block login-btn" hidden onclick="disabletextbox()">Cancel</button>
               </div>
  
</form>
</div>
			
</div>
</div>
</div>
   </div>

<%
    }
rs.close();
con.close();
   }
    catch(Exception ex){
   
    }
        
    %>
 
      
<div class="movieImages" style="background-color: #63738a;">
 
   
 <div class="row" style="padding:10px;">
        
    <% Blob blob=null;
       
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
      <img src="<%=image%>" alt="" style="width:100%"><br><br>
   <form action="downloadpage.jsp" method="POST">
        <input type="hidden" name="moviename" value="<%=rs.getString(1)%>">
        <button style="border:none;background: transparent" type="submit"><%=rs.getString(5)%></button>
  </form>
</div>

 <%


     }
con.close();

}
    catch(Exception ex){}
    %>
   </div>

 
<div class="myfooter">
  <label>Have Any Problem ? Then Please Mail Us.</label>
</div>

</div>
</body>
</html>
<%if(session.getAttribute("updated")=="updated"){
out.print("<script>alert('Updated Successfully.');</script>");
session.setAttribute("updated",null);   
}

if(session.getAttribute("username")==null && session.getAttribute("password")==null){
    response.sendRedirect("index.jsp");
     
}
 %>