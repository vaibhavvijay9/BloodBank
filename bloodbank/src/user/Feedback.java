package user;
import java.sql.*;

import bloodbank.DBInfo;

public class Feedback 
{
	private String feedback;	
	
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	public int submitFeedback(String username)
	{
		int flag=0;
		String query="insert into feedbacks values(?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, feedback);
			flag=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
}