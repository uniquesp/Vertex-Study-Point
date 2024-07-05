<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
    <%
    String m_name=request.getParameter("m_name");
    String endDate=request.getParameter("endDate");
    String startDate=request.getParameter("startDate");
        String totalDays=request.getParameter("totalDays");
    String amt=request.getParameter("amt");
    String s_id = (session.getAttribute("sid-for-profile")).toString();
    String stud_name= (session.getAttribute("sname-for-profile")).toString();
    String status="ACTIVE";

    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            int m_id = 0;
            ResultSet rs1=stmt.executeQuery("SELECT m_id FROM membership WHERE m_name='"+m_name+"';");
            while(rs1.next())  {
            m_id = Integer.parseInt(rs1.getString(1));      
            }

            ResultSet rs=stmt.executeQuery("SELECT count(m_id) FROM membdetails;");
            int c = 0,d_id=0;
            while(rs.next())  {
            d_id = Integer.parseInt(rs.getString(1));      
            }

            d_id = d_id+1;
            session.setAttribute("d_id",d_id);
            session.setAttribute("mem_name",m_name);
            session.setAttribute("razorpay_total_amt",amt);

            PreparedStatement pst = conn.prepareStatement("insert into membdetails values(?,?,?,?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(d_id));
            pst.setString(2, Integer.toString(m_id));
			pst.setString(3, endDate);
			pst.setString(4, startDate);
            pst.setString(5,totalDays);
			pst.setString(6, status);
			pst.setString(7, s_id);
			pst.setString(8, stud_name);
			pst.setString(9, timestamp.toString());
			
			pst.executeUpdate();
            out.println("Data is successfully inserted!");
            response.sendRedirect("../razorpay.jsp");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>