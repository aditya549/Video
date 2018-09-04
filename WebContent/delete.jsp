<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	int id=Integer.parseInt(request.getParameter("id"));
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aditya","aditya");
	PreparedStatement pstmt=conn.prepareStatement("delete  from video where id=?");
	pstmt.setInt(1, id);
int i=pstmt.executeUpdate();
if(i==1){
	response.sendRedirect("loginhome.jsp");
}else{
	response.sendRedirect("deleted.jsp");
}
		%>
		
		<%
		}catch(Exception e)
		{
		System.out.println(e);}
		%>

</body>
</html>