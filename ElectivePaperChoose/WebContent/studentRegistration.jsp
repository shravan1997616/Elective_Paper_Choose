<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
  <%@page import="Elective.Conn" %> 
  <%@page import="java.sql.*" %>
 <%
 	final String name=request.getParameter("name");
	final String mail=request.getParameter("mail");
	final String reg=request.getParameter("reg");
	final String sem=request.getParameter("sem");
	final String course=request.getParameter("course");
	final String branch=request.getParameter("branch");
	final String mob=request.getParameter("mob");
	final String gender=request.getParameter("gender");
	final String pass=request.getParameter("pass");
	final String Cpass=request.getParameter("Cpass");
	
	try{
		Connection con = Conn.getCon();
		Statement st = con.createStatement();
		if(pass.equals(Cpass)){
			st.executeUpdate("insert into userstudent values('"+reg+"','"+pass+"')");
			
			st.executeUpdate("insert into student_info values('"+name+"','"+mail+"','"+reg+"','"+sem+"','"+course+"','"+branch+"','"+mob+"','"+gender+"')");
			response.sendRedirect("index.html"); 
		}
		
	}catch(Exception e){
		out.println(e);
	}
	
	
 %>
