package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class YourStory 
{
	private String story;	
	
	public void setStory(String story) {
		this.story = story;
	}
	
	public int submitStory(String username)
	{
		int flag=0;
		String query="insert into stories values(?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, story);
			ps.setString(3, "Pending");
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