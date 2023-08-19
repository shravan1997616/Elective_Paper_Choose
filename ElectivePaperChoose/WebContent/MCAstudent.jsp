<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="Elective.UserLogin" %>
    <%@page import="Elective.Conn" %>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body bgcolor="gray">
		<h2 align="center"><font><strong>Well come to NITC</strong></font></h2>
		<table align=""  cellpadding="1" cellspacing="5" border="1" height=50px>  
		<%
			String reg=session.getAttribute("mass").toString();
			//out.print(reg);
			
			Connection con = Conn.getCon();
			Statement st = con.createStatement();
 			String q = "select *from student_info where reg='"+reg+"'";
			ResultSet rs = st.executeQuery(q);
		
			while(rs.next()){
			%>
			
				<tr bgcolor="#DEB887">

					<td><h3>name</h3></td>
					<td><%=rs.getString("name") %></td>
					<td><h3>Mail</h3></td>
					<td><%=rs.getString("mail") %></td>

				</tr>
				<tr bgcolor="#DEB887">

					<td><h3>Registration</h3></td>
					<td><%=rs.getString("reg") %></td>
					<td><h3>semester</h3></td>
					<td><%=rs.getString("sem") %></td>

				</tr>
				<tr bgcolor="#DEB887">

					<td><h3>course</h3></td>
					<td><%=rs.getString("course") %></td>
					<td><h3>branch</h3></td>
					<td><%=rs.getString("branch") %></td>

				</tr>
				<tr bgcolor="#DEB887">

					<td><h3>mobile No</h3></td>
					<td><%=rs.getString("mob") %></td>
					<td><h3>gender</h3></td>
					<td><%=rs.getString("gender") %></td>

				</tr>


			<%  
			} 
 		%>
		</table>
			 <br><br>

			<form action="chose.jsp" style="border-radius:10px border: 1px soid rgba(255,255,255,0.3)">
			<h1>Chose Core paper</h1>
			<table align=""  cellpadding="1" cellspacing="5" border="1" height=50px> 
			<%
			  	Connection con2 = Conn.getCon();
				Statement st2 = con.createStatement();
				String q2 = "select *from mcacore";
				ResultSet rs2 = st.executeQuery(q2);
				
				%>
				<tr bgcolor="#DEB887">
					<td><b>Check box</b></td>
					<td><b>Subject code</b></td>
					<td><b>Subject name</b></td>
					<td><b>Subject credit</b></td>
					<td><b>Subject slot</b></td>
				</tr>
				<% 
				 
				//while(rs2.next()){
				
					if(rs2.next()){
					%>
						<tr bgcolor="#DEB887">
						<td><input type="checkbox" id="core" name="core" value="<%=rs2.getString("s_code") %>"></td>
						<td><label for=core><%=rs2.getString("s_code") %></label></td>
						<td><b><%=rs2.getString("s_name") %></b></td>
						<td><b><%=rs2.getString("s_credit") %></b></td>
						<td><b><%=rs2.getString("s_slot") %></b></td>

					</tr>
					<%
					}
					if(rs2.next()){
					%>
						<tr bgcolor="#DEB887">
						<td><input type="checkbox" id="core1" name="core1" value="<%=rs2.getString("s_code") %>"></td>
						<td><label for="core1"><%=rs2.getString("s_code") %></label></td>
						<td><b><%=rs2.getString("s_name") %></b></td>
						<td><b><%=rs2.getString("s_credit") %></b></td>
						<td><b><%=rs2.getString("s_slot") %></b></td>

					</tr>
					<%
					}
					if(rs2.next()){
					%>
						<tr bgcolor="#DEB887">
						<td><input type="checkbox" id="core2" name="core2" value="<%=rs2.getString("s_code") %>"></td>
						<td><label for="core2"><%=rs2.getString("s_code") %></label></td>
						<td><b><%=rs2.getString("s_name") %></b></td>
						<td><b><%=rs2.getString("s_credit") %></b></td>
						<td><b><%=rs2.getString("s_slot") %></b></td>

					</tr>
					<% 
					}

			  %>
			 </table> 
			<h1>Chose Elective paper</h1>
			<table align=""  cellpadding="1" cellspacing="5" border="1" height=50px>  	
				
			<%			
				Connection con1 = Conn.getCon();
				Statement st1 = con.createStatement();
 				String q1 = "select *from mcasub";
				ResultSet rs1 = st.executeQuery(q1);
				
				%>
				<tr bgcolor="#DEB887">
					<td><b>Check box</b></td>
					<td><b>Subject code</b></td>
					<td><b>Subject name</b></td>
					<td><b>Subject credit</b></td>
					<td><b>Subject slot</b></td>
				</tr>
				<% 
				
				while(rs1.next()){
				%>
					<tr bgcolor="#DEB887">
						<td><input type="checkbox" id="elective" name="elective" value="<%=rs1.getString("s_code") %>"></td>
						<td><label for="elective"><%=rs1.getString("s_code") %></label></td>
						<td><b><%=rs1.getString("s_name") %></b></td>
						<td><b><%=rs1.getString("s_credit") %></b></td>
						<td><b><%=rs1.getString("s_slot") %></b></td>

					</tr> 
				<% 
				} 
 			%> 
			</table>
			<button>submit</button> 
			</form> 
  
		
	</body>
</html>