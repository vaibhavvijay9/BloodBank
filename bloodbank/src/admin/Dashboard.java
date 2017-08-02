package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class Dashboard 
{
	// getting total number of registered users
	public int getUsers()
	{
		int users=0;
		String query="select count(*) from login where usertype=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "user");
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				users=res.getInt(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return users;
	}
	
	//getting total no. of pending blood requests
	public int getRequests()
	{
		int requests=0;
		String query="select count(*) from requests where status=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "Confirm");
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				requests=res.getInt(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return requests;
	}
	
	//getting total no. of camps this month
	public int getCamps()
	{
		int camps=0;
		String query="select count(*) from camps where month(date)=month(curdate())";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				camps=res.getInt(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return camps;
	}
	
	//getting total no. of pending appointments
	public int getAppointments()
	{
		int appointments=0;
		String query="select count(*) from appointments where status=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "not_donated");
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				appointments=res.getInt(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return appointments;
	}
	
	//getting total no. of donations this month
	public int getDonations()
	{
		int donations=0;
		String query="select count(*) from donations where month(donation_date)=month(curdate())";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				donations=res.getInt(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return donations;
	}
	
	//getting no. of donors
	public int getDonors()
	{
		int donors=0;
		String query="select count(distinct username) from donations";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				donors=res.getInt(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return donors;
	}
}
