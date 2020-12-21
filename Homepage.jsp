<%-- 
    Document   : Homepage
    Created on : Sep 15, 2020, 9:34:40 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
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
    .userinfo{
      
        height:auto;
        width:90%;
        margin-top:50px; 
        margin-bottom: 50px;
       background-color: white;
    } 
    .userinfo td,th{
        height:10px;
        text-align: center;
        padding: 5px;
        border-left: none;
        border-right: none;
        border-top: 2px solid #e9e6dd;
        border-bottom:  2px solid #e9e6dd;
    }
    th{
       background-color:#eb4e01;
       color:white;
    }
    button{
        background-color: transparent;
        border:none;
         font-size:25px;
         color:red;
    }
</style>
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
			
			<a href="Homepage.jsp" class="nav-item nav-link">User_Info</a>			
			<a href="movieinfo.jsp" class="nav-item nav-link">Movies_Info</a>
			<a href="newmovie.jsp" class="nav-item nav-link">Add New Movies</a>
        </div>
            <form class="navbar-form form-inline ml-auto" method="POST">
			<div class="input-group search-box" >
                            <input type="text" class="form-control" name="search" placeholder="by Username" required>
				<div class="input-group-append" style="padding-right:50px;">
					<button type="submit" class="btn btn-danger" ><span >Search</span></button>
				</div>
			</div>
		</form>	
            
            <form method="post">
                <input type="hidden" value="all" name="all">
                <button type="submit" class="btn btn-danger" style="margin-right:10px;">All</button>
             </form>
			
		<div class="navbar-nav">
			
                    <button type="button" class="nav-item nav-link active" style="font-weight:bold;background:transparent;border: none;color:#eb4e01;font-size: 15px" onclick="confirmlogedout();">LOGOUT</button>
					
		</div>
	</div>
	
</nav>
<%!int i=1;%>
   
    <%
      String search=request.getParameter("search");
      String sql="select * from userinfo";
    try{
       
        if(search!=null){
       sql="select * from userinfo where username='"+search+"'";
        }
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery(sql);
    
    %><center><table  class="userinfo"><%
        %><tr>
            <th>Sr No.</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
            <th>Emial</th>
            <th>Password</th>
             <th>Delete</th>
        </tr><%
    while(rs.next()){
    %>
    <tr>
        <td><%=i%></td>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td>
        <form action="deleteuser.jsp" method="POST">
            <input type="hidden" value="<%=rs.getString(3)%>" name="delete">
            <button><i class="fa fa-trash"></i></button>
        </form></td>
    </tr>
    <%
        i++;
    }
    %></tabel></center><%
        i=1;
        con.close();
       
   }catch(Exception ex){}
    %>
   
</body>
</html>


<%
if(session.getAttribute("del")=="del"){
%><script>alert("User Deleted Successfully.");</script><%
    session.setAttribute("del",null);
}

if(session.getAttribute("user")==null && session.getAttribute("password")==null){
response.sendRedirect("index.jsp");
}
%>