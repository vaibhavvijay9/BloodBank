package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class CampRegistration 
{
	private String campname,date,venue;	
	
	public String getCampname() {
		return campname;
	}
	
	public void setCampname(String campname) {
		this.campname = campname;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getVenue() {
		return venue;
	}
	
	public void setVenue(String venue) {
		this.venue = venue;
	}
	
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
				int interval=Integer.parseInt(res.getString(1));
				if(interval<=90)
				{
					flag=1;
					break;
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