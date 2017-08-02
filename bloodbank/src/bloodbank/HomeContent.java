package bloodbank;
import bloodbank.DBInfo;

import java.sql.*;
import java.util.Vector;

public class HomeContent 
{
	
	//getting inspiring stories   (s)
	public Vector<String> s_username=new Vector<String>();
	public Vector<String> s_story=new Vector<String>();
	
	public void getStories()
	{
		String query="select username,story from stories where status=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "Approved");
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				s_username.add(res.getString(1));
				s_story.add(res.getString(2));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> storyUsername()
	{
		return s_username;
	}
	public Vector<String> storyContent()
	{
		return s_story;
	}
	
	//getting top blood donors    (d)
	public Vector<String> d_username=new Vector<String>();
	public Vector<String> d_times=new Vector<String>();
	
	public void getTopDonors()
	{
		String query="select username,count(username) from donations group by username order by 2 desc limit 15";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				d_username.add(res.getString(1));
				d_times.add(res.getString(2));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> donorUsername()
	{
		return d_username;
	}
	public Vector<String> donorTimes()
	{
		return d_times;
	}
	
	//getting camps (c)
	public Vector<String> c_date=new Vector<String>();
	public Vector<String> c_name=new Vector<String>();
	public Vector<String> c_venue=new Vector<String>();
	
	public void getCamps()
	{
		String query="select * from camps where date>curdate() order by date";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				c_date.add(res.getString(1));
				c_name.add(res.getString(2));
				c_venue.add(res.getString(3));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> campDate()
	{
		return c_date;
	}
	public Vector<String> campName()
	{
		return c_name;
	}
	public Vector<String> campVenue()
	{
		return c_venue;
	}
}
