<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="userbean.userbean" %>
<%

String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");

String mail=request.getParameter("mail");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aditya", "aditya");

Statement st1=con.createStatement();

int i=st1.executeUpdate("update video set password='"+Newpass+"' where email='"+mail+"'");
out.println("Password changed successfully");
st1.close();
con.close();

}
catch(Exception e){
out.println(e);
}
%>