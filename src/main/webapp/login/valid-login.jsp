<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>    
    <%  int flag=0;  
    try
    {
    	String uname=request.getParameter("username");
        String pwd=request.getParameter("password"); 
        if(uname.equals("admin") && pwd.equals("admin")){
        	flag=1;
        }
            if(flag==1)
            {
                response.sendRedirect("../Admin/index.jsp");
             }
            else
            {
            	response.sendRedirect("../login/Error.html");
            }          
			
			}
            catch(Exception e){
                        out.print(e);
                        e.printStackTrace();
            }
         %>