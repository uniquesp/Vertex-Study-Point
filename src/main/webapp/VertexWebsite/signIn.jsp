<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String user=request.getParameter("user");
    String pass=request.getParameter("pass");
    
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT * FROM student;");
            int flag=0;
            while(rs.next())  {
                if(user.equals(rs.getString("EmailId")))
                {
                    if(pass.equals(rs.getString("Password")))
                    {
                        flag=1;
                        session.setAttribute("E-Mail-for-profile",rs.getString("EmailId"));
                        session.setAttribute("Password-for-profile",rs.getString("Password"));
                        session.setAttribute("sid-for-profile",rs.getString("s_id"));
                        session.setAttribute("sname-for-profile",rs.getString("s_FullName"));
                    }
                }      
            }            
            if(flag==1)
            {
                response.sendRedirect("../VertexStudProfile/Sindex.jsp");
             }
            else
            {
            	 response.sendRedirect("../login/Error.html");
            }          
			
			}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>