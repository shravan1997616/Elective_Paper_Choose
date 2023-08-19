<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="Elective.Conn" %>
    <%@page import="java.sql.*"%>
    
<%
	final String userID=request.getParameter("userID");
    final String newPass=request.getParameter("newPass");
	final String reNewPass=request.getParameter("ReNewPass");
	
	
	try{
		Connection con = Conn.getCon();
		Statement st = con.createStatement();
		String q = "select *from userstudent where id='"+userID+"'";
		ResultSet rs = st.executeQuery(q);
		if(rs.next()){
			String reg = rs.getString("id");		
			String qr = "select *from student_info where reg='"+reg+"'";
			ResultSet r = st.executeQuery(qr);
			if(r.next()) {
				String mail=r.getString("mail");
				String q1 = "select *from mailsend where mail='"+mail+"'";
				ResultSet rs1 = st.executeQuery(q1);
				
				if(rs1.next()){
					String mail2 = rs1.getString("mail");
					if(mail.equalsIgnoreCase(mail2) && newPass.equals(reNewPass)) {

						/*...............................................................*/
						String sql = "update userstudent set pass='"+newPass+"' where id='"+userID+"'";
						st.executeUpdate(sql);
						
						String delete = "delete from mailsend where mail='"+mail2+"'";
						st.executeUpdate(delete);
						
						String del = "delete from mailsend where mail='null'";
						st.executeUpdate(del);
					/*	...................................................................*/
						response.sendRedirect("userUpdateSucces.html");
					}
				}	
			}
		}
	}catch(Exception e){
		response.sendRedirect("errorUpdatePass.html");
	}
%>
