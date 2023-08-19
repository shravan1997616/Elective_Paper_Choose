<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Elective.UserLogin" %>
    <%@page import="Elective.Conn" %>
    <%@page import="java.sql.*" %>
    
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
 <table align="center" cellpadding="5" cellspacing="5" border="1">  
 <%
 	final String reg=request.getParameter("name");
	final String pass=request.getParameter("pass");
	final String utype=request.getParameter("utype");
	
	/* ...................................................................... */
	
	/* ...................................................................... */
	
	UserLogin obj = new UserLogin();
	
	if(utype.equals("Faculty Advisor")){
		if(obj.openFA(reg,pass)){
			response.sendRedirect("FAfacilati.html");
		}else{
			response.sendRedirect("loginError.html" + reg);
		}
		
	}else if(utype.equals("Student")){
		if(obj.openStudent(reg,pass)){
			Connection con = Conn.getCon();
			Statement st = con.createStatement(); 
			
			String q = "select *from student_info where reg='"+reg+"'";
			ResultSet rs = st.executeQuery(q);
			String course="";
			if(rs.next())
				course = rs.getString("course");
			
			
			if(course.equals("MCA")){
				session.setAttribute("mass",reg);
				response.sendRedirect("MCAstudent.jsp");
			}else if(course.equals("BT")) {
				
			}else if(course.equals("elect")) {
				
			}else if(course.equals("machi")) {
				
			}
			

		}else{
			response.sendRedirect("loginError.html");
		}
	}
 %>
 </table>
