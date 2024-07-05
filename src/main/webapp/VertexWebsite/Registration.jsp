
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
	<%@ page import="java.util.*,javax.mail.*"%>
	<%@ page import="javax.mail.internet.*" %>
	 <html>
   <head>
   <link rel="icon" type="image/x-icon" href="../Admin/assets/images/bookicon11.jpg">
   </head>
   </html>
	    <%
    String full_name=request.getParameter("fname");
    String email=request.getParameter("email");
    String p_no=request.getParameter("pno");
    String add=request.getParameter("add");
    String gender=request.getParameter("gender");
    String dob=request.getParameter("dob");
    
    String study=request.getParameter("study");
    String hall_type=request.getParameter("hall-type");
    String seat_no=request.getParameter("seat");
    String pass=request.getParameter("pass");
     String conf_pass=request.getParameter("confirmpass"); 

    
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(s_id) FROM student;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("stud_id",c);
            session.setAttribute("stud_name",full_name);
            //for accessing s_id on payment page

            PreparedStatement pst = conn.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, full_name);
			pst.setString(3, email);
			pst.setString(4, p_no);
            pst.setString(5, gender);
			pst.setString(6, dob);
			pst.setString(7, add);
			pst.setString(8, study);
			pst.setString(9, hall_type);
            pst.setString(10, seat_no);
			pst.setString(11, pass);
            pst.setString(12, timestamp.toString());
			pst.executeUpdate();

            //for Future Log_in purpose
            PreparedStatement pst1 = conn.prepareStatement("insert into login values(?,?)");
			pst1.setString(1, email);
            pst1.setString(2, pass);
            pst1.executeUpdate();

            PreparedStatement pst2 = conn.prepareStatement("update Reading_hall set status='Occupied' where  H_type='"+hall_type+"' AND seat_no='"+seat_no+"' ");
			pst2.executeUpdate();

            out.println("Data is successfully inserted!");
            response.sendRedirect("Membership.html");


            //for Sending Mail
			String result;
			final String to1 = email;	
			final String subject = "Registration Successfull";
		
    String messg = "<body style='background-color:yellow; padding:20px;'><center><div class='container'>";
		messg+="<h3 id='head'> <h2 id='name'>Thank You For Choosing Vertex Study Point...!!</h2>";
		messg+="We are For Your Precious Future...!! </h3>";
		messg+="<p>-------------------------------------------</p>";
		messg+="<div id='content'>";
			messg+="<p>Kindly, Note The Following Details for Future References - </p>";
			messg+="<p> Name : <b> "+full_name+" </b></p>";
			messg+="<p> Study : <b> "+study+" </b></p>";
			messg+="<p> Hall-Type : <b> "+hall_type.toUpperCase()+" </b></p>";
			messg+="<p> Seat No : <b> "+seat_no+" </b></p>";
			messg+="<p> UserName : <b> "+email+" </b></p>";
			messg+="<p> Password  : <b> "+pass+" </b></p>";
			messg+="<p> Date of Registration : <b> "+timestamp.toString()+" </b></p>";
		messg+="<p>-------------------------------------------</p>";	
			messg+="<p>Looking Forward For the Same.</p>";
			messg+="<div id='msg'>";
				messg+="<h3>Thanks and Regards,</h3>";
				messg+="<h2 style='color:#660000;'>Vertex Study Point</h2>";
				messg+="<h4 style='color:#330000;'>D.ed Chuak, AP Phaltan, Tal- Phaltan, Dist- Satara.<h4>";		
			messg+="</div>";
		messg+="</div></div></center></body></html>";

    // Sender's email ID and password needs to be mentioned
    final String from1 = "sandhyapharande0@gmail.com";
    final String pass1 = ""; // "add your password which is created by google app"
    String host = "smtp.gmail.com"; 

    Properties props = new Properties();
	
    props.put("mail.smtp.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from1);
    props.put("mail.password", pass1);
    props.put("mail.port", "465");	
	props.put("mail.pop3s.ssl.protocols", "TLSv1.2");
	
	

	//props.setProperty("mail.smtp.host", "smtp.gmail.com");
    //props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
    //props.setProperty("mail.smtp.socketFactory.fallback", "false");
    //props.setProperty("mail.smtp.port", "25");
    //props.setProperty("java.net.preferIPv4Stack", "true");
    //props.setProperty("mail.smtp.socketFactory.port", "465");
    //props.put("mail.smtp.auth", "true");
    //props.put("mail.debug", "true");
    //props.put("mail.store.protocol", "pop3");
    //props.put("mail.transport.protocol", "smtp");
	
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from1, pass1);
        }
    });
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from1));
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to1));
        message.setSubject(subject);
        message.setContent(messg,"text/html"); //for sending HTML in EMail
        Transport.send(message);

}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                         }
         %>