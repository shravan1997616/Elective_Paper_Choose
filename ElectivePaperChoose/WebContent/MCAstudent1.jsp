<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    
    <link rel="stylesheet" href="CSS/style1.css" />
    <title>Choose Elective Paper in NITC</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <!-- <div class="signin-signup">
        <form action="login.jsp" class="sign-in-form" style="width:50%;">
		<div class="signup">
			
			<div class="input_control">
				<input type="text" name="name" required="required" placeholder="Enter User ID">
			</div>
			<div class="input_control">
				<input type="password" name="pass" required="required" placeholder="Enter Password">
			</div>
			<div class="input_control">
				<select name="utype" required="required">
					<option>Select User MODE</option>
					<option>Student</option>
					<option>Faculty Advisor</option>
				</select>
			</div>
			
			<div class="input_btn" >
				<input type="submit" value="Login">
				<input type="reset" style="color:red" value="Cancel">
			</div>
			<div class="input_control">
				<center><h6><a href="userPasswordForget.html" style="color:green">Forgot Password</a></h6></center>
			</div>
		</div>
		</form> -->
          
       <form action="studentRegistration.jsp" class="sign-up-form">
		<div class="signup">
			<div class="input_group">
				<input type="text" name="name" required="required" placeholder="Enter Student Name">
				<input type="email" name="mail" required="required" placeholder="Enter Email ID">
			</div>
			<div class="input_group">
				<input type="text" name="reg" required="required" placeholder="Enter Registration No">
				
				<input type="text" name="sem" required="required" placeholder="Enter Semester">
			</div>
			<div class="input_group">
				<select name="course" required="required">
					<option>Select Course</option>
					<option>B.E/B.Tech</option>
					<option>MCA</option>
					<option>B.Arch</option>
					<option>MBA/PGDM</option>
					<option>M.E/M.Tech</option>
					<option>M.Sc</option>
					<option>M.Plan</option>
				</select>
				
				<select name="branch" required="required">
					<option>Select Branch</option>
					<option>Computer Science Engineering</option>
					<option>Electrical Engineering</option>
					<option>Electronics & Communication Engineering</option>
					<option>Electronics Engineering</option>
					<option>Materials Science</option>
					<option>Mechanical Engineering</option>
					<option>Production Engineering</option>
					<option>Biotechnology Engineering</option>
					<option>Chemical Engineering</option>
					<option>Civil Engineering</option>
				</select>	
				
			</div>
			<div class="input_group">
				<input type="datetime" name="mob" required="required" placeholder="Enter Moble No">
				<select name="gender" required="required">
					<option>Select Gender</option>
					<option>Male</option>
					<option>Female</option>
				</select>
			</div>
			<div class="input_group">
				<input type="password" name="pass" required="required" placeholder="Enter Password">
				<input type="password" name="Cpass" required="required" placeholder="Enter Conform password">
			</div>
			<div class="input_btn">
				<input type="submit" value="Submit">
				<input type="reset" style="color:red;" value="Cancel">
			</div>
		</div>
		</form>
          
        </div>
      </div>


    <script src="app.js"></script>
    
      
  </body>
</html>
