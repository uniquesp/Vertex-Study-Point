<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="icon" type="image/x-icon" href="../Admin/assets/images/bookicon11.jpg">
       <link rel="stylesheet" href="../Admin/assets/css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <title>Vertex-Admin-Dashboard</title>
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
                <img src="../Admin/assets/images/profile.jpg" alt="">
            </div>
        </div>
    </section>
    <section class="main">
        <div class="sidebar">
            <ul class="sidebar--items">
                <li>
                    <a href="../Admin/index.jsp" class="active">
                        <span class="icon"><i class="ri-user-fill"></i></span>
                        <div class="sidebar--item">Profile</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/attendence.jsp" >
                        <span class="icon"><i class="ri-calendar-line"></i></span>
                        <div class="sidebar--item">Attendence</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/studentlt.jsp">
                        <span class="icon"><i class="ri-user-line"></i></span>
                        <div class="sidebar--item">Student list</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/staffinfo.jsp">
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
                    <a href="../Admin/feedback.jsp">
                        <span class="icon"><i class="ri-feedback-line"></i></span>
                        <div class="sidebar--item">Feedback</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/sucesstory.jsp">
                        <span class="icon"><i class="ri-trophy-line"></i></span>
                        <div class="sidebar--item">SuccesStory</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/leaveform.jsp">
                        <span class="icon"><i class="ri-survey-line"></i></span>
                        <div class="sidebar--item">Leave Form</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/alert.jsp">
                        <span class="icon"><i class="ri-spam-line"></i></span>
                        <div class="sidebar--item">Alert & Fine</div>
                    </a>
                </li>
            </ul>
            <ul class="sidebar--bottom--items">
                
                <li>
                    <a href="#" >
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
            <br>
            <div class="cards">
                <div class="card card-1">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-shopping-bag-2-line"></i></span>
                        <span>Total Ragistration      </span>
                    </div>
                    <br>
                    <h3 class="card--value">60<i class="ri-arrow-up-circle-fill up"></i></h3>
                    <h5 class="more">Up from yesterday</h5>
                </div>
                <div class="card card-2">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-user-line"></i></span>
                        <span>Total Staff Members</span>
                    </div>
                    <br>
                    <h3 class="card--value">7 <i class="ri-arrow-up-circle-fill up"></i></h3>
                    <h5 class="more">Up from yesterday</h5>
                    
                </div>
                <div class="card card-3">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-money-dollar-box-fill"></i></span>
                        <span>Total Amount</span>
                    </div>
                    <br>
                    <h3 class="card--value">15087 <i class="ri-arrow-up-circle-fill up"></i></h3>
                    <h5 class="more">Up from yesterday</h5>
                    
                </div>
                <div class="card card-4">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-file-warning-line"></i></span>
                        <span>Total Due Amount</span>
                    </div><br>
                    <h3 class="card--value">800 <i class="ri-arrow-down-circle-fill down"></i></h3>
                    <h5 class="less">Down from Today</h5>
                    <div class="chart">
                        <canvas id="customers"></canvas>
                    </div>
                </div>
            </div>
            <div class="cards">
                <div class="card card-1">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-home-line"></i></span>
                        <span>Total Seats In All Halls</span>
                    </div>
                    <br>
                    <h4 class="card--value">Ac Hall: 10</h4>
                    <h3 class="card--value">Non-Ac Hall: 7</i></h3>
                    <h3 class="card--value">Ac Hall: 5</h3>
                </div>
                <div class="card card-2">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-home-line"></i></span>
                        <span>Available Seats in AC Hall</span>
                    </div>
                    <br>
                    <h3 class="card--value">10 </h3>
                    
                </div>
                <div class="card card-3">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-home-line"></i></span>
                        <span>Available Seats in Non-AC Hall</span>
                    </div>
                    <br>
                    <h3 class="card--value">3</h3>
                    
                </div>
                <div class="card card-4">
                    <div class="card--title">
                        <span class="card--icon icon"><i class="ri-home-line"></i></span>
                        <span>Available Seats in New Hall</span>
                    </div><br>
                    <h3 class="card--value">8 </h3>
                
                </div>
            </div>
        </div>
        </div>
        
    </section>
<script src="assets/js/main.js"></script>
</body>
</html>