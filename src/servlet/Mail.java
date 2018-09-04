package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userbean.userbean;
@WebServlet("/Mail")
public class Mail extends HttpServlet  {
	   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	 {
		   
		   try {
			  userbean user=new userbean();
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aditya","aditya");
				PreparedStatement pstmt=conn.prepareStatement("select *  from video where email=?");
				String email=req.getParameter("mail");
				pstmt.setString(1, email);
			
				ResultSet rs=pstmt.executeQuery();
			
				boolean ss=rs.next();
				
				System.out.println(ss);
				if(ss) {
					HttpSession session=req.getSession(true);
					session.setAttribute("usersession", user.getPassword());
					PrintWriter out=resp.getWriter();
					String msg="<html><a href='http://localhost:1234/video/newpassword.jsp'>click here to change password</a></html>";
					  forgetservlet.send("sr143251@gmail.com","satyamshobha",email,"hello",msg);  
					    
					    out.println("<script>alert('password was sent to your mail')</script>");
					    out.println("<script>window.location.href='http://localhost:1234/video/index.html'</script>");
					   	
				}else {
					System.out.println("not successfull");
				}
		   }catch(Exception e) {
			   
		   }
		  
		    
	}
	    
	
}
