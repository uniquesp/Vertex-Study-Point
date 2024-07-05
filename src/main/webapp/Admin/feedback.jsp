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
    <title>feedback</title>
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
                    <a href="index.jsp">
                        <span class="icon"><i class="ri-user-fill"></i></span>
                        <div class="sidebar--item">Profile</div>
                    </a>
                </li>
                <li>
                    <a href="attendence.jsp">
                        <span class="icon"><i class="ri-calendar-line"></i></span>
                        <div class="sidebar--item">Attendence</div>
                    </a>
                </li>
                <li>
                    <a href="studentlt.jsp">
                        <span class="icon"><i class="ri-user-line"></i></span>
                        <div class="sidebar--item">Student list</div>
                    </a>
                </li>
                <li>
                    <a href="staffinfo.jsp">
                        <span class="icon"><i class="ri-user-2-fill"></i></span>
                        <div class="sidebar--item">Staff members</div>
                    </a>
                </li>
                <li>
                    <a href="https://dashboard.razorpay.com/?screen=sign_in&next=app%2Fdashboard">
                        <span class="icon"><i class="ri-bank-card-line"></i></span>
                        <div class="sidebar--item">Payment</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/report.jsp">
                        <span class="icon"><i class="ri-survey-line"></i></span>
                        <div class="sidebar--item">Report</div>
                    </a>
                </li>
                <li>
                    <a href="#" class="active">
                        <span class="icon"><i class="ri-feedback-line"></i></span>
                        <div class="sidebar--item">Feedaback</div>
                    </a>
                </li>
                <li>
                    <a href="sucesstory.jsp">
                        <span class="icon"><i class="ri-trophy-line"></i></span>
                        <div class="sidebar--item">SuccessStory</div>
                    </a>
                </li>
                <li>
                    <a href="leaveform.jsp">
                        <span class="icon"><i class="ri-survey-line"></i></span>
                        <div class="sidebar--item">Leave Form</div>
                    </a>
                </li>
                <li>
                    <a href="alert.jsp">
                        <span class="icon"><i class="ri-spam-line"></i></span>
                        <div class="sidebar--item">Alert & Fine</div>
                    </a>
                </li>
            </ul>
            <ul class="sidebar--bottom--items">
                
                <li>
                    <a href="../VertexWebsite/index.html">
                        <span class="icon"><i class="ri-logout-box-r-line"></i></span>
                        <div class="sidebar--item">Logout</div>
                    </a>
                </li>
            </ul>
        </div>
<%@ page import="java.sql.*" %>
<%  Class.forName("com.mysql.jdbc.Driver");    %>

        <div class="main--container">
            <div class="section--title">
                <h3 class="title">Feedback</h3>
       <%
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");
           Statement statement = conn.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from feedback") ;
       %>
            </div>
            <br><br><br>
            <div class="table">
                <div class="section--title">
                    <h3 class="title"></h3>
                    <div></div>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>EmailId</th>
                            <th>StudId</th>
                            <th>Rating</th>
                            <th>Feedback</th>
                        </tr>
                    </thead>
                    <tbody>
                <% while(resultset.next()){ %>
                        <tr>
                            <td><%= resultset.getString(1) %></td>
                            <td><%= resultset.getString(5) %></td> 
                            <td><%= resultset.getString(4) %></td>
                            <td><%= resultset.getString(3) %></td>                        
                            <td><%= resultset.getString(2) %></td>
                            
                        </tr>
      <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <script src="assets/js/main.js"></script>
   
</body>
</html>