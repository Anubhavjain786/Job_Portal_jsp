package SBProject.Dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ViewAllJobs")
public class ViewAllJobs extends HttpServlet {
	private String URL="jdbc:mysql://localhost:3306/sb_test_project";
	private String DBUsername = "root";
	private String DBPassword = "mysql@dmin";
	private String Driver="com.mysql.jdbc.Driver";
	private Connection con=null;
	private PreparedStatement  st=null;
	private ResultSet rs=null;
	
	
	private static final long serialVersionUID = 1L;
       public ViewAllJobs() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
	     if(session.getAttribute("username")==null){
	        response.sendRedirect("login.jsp");
	      }
	    
	 	response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<body bgcolor='lightblue'>");
		out.println("<h3>List Of Open Jobs</h3>");		
			try
			{
			Class.forName(Driver);
			con = DriverManager.getConnection(URL,DBUsername,DBPassword);
			String quary="select job_id,job_code,job_title,short_des,long_desc,salary,publish_date,closing_date,phone,email,no_of_vacancy,organization,job_position from jobs";
			st = con.prepareStatement(quary);
			rs=st.executeQuery(quary);
			out.println("<table width='100%'>");
			out.println("<tr>");
			out.println("<td>S.No</td>");
			out.println("<td>Job Code</td>");
			out.println("<td>Title</td>");
			out.println("<td>About Post</td>");
			out.println("<td>Description</td>");
			out.println("<td>Salary</td>");
			out.println("<td>Publish Date</td>");
			out.println("<td>Closing Date</td>");
			out.println("<td>Phone</td>");
			out.println("<td>Email</td>");
			out.println("<td>No of Vacancy</td>");
			out.println("<td>Organization Name</td>");
			out.println("<td>Position</td>");
			out.println("</tr>");
			while(rs.next()) {
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("<td>"+rs.getString(5)+"</td>");
				out.println("<td>"+rs.getString(6)+"</td>");
				out.println("<td>"+rs.getString(7)+"</td>");
				out.println("<td>"+rs.getString(8)+"</td>");
				out.println("<td>"+rs.getString(9)+"</td>");
				out.println("<td>"+rs.getString(10)+"</td>");
				out.println("<td>"+rs.getString(11)+"</td>");
				out.println("<td>"+rs.getString(12)+"</td>");
				out.println("<td>"+rs.getString(13)+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			}
			catch(Exception sqle){
				out.println("<font color='red'>");
				out.println("Error:Sql Exception"+sqle);
				out.println("</font>");
			} 
			finally{
				try{
					if(st!=null)
						st.close();
					if(con!=null)
						con.close();
				}
				catch(SQLException e){
					e.printStackTrace();
				}
			}
			String LoginAS=session.getAttribute("LoginAS").toString();
			if(LoginAS.equals("jobseeker"))
		     {
				out.println("<div>");
				out.println("<form action='ApplyForJob' method='post'>");
				out.println("<center>");
				out.println("<input type='number' name='applyJobnum' placeholder='Enter Job Number To Apply'>");
				out.println("<input type='submit' value='Apply'>");
				out.println("</center>");
				out.println("</form>");
				out.println("</div>");
		     }	
			
			out.println("</body>");
			out.println("</html>");
	     
	
	}

}
