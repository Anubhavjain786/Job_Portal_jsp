package SBProject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SBProject.Dao.LoginDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	      
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String LoginAs=request.getParameter("LoginAs");
		
		LoginDAO Check =new LoginDAO();
		HttpSession session =request.getSession();
		
		
		if(Check.check(uname, pass,LoginAs,session))
		{
			
			session.setAttribute("username",uname);
			if(LoginAs.equals("jobseeker"))
			{
				response.sendRedirect("welcomeJS.jsp");
				
			}
			else
			{
				response.sendRedirect("welcomeRE.jsp");
				
			}

			
		}
		else
		{
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
		
		
	}
}
