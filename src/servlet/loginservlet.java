package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userbean.userbean;
import adityadao.logindao;
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub

	userbean user=new userbean();
	user.setUsername(req.getParameter("username"));
	user.setPassword(req.getParameter("password"));
	
	logindao.login(user);
	 boolean status=user.isValid();
     if(status) {
    	 HttpSession session=req.getSession(true);
			session.setAttribute("usersession",user);
			RequestDispatcher rd=req.getRequestDispatcher("loginhome.jsp");
			rd.include(req, resp);
     	/*resp.sendRedirect("loginhome.jsp");*/
     }else {
     	resp.sendRedirect("index.html");
     }
    
}
}
