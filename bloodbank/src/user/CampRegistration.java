package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class CampRegistration 
{
	private String campname;	
	private String date,venue;
	
	public String getCampname() {
		return campname;
	}
	
	public void setCampname(String campname) {
		this.campname = campname;
	}
	
	//fetching date and venue of camp
	public void getDateVenue()
	{
		try
		{
			String query="select date,venue from camps where name=?";
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, campname);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				date=res.getString(1);
				venue=res.getString(2);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	//
	
	public int isEligible(String username)
	{
		int flag=0;
		String query="select datediff(?,max(donation_date)) from donations where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, date);
			ps.setString(2, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				if(res.getString(1)!=null)
				{
					int interval=Integer.parseInt(res.getString(1));
					if(interval<=90)
					{
						flag=1;
						break;
					}
				}
				else
				{
					flag=0;
				}
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	public int campRegister(String username)
	{
		int flag=0;
		String query="insert into appointments values(?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, date);
			ps.setString(3, venue);
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