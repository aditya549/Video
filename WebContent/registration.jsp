<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">
<%@page import="userbean.userbean"  %>
<head>
	<title>Video Registration Form Responsive Widget Template :: Aditya Reddy</title>
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
	 <script language="JavaScript">
    function showInput() {
        document.getElementById('display').innerHTML = 
                    document.getElementById("user_input").value;
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
			<span>R</span>egistration
			<span>F</span>orm</h1>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
		<%String name=(String)session.getAttribute("username");
		  String pass=(String)session.getAttribute("password");
		  String email=(String)session.getAttribute("email");
		  String gender=(String)session.getAttribute("gender");
		  String id=(String)session.getAttribute("id");
		  session.invalidate();
		%>
			<form action="registerservlet" method="post">
				<% if(name==null){%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Username</label>
					<input placeholder="Username" name="username" type="text" required="" >
				</div>
				<% }else{%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Username</label>
					<input placeholder="Username" name="username"  type="text" required="" value="<%=name %>">
				</div>
				<% }%>
				<% if(pass==null){%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-unlock-alt"></i>Password</label>
					<input placeholder="Password" name="password" type="password" required=""  pattern="(?=.*\d)(?=.*[a-z])(?=.*[$-@-%-&-*])(?=.*[A-Z]).{8,}" title="must contain atleast one lowercase,uppercase,numbers and special characters" >
				</div>
				<% }else{%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-unlock-alt"></i>Password</label>
					<input placeholder="Password" name="password" type="password" required="" value="<%=pass %>" pattern="(?=.*\d)(?=.*[a-z])(?=.*[$-@-%-&-*])(?=.*[A-Z]).{8,}" title="must contain atleast one lowercase,uppercase,numbers and special characters" >
				</div>
				<% }%>
				<% if(email==null){%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Email</label>
					<input placeholder="Email" name="email" required="" type="email"  pattern=".+@gmail.com" title="email must be in the given format example@gmail.com  "  >
				</div>
				<% }else{%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Email</label>
					<input placeholder="Email" name="email" required="" type="email"  pattern=".+@gmail.com" title="email must be in the given format example@gmail.com  "  >
				
				</div>
				<p style="color: red;"><%=email %> email already exists.Please try with other mail id</p>
								<%} %>
								
								<% if(gender==null){%>
								<div class="form-style-agile">
					
					<label for="gender"><i class="fas fa-user"></i>Gender </label>  
              <input type="radio" id="gender" name="gender" required="" value="male"/>Male  
              <input type="radio" id="gender" name="gender" required="" value="female"/>Female <br/> 
				</div>
				<% }else{%>
								<div class="form-style-agile">
					
					<label for="gender"><i class="fas fa-user"></i>Gender </label>  
              <input type="radio" id="gender" name="gender" required="" value="<%=gender %>"/>Male  
              <input type="radio" id="gender" name="gender" required="" value="<%=gender %>"/>Female <br/> 
				</div>
				<%} %>
				<% if(id==null){%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Id</label>
					<input placeholder="Id" name="id" type="number" pattern="[6-9]{1}[0-9]{9}" title="must contain 10 digits" required="" size="15" maxlength="10">
				</div>
				<% }else{%>
				<div class="form-style-agile">
					<label>
						<i class="fas fa-user"></i>Id</label>
					<input placeholder="Id" name="id" type="number" pattern="[6-9]{1}[0-9]{9}" title="must contain 10 digits"value="<%=id %>" required="" size="15" maxlength="10">
				</div>
				<%} %>
				
				
				
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
					<a href="#">Remember Me</a><br>&nbsp;&nbsp;<a href="image.jsp" >click here to upload a image</a>
				</div>
				<!-- //switch -->
				<input type="submit" value="Register" onclick="showInput();">
				 
			</form>
		</div>
		<!-- //content -->

		<!-- copyright -->
		<div class="footer">
			<p>&copy; 2018 Video Registration Form. All rights reserved | Design by
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