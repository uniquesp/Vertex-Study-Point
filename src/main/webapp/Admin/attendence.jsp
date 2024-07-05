<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/x-icon" href="../Admin/assets/images/bookicon11.jpg">
        <link rel="stylesheet" href="../Admin/assets/css/styles.css">
    <link rel="stylesheet" href="../Admin/assets/css/attendence.css">

    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <title>attendance</title>
    <style>
    .button-css {
            border-collapse: collapse;
            width: 100%;
        }

        .button-css th,
        .button-css td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        .button-css button {
            background-color: #4CAF50;
            color: white;
            padding: 6px 12px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .button-css button:hover {
            background-color: blue;
        }
    
    </style>
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
                    <a href="../Admin/index.jsp" >
                        <span class="icon"><i class="ri-user-fill"></i></span>
                        <div class="sidebar--item">Profile</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/attendence.jsp" class="active">
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
                    <a href="../Admin/report.jsp">
                        <span class="icon"><i class="ri-survey-line"></i></span>
                        <div class="sidebar--item">Report</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/feedback.jsp">
                        <span class="icon"><i class="ri-feedback-line"></i></span>
                        <div class="sidebar--item">Feedaback</div>
                    </a>
                </li>
                <li>
                    <a href="../Admin/sucesstory.jsp">
                        <span class="icon"><i class="ri-trophy-line"></i></span>
                        <div class="sidebar--item">sucesstory</div>
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
                    <a href="#">
                        <span class="icon"><i class="ri-logout-box-r-line"></i></span>
                        <div class="sidebar--item">Logout</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="main--container">
            <div class="section--title">
                <h3 class="title">Attendance</h3> 
            </div>
            <br><br>
            <div class="container">
                <div class="div1">
                  <div class="button-container">
                  <a href="https://docs.google.com/forms/d/1t0mbxBe1r0yxiJoTU1-121cTWa5JP1POvCplWE31_WE/edit">
                       <button>Google Form</button>
                  </a>                    
                  </div>
                </div>
                <div class="div2">
                <a href="attendence2.jsp">
                <button>QR Generator</button>
                </a>
                 </div>
            </div>
            <br>
              <div class="table">
                <div class="section--title">
                    <h3 class="title"></h3>
                    <div></div>
                </div>
                
                <table class="button-css">
                    <thead>
                        <tr>
                            <th>Month</th>
                            <th>Google Sheet Link</th>
                           
                        </tr>
                    </thead>
                    <tbody clss="button-css">
                        <tr>
                            <td>January</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>JAN</button>
                        	</a>
                        	</td>
                        </tr>  
                        <tr>
                            <td>February</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>FEB</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>March</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>MAR</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>April</td>
                           <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>APR</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>May</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>MAY</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>June</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>JUNE</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>July</td>
                           <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>JULY</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>August</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>AUG</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>September</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>SEPT</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>October</td>
                            <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>OCT</button>
                        	</a>
                        	</td>
                        </tr>
                        <tr>
                            <td>November</td>
							<td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>NOV</button>
                        	</a>
                        	</td>                        
                        </tr>
                        <tr>
                            <td>December</td>
                           <td><a href="https://docs.google.com/spreadsheets/d/1XQho54gqeS2sR7f86v1A31qEVBTleFsuPne2SBtZDnA/edit?usp=sharing">
                            <button>DEC</button>
                        	</a>
                        	</td>
                        </tr>
                       
                    </tbody>
                </table>
            </div>
    </section>
    <script src="assets/js/main.js"></script>
   
</body>
</html>