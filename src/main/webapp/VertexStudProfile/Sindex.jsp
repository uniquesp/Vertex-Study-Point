<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>

<%
    // Check if the user is logged in
    if (session.getAttribute("E-Mail-for-profile") == null || session.getAttribute("Password-for-profile") == null) {
        // User is not logged in, redirect to the login page
        response.sendRedirect("../VertexWebsite/index.html"); // Replace with the actual path to your login page
    } else {
        // User is logged in, continue with displaying the profile information
        // ... Your existing database connection and profile display code ...
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../Admin/assets/images/bookicon11.jpg">
    <link rel="stylesheet" href="assets/css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>Vertex-Student-Dashboard</title>
   </head>
<body class="body">
    <section class="header">
        <div class="logo">
            <i class="ri-menu-line menu"></i>
            <h2><span>V</span> -Vertex.</h2>
        </div>
        <div class="header--items">
            <div class="dark--theme--btn">
                <i class="ri-moon-line moon"></i>
                <i class="ri-sun-line sun"></i>
            </div>
            <i class="ri-notification-2-line"></i>
            <div class="profile">
                <img src="assets/images/profile.jpg" alt="">
            </div>
        </div>
    </section>
    <section class="main">
        <div class="sidebar">
            <ul class="sidebar--items">
                <li>
                    <a href="Sindex.jsp" class="active">
                        <span class="icon"><i class="ri-user-fill"></i></span>
                        <div class="sidebar--item">Profile Details</div>
                    </a>
                </li>
                <li>
                    <a href="renewMemb.html" >
                        <span class="icon"><i class="ri-bank-card-line"></i></span>
                        <div class="sidebar--item">Renew Membership</div>
                    </a>
                </li>
               
            
                <li>
                    <a href="feedback.html">
                        <span class="icon"><i class="ri-feedback-line"></i></span>
                        <div class="sidebar--item">Feedback</div>
                    </a>
                </li>
                <li>
                    <a href="sucesstory.html">
                        <span class="icon"><i class="ri-trophy-line"></i></span>
                        <div class="sidebar--item">SucessStory</div>
                    </a>
                </li>
                <li>
                    <a href="leaveform.html">
                        <span class="icon"><i class="ri-survey-line"></i></span>
                        <div class="sidebar--item">Leave Form</div>
                    </a>
                </li>
                
            </ul>
            <ul class="sidebar--bottom--items">
                
                <li>
                    <a href="../VertexWebsite/index.html" >
                        <span class="icon"><i class="ri-logout-box-r-line"></i></span>
                        <div class="sidebar--item">Logout</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="main--container">
            <div class="section--title">
                <h3 class="title">Welcome back!</h3>
            </div>
<div class="form">
        <div class="container bootstrap snippets bootdey">
            <div class="row">
            <!-- left column -->
            <div class="col-md-3">
            <div class="text-center">
            <img src="assets/images/user.png" class="avatar img-circle img-thumbnail" alt="avatar">
            <h6>User</h6>
            </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">
            <h3>Personal info</h3>

            <form class="form-horizontal" action="updatedStud.jsp" method="post" role="form">
            <div class="form-group">
                <label class="col-lg-3 control-label">Full name:</label>
     <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            	out.println("<br/><div class='col-lg-8'><input class='form-control' name='fname' type='text' value='" + rs.getString("s_FullName") + "'></div><br/>");

            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %> 
                <div class="col-lg-8">
       			 <!--  <input class="form-control" type="text" value=""> -->       
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Email:</label>
  <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("</br><div class='col-lg-8'><input class='form-control' type='email' value="+rs.getString("EmailId")+" readonly></div></br>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>     
                <div class="col-lg-8">
             <!--<input class="form-control" type="email" value="">  -->   
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Phone no:</label>
 <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("</br><div class='col-lg-8'><input class='form-control' type='number' name='phone' value="+rs.getString("ContactNo")+"></div></br>");      
                
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
                <div class="col-lg-8">
            <!--  <input class="form-control" type="text" value=""> -->   
                </div>
            </div>
            <div class="form-group1">
                <label class="col-lg-3 control-label">Date of Birth:</label>
 <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            	out.print("<br><div class='col-lg-8'><input class='form-control' type='text' value="+rs.getString("dob")+" readonly></div><br>");      
                     
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
                <div class="col-lg-8">
               <!--  <input class="form-control"   type="date" value=""> -->

                    <label class="col-lg-3 control-label">Seat No:</label>
                    
<%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            	out.print("<br><div class='col-lg-8'><input class='form-control' type='text' value="+rs.getString("seat_no")+" readonly></div><br>");      
                     
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
                
                </div>
            </div>
           <div class="form-group">
                <label class="col-lg-3 control-label">Address:</label>
  <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            	out.println("<br/><div class='col-lg-8'><input class='form-control' type='text' name='addr' value='" + rs.getString("s_Address") + "'></div><br/>");
     
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>     
                <div class="col-lg-8">
             <!--<input class="form-control" type="email" value="">  -->   
                </div>
            </div>            
            <div class="form-group">
                <label class="col-lg-3 control-label">Hall Type:</label>
                <div class="col-lg-8">
                 
  <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            	out.println("<br/><div class='col-lg-8'><input class='form-control' type='text' value='" + rs.getString("hall_type") + "'readonly></div><br/>");
     
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>     
                </div>
                <div class="form-group">
                <label class="col-lg-3 control-label">Study:</label>
                <div class="col-lg-8">
    <% try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            	out.println("<br/><div class='col-lg-8'><input class='form-control' type='text' value='" + rs.getString("study") + "'readonly></div><br/>");
     
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();} %> 
    <%} %>    
                </div>
            </div>
            <br>
               <!--  <button class="button">Save</button>  -->
            </form>
            </div>
    </div></div>
  </div>
        </div>
    </section>
<script src="assets/js/main.js"></script>
</body>
</html>