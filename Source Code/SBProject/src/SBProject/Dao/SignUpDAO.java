package SBProject.Dao;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;

import SBProject.Dao.LoginDAO;;

public class SignUpDAO extends LoginDAO
{
	public boolean signUpJS(String fn,String ln,String dob,String phone,String email,String pass,String address,String city,String state,int exp,String edu) throws ServletException,IOException
	{
		try 
		{
			String JobSeekersQyarry=" insert into job_seekers (first_name,last_name,birth_date,phone,email,pass,address,city,state,experience,education) values('"+fn+"','"+ln+"','"+dob+"','"+phone+"','"+email+"','"+pass+"','"+address+"','"+city+"','"+state+"',"+exp+",'"+edu+"')";
			st = con.prepareStatement(JobSeekersQyarry);
			int count=st.executeUpdate(JobSeekersQyarry);
			if(count==0){
				return false;
			}
				else {
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
		return false;
		}
	
	
	public boolean signUpRE(String fn,String ln,String phone,String email,String pass,String org,String city) throws ServletException,IOException
	{
	
		try 
			{
				String RecruiterQyarry=" insert into recruiters(first_name,last_name,phone,email,pass,organization,city) values('"+fn+"','"+ln+"','"+phone+"','"+email+"','"+pass+"','"+org+"','"+city+"')";
				st = con.prepareStatement(RecruiterQyarry);
				int count=st.executeUpdate(RecruiterQyarry);
				if(count==0){
					return false;
				}
					else {
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
		
		
		return false;
		
}
}
