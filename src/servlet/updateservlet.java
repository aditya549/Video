package servlet;
import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import adityadao.registerdao;
import adityadao.updatedao;
import userbean.userbean;
@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet 
{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		userbean user=new userbean();
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setEmail(req.getParameter("email"));
		user.setGender(req.getParameter("gender"));
		user.setId(Integer.parseInt(req.getParameter("id")));
		updatedao.update(user);
		boolean status=user.isValid();
		if(status) {
	       res.sendRedirect("login.jsp");
		}else {
			res.sendRedirect("update.jsp");
		}
	}
	
		
		
	}



