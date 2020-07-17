package SBProject.Dao;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

/**
 * 
 * @author ANUBHAV JAIN
 * 
 *DAO- Data Access Object 
 *DAO Class is Use for Accessing Database 
 */
public class LoginDAO {
	

	protected static String URL="jdbc:mysql://localhost:3306/sb_test_project";
	protected static String DBUsername = "root";
	protected static String DBPassword = "mysql@dmin";
	protected static String Driver="com.mysql.jdbc.Driver";
	protected static Connection con=null;
	protected static PreparedStatement  st=null;
	public LoginDAO() {
		try {
			Class.forName(Driver);
			con = DriverManager.getConnection(URL,DBUsername,DBPassword);
		}
		
		
		
		catch (Exception e)
		{
			
			e.printStackTrace();
		} 
	}
		
		
		public boolean check(String uname,String pass,String loginAs,HttpSession session) throws ServletException,IOException
		{
			
			
			if(loginAs.equals("jobseeker"))
			{
			try 
			{		
				String JobSeekerQuarry="SELECT * FROM job_seekers WhERE email=? AND pass=?";
				st = con.prepareStatement(JobSeekerQuarry);
				st.setString(1, uname);
				st.setString(2, pass);
				ResultSet rs =st.executeQuery();
				
				
				if(rs.next())
				{
					int id  = rs.getInt("js_id");
					session.setAttribute("js_id",id);
					session.setAttribute("LoginAS",loginAs);
					return true;
					
				}
			}
			catch (Exception e)
			{
				
				e.printStackTrace();
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
			}
			else if(loginAs.equals("recruiter"))
			{
				try 
				{
					String RecruiterQyarry="SELECT * FROM recruiters Where email=? AND pass=?";
					st = con.prepareStatement(RecruiterQyarry);
					st.setString(1, uname);
					st.setString(2, pass);
					ResultSet rs =st.executeQuery();
								
					if(rs.next())
					{
						int id  = rs.getInt("recru_id");
						session.setAttribute("recru_id",id);
						session.setAttribute("LoginAS",loginAs);
						return true;
					}
				}
				catch (Exception e)
				{
					
					e.printStackTrace();
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
			}
			
			
			return false;
		}
		 
		
}
 