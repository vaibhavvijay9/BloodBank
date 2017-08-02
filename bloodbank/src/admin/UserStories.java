package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class UserStories 
{
	public Vector<String> username=new Vector<String>();
	public Vector<String> story=new Vector<String>();
	public Vector<String> status=new Vector<String>();
	
	public void getStories()
	{
		String query="select * from stories order by status desc";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				username.addElement(res.getString(1));
				story.addElement(res.getString(2));
				status.addElement(res.getString(3));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> username()
	{
		return username;
	}
	public Vector<String> story()
	{
		return story;
	}
	public Vector<String> status()
	{
		return status;
	}
	
	//update status
	public int updateStories(String username)
	{
		int flag=0;
		String query="update stories set status=? where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "Approved");
			ps.setString(2, username);
			flag=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	//delete story
	public int deleteStory(String username)
	{
		int flag=0;
		String query="delete from stories where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
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
