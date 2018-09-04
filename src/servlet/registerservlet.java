package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import adityadao.registerdao;
import userbean.userbean;
@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

resp.setContentType("text/html");
PrintWriter out=resp.getWriter();
	userbean user=new userbean();
	user.setUsername(req.getParameter("username"));
	user.setPassword(req.getParameter("password"));
	user.setEmail(req.getParameter("email"));
	user.setGender(req.getParameter("gender"));
	user.setId(Integer.parseInt(req.getParameter("id")));
	registerdao.register(user);
	boolean status=user.isValid();
	if(status) {
       resp.sendRedirect("index.html");
       
       
       
       
       
       
	}else {
		HttpSession session=req.getSession(true);
		session.setAttribute("usersession", user);
		session.setAttribute("username", user.getUsername());
		session.setAttribute("password", user.getPassword());
		session.setAttribute("email", user.getEmail());
		session.setAttribute("gender", user.getGender());
		String id=Integer.toString(user.getId());
		session.setAttribute("id", id);
		
		resp.sendRedirect("registration.jsp");
		
		out.println("<script>");
		
		
		
	}
}


	

}

