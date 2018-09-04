<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Video Login Success Responsive Widget Template :: Aditya Reddy</title>
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
	<style>
	div.container{
	width: 100%;
	border: thin;
	}
	article{
	padding: 3em;
	align-content: center;
	align-items: center;
	align-self: auto;
	
	}
	
	
	
	</style>
	
</head>

<body>
	<div class="video-w3l" data-vide-bg="video/1">
		<!-- title -->
		<h1>
			<span>V</span>ideo
			<span>L</span>ogin
			<span>S</span>uccess</h1>
		<!-- //title -->
		<a href="logout.jsp"><input type="button" value="logout"></a>
		<div class="container">
		<article>
		<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="userbean.userbean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="height: 500px;">

<table border="3"  align="center" style="color: white; width: 50px; height: 50px;"><tr>
<th style="border-color: white;" align="center">USERNAME</th>
<th>PASSWORD</th>
<th>EMAIL</th>
<th>GENDER</th>	
<th>ID</th>
<th>TO DO'S</th>
</tr>
<%
try{
String username=request.getParameter("username");
String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aditya","aditya");
	PreparedStatement pstmt=conn.prepareStatement("select * from video where username=? and password=? ");
	pstmt.setString(1,username);
	pstmt.setString(2, password);

	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){
		%>
		<tr align="center">
		<td><%=rs.getString("username") %></td>
		<td><%=rs.getString("password") %></td>
		<td><%=rs.getString("email") %></td>
		<td><%=rs.getString("gender") %>
		<td><%=rs.getInt("id") %></td>
		<td><a href="edit.jsp?id=<%= rs.getInt("id") %>">EDIT</a>  <a href="delete.jsp?id=<%= rs.getInt("id") %>">DELETE</a></td>
		</tr>
		<% 	
	}
}catch(Exception e){
	System.out.println(e);
}

%>


</table>
</div>

</body>
</html>
		
		</article>
		
		
		</div>
				<!-- copyright -->
		<div class="footer">
			<p>&copy; 2018 Video Home Page. All rights reserved | Design by
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