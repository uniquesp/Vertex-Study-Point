<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%          
    try
    {
            String hall=(request.getParameter("val"));
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vertexstudypt", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT seat_no FROM Reading_hall WHERE status='UnOccupied' AND H_type='"+hall+"';");
            int c = 0,cnt=0;
            while(rs.next())  {            
                out.print("<option>"+rs.getString("seat_no")+"</option>");      
            }      
                      
			
			}
            catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();        }
                             %>