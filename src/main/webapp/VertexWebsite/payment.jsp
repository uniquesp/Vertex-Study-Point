<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
     <html>
   <head>
   <link rel="icon" type="image/x-icon" href="../Admin/assets/images/bookicon11.jpg">
   </head>
   </html>
    <%     
    String m_id = (session.getAttribute("mem_id")).toString();
    String s_id = (session.getAttribute("stud_id")).toString();
    String p_amt= (session.getAttribute("total_amt")).toString();
    String stud_name= (session.getAttribute("stud_name")).toString();
    String mem_name= (session.getAttribute("mem_name")).toString();    
    
    String status="SUCCESS";

    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(p_id) FROM payment;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;

            PreparedStatement pst = conn.prepareStatement("insert into payment values(?,?,?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, m_id);
			pst.setString(3, s_id);
			pst.setString(4, p_amt);
            pst.setString(5,status);			 
			pst.setString(6, timestamp.toString());
            pst.setString(7, stud_name);
            pst.setString(8, mem_name);
			
			pst.executeUpdate();
            out.println("Data is successfully inserted!");
            response.sendRedirect("Thanks.html");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
%>