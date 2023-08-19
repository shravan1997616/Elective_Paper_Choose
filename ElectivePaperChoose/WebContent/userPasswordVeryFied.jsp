<%@page import="Elective.MatchOTP"%>
<%
	String otp=request.getParameter("otp");
	String utype=request.getParameter("utype");
	
	System.out.println(otp);
	MatchOTP obj = new MatchOTP();
	boolean ans = obj.open(otp,utype);
	
	System.out.println(ans);
	
	if(ans && utype.equals("Student")){
		response.sendRedirect("studentNewPassEnter.html");	
	}else if(ans && utype.equals("Faculty Advisor")){
		response.sendRedirect("faNewPassEnter.html");		
	}else{
		response.sendRedirect("errorPassForgot.html");
	}
%>
