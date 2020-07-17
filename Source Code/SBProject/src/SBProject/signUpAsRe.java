package SBProject;
import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SBProject.Dao.SignUpDAO;


@WebServlet("/signUpAsRe")
public class signUpAsRe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public signUpAsRe() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fn=request.getParameter("REfname");
		String ln=request.getParameter("RElname");
		String phone=request.getParameter("REphone");
		String email=request.getParameter("REemali");
		String pass=request.getParameter("REpass");
		String org=request.getParameter("REOrg");
		String city=request.getParameter("REcity");
		
		if(fn.isEmpty()||ln.isEmpty()||phone.isEmpty()||email.isEmpty()||pass.isEmpty()||org.isEmpty()||city.isEmpty())
		{
			response.sendRedirect("SignUpAdRE.jsp");
		}
		
		
		SignUpDAO Check = new SignUpDAO();
		
		if(Check.signUpRE(fn,ln,phone,email,pass,org,city))
		{
			HttpSession session =request.getSession();
			session.setAttribute("username",email);

			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<html>");
			out.println("<body bgcolor='lightblue'>");
			out.println("<font color='red'>");
			out.println("No Row Update");
			out.println("</font>");
			out.println("</body>");
			out.println("</html>");
			
		}
		
		
	}

}
