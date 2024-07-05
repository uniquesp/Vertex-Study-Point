<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String mail=(session.getAttribute("E-Mail-for-profile")).toString();
    String s_id = (session.getAttribute("sid-for-profile")).toString();
    String fname=request.getParameter("fname");
    String phone=request.getParameter("phone");
    String addr=request.getParameter("addr");
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());

    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();


            PreparedStatement pst = conn.prepareStatement("UPDATE student SET s_FullName=? AND ContactNo=? AND s_Address=? WHERE s_id=?;");
			pst.setString(1,fname);
			pst.setString(2, phone);
			pst.setString(3, addr);
			pst.setString(4, s_id);
			pst.executeUpdate();
            response.sendRedirect("../VertexStudProfile/Sindex.jsp");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>