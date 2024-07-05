<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String mail=(session.getAttribute("E-Mail-for-profile")).toString();
    String rating=request.getParameter("stars");
    String feedback=request.getParameter("feedback");
    String s_id = (session.getAttribute("sid-for-profile")).toString(); 

    Timestamp timestamp = new Timestamp(System.currentTimeMillis());

    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(f_id) FROM feedback;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("f_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into feedback values(?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, feedback);
			pst.setString(3, rating);
			pst.setString(4, s_id);
            pst.setString(5,mail);			
			pst.setString(6, timestamp.toString());
			
			pst.executeUpdate();
            out.println("<center><h2>Your Feedback is Much Valuable for us..!!</h2><h3>Thank You For Connecting With Us.<br><br><a href='Sindex.jsp'>BACK</a>");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>