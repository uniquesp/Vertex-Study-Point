<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String mail=(session.getAttribute("E-Mail-for-profile")).toString();
    String s_id = (session.getAttribute("sid-for-profile")).toString();
    String title=request.getParameter("title");
    String story=request.getParameter("story");    
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());

    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(sc_id) FROM success_story;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("sc_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into success_story values(?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, title);
			pst.setString(3, story);
			pst.setString(4, s_id);
            pst.setString(5, mail);        
			pst.setString(6, timestamp.toString());
			
			pst.executeUpdate();
            out.println("<center><h2>We Are Happy For Your Achievements...!!<br><br><a href='Stindex1.jsp'>BACK</a>");
            
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>