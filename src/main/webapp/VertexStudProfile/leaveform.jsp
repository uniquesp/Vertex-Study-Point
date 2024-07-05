<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String halltype=request.getParameter("hall-type");
    String seatno=request.getParameter("seatno");
    String ldate=request.getParameter("ldate");
    String s_id = (session.getAttribute("sid-for-profile")).toString();
    String mail=(session.getAttribute("E-Mail-for-profile")).toString();
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());       
    int H_id=0;
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs1=stmt.executeQuery("SELECT H_id FROM reading_hall where seat_no='"+seatno+"' AND H_Type='"+halltype+"';");
            while(rs1.next())  {
            H_id = Integer.parseInt(rs1.getString(1));      
            }

            ResultSet rs=stmt.executeQuery("SELECT count(l_id) FROM leave_form;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("f_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into leave_form values(?,?,?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, Integer.toString(H_id));
			pst.setString(3, halltype);
			pst.setString(4, seatno);
            pst.setString(5,ldate);			
			pst.setString(6, s_id);
            pst.setString(7,mail);			
			pst.setString(8, timestamp.toString());

            PreparedStatement pst2 = conn.prepareStatement("update Reading_hall set status='UnOccupied' WHERE seat_no='"+seatno+"';");
			pst2.executeUpdate();
            
			pst.executeUpdate();
            out.println("<center><h2>Your Leaving Form Registered..!!</h2><h3>Thank You For Connecting With Us.<br><br><a href='Sindex.jsp'>BACK</a>");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>