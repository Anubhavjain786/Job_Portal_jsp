package SBProject.Dao;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;

public class PostAJobDAO extends LoginDAO {
	public boolean check(String jobcode,String jobtitle,String jobsdes,String jobdes,String jobsal,String jobpdate,String jobcdate,String jobphone,String jobemail,String jobnov,String joborg,String jobposs,int recru_id) throws ServletException,IOException
	{
		
		try {
			
		String Quarry="insert into jobs(job_code,job_title,short_des,long_desc,salary,publish_date,closing_date,phone,email,no_of_vacancy,organization,job_position,recru_id) "
				+ "values('"+jobcode+"','"+jobtitle+"','"+jobsdes+"','"+jobdes+"','"+jobsal+"','"+jobpdate+"','"+jobcdate+"','"+jobphone+"','"+jobemail+"','"+jobnov+"','"+joborg+"','"+jobposs+"',"+ recru_id+") ";
		st = con.prepareStatement(Quarry);
		int count=st.executeUpdate(Quarry);
		if(count==0)
			return false;
		else 
			return true;
		}
		catch (Exception e)	{			
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
