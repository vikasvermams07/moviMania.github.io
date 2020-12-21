<%-- 
    Document   : insermovie
    Created on : Sep 17, 2020, 10:49:26 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
            String name=request.getParameter("name").toLowerCase();
        String title=request.getParameter("title");
        String story=request.getParameter("story");
       
        String resolution=request.getParameter("resolution");
        double rating= Double.parseDouble(request.getParameter("rating"));
        String director=request.getParameter("director");
        String actor=request.getParameter("actors");
        String link1=request.getParameter("link480p");
        String link2=request.getParameter("link720p");
        String link3=request.getParameter("link1080p");
        String imageurl=request.getParameter("movieImage");
        String title480p=request.getParameter("480p");
        String title720p=request.getParameter("720p");
        String title1080p=request.getParameter("1080p");
        String screenshort1=request.getParameter("screen1");
         String screenshort2=request.getParameter("screen2");
          String screenshort3=request.getParameter("screen3");
           String screenshort4=request.getParameter("screen4");
        
        
        
        String type=request.getParameter("movitype");
        String audio=request.getParameter("movieaudio");
            
            
            try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection(
                "jdbc:derby://localhost:1527/FilmyWorld","vikasms07","vikasms07");
            PreparedStatement ps=con.prepareStatement("insert into moviesinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           
            ps.setString(1,name);
            ps.setString(2,type);
            ps.setString(3,audio);
            ps.setString(4,story);
            ps.setString(5,title);
            ps.setString(6,title480p);
            ps.setString(7,title720p);
            ps.setString(8,title1080p);
            ps.setString(9,link1);
            ps.setString(10,link2);
             ps.setString(11,link3);
            
            FileInputStream fin=new FileInputStream(imageurl);
            ps.setBinaryStream(12,fin,fin.available());
            
            FileInputStream fin1=new FileInputStream(screenshort1);
             ps.setBinaryStream(13,fin1,fin1.available());
            
            FileInputStream fin2=new FileInputStream(screenshort2);
             ps.setBinaryStream(14,fin2,fin2.available());
             
            FileInputStream fin3=new FileInputStream(screenshort3);
             ps.setBinaryStream(15,fin3,fin3.available());
             
            FileInputStream fin4=new FileInputStream(screenshort4);
             ps.setBinaryStream(16,fin4,fin4.available());
            
            ps.setString(17,resolution);
            ps.setDouble(18,rating);
            ps.setString(19,director);
            ps.setString(20,actor);
            
            
            int i=ps.executeUpdate();
            
            if(i>0){
              session.setAttribute("inserted","inserted");
              response.sendRedirect("newmovie.jsp");
            }
            else{
                out.print("wrong");
            }
            con.close();
        }catch (Exception e) {out.print(e);}%>
    </body>
</html>
