<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="zxx">

<head>
	<title>Video Update Form Responsive Widget Template :: Aditya Reddy</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Video Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Marck+Script&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext"
	    rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<div class="video-w3l" data-vide-bg="video/1">
		<!-- title -->
		<h1>
		    <span>W</span>elcome
		    <span>T</span>o
			<span>V</span>ideo
			<span>U</span>pdate
			<span>F</span>orm</h1>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<form action="updateservlet" method="post">
			<%
try{
	int id=Integer.parseInt(request.getParameter("id"));
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aditya","aditya");
	PreparedStatement pstmt=conn.prepareStatement("select *  from video where id=?");
	pstmt.setInt(1, id);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){
%>   
			
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Username</label>
					<input placeholder="Username" name="username" type="text" required="" value="<%=rs.getString("username")%>">
				</div>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-unlock-alt"></i>Password</label>
					<input placeholder="Password" name="password" type="text" required="" value="<%=rs.getString("password")%>">
				</div>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Email</label>
					<input placeholder="Email" name="email" type="text" required="" value="<%=rs.getString("email")%>">
				</div>
								<div class="form-style-agile">
					
					<label for="gender"><i class="fas fa-user"></i>Gender </label>  
					<% if(rs.getString("gender").equals("male")){%>
              <input type="radio" id="gender" name="gender" value="male" checked="checked"/>Male  
              <input type="radio" id="gender" name="gender" value="female"/>Female <br/> 
				<%
					}else{
						%>
			<input type="radio" id="gender" name="gender" value="male" />Male  
              <input type="radio" id="gender" name="gender" value="female" checked="checked"/>Female <br/> 
						
						<%
					
					
					}
						%>
					
			
				</div>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Id</label>
					<input placeholder="Id" name="id" type="text" required="" value="<%= rs.getInt("id") %>" readonly="readonly">
				</div>
				
				
				
				
				<!-- switch -->
				<div class="checkout-w3l">
					<div class="demo5">
						<div class="switch demo3">
							<input type="checkbox">
							<label>
								<i></i>
							</label>
						</div>
					</div>
					<a href="#">Remember Me</a>
				</div>
				<!-- //switch -->
				<input type="submit" value="Update">
				<%
	}
	
}catch(Exception e)
		{
		System.out.println(e);}
		%>
				
			</form>
		</div>
		<!-- //content -->

		<!-- copyright -->
		<div class="footer">
			<p>&copy; 2018 Video Updation Form. All rights reserved | Design by
				<a href="http://w3layouts.com">Aditya Reddy</a>
			</p>
		</div>
		<!-- //copyright -->
	</div>

	
	<!-- Jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //Jquery -->

	<!-- Video js -->
	<script src="js/jquery.vide.min.js"></script>
	<!-- //Video js -->
	
</body>

</html>