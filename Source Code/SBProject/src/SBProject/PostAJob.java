package SBProject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SBProject.Dao.PostAJobDAO;


@WebServlet(description = "Class use to be create a job", urlPatterns = { "/PostAJob" })
public class PostAJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
         
    public PostAJob() {
        super();       
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String jobcode =request.getParameter("jobcode");
    	String jobtitle =request.getParameter("jobtitle");
    	String jobsdes =request.getParameter("jobsdes");
    	String jobdes =request.getParameter("jobdes");
    	String jobsal =request.getParameter("jobsal");
    	String jobpdate =request.getParameter("jobpdate");
    	String jobcdate =request.getParameter("jobcdate");
    	String jobphone =request.getParameter("jobphone");
    	String jobemail =request.getParameter("jobemail");
    	String jobnov =request.getParameter("jobnov");
    	String joborg =request.getParameter("joborg");
    	String jobposs =request.getParameter("jobposs");
    	HttpSession session =request.getSession();
    	int RE_ID =(int) session.getAttribute("recru_id");
    	String js_ID = session.getAttribute("js_ID").toString();
    	PostAJobDAO Check =new PostAJobDAO();
    	if(jobcode.isEmpty()||jobtitle.isEmpty()||jobsdes.isEmpty()||jobdes.isEmpty()||jobsal.isEmpty()||jobpdate.isEmpty()||jobcdate.isEmpty()||jobphone.isEmpty()||jobemail.isEmpty()||jobnov.isEmpty()||joborg.isEmpty()||jobposs.isEmpty())
    	{
    		response.sendRedirect("PostAJob.jsp");
    	}
    	if(RE_ID!=0) {  
    		if(jobcode.isEmpty()||jobtitle.isEmpty()||jobsdes.isEmpty()||jobdes.isEmpty()||jobsal.isEmpty()||jobpdate.isEmpty()||jobcdate.isEmpty()||jobphone.isEmpty()||jobemail.isEmpty()||jobnov.isEmpty()||joborg.isEmpty()||jobposs.isEmpty())
        	{
        		response.sendRedirect("PostAJob.jsp");
        	}
    		if(Check.check(jobcode, jobtitle, jobsdes,jobdes,jobsal,jobpdate,jobcdate,jobphone,jobemail,jobnov,joborg,jobposs,RE_ID))
        	{
        		
    			response.sendRedirect("welcomeRE.jsp");
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
    	else
    	{
    		response.sendRedirect("login.jsp");
    	}
    	
    	
    	
    	
		
				
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
		
	}

}
