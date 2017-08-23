package admin;
import bloodbank.DBInfo;

import java.sql.*;
import java.util.Vector;

public class ManageAppointments 
{
	public Vector<String> username=new Vector<String>();
	public Vector<String> date=new Vector<String>();
	public Vector<String> venue=new Vector<String>();
	
	//get all appointments who hasn't donated yet
	public void getAppointments()
	{
		String query="select * from appointments where status=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "not_donated");
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				username.addElement(res.getString(1));
				date.addElement(res.getString(2));
				venue.addElement(res.getString(3));
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
	public Vector<String> date()
	{
		return date;
	}
	public Vector<String> venue()
	{
		return venue;
	}
	
	//	----------------------------------------------------------------
	// 	Donation Done
	
	// 1. update appointments status for donated
	public int updateAppointments(String username,String date)
	{
		int flag3=0;
		String query="update appointments set status=? where username=? and date=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "donated");
			ps.setString(2, username);
			ps.setString(3, date);
			flag3=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag3;
	}
	
	// 2. update(insert) stock
	public int updateStock(String username,String date,int units)
	{
		int flag=0;
		String bloodgroup="";
		
		//fetching user bloodgroup
		String query="select bloodgroup from registration where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				bloodgroup=res.getString(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//updating(inserting) blood stock
		String query1="insert into stock(bloodgroup,units,expiry_date) values(?,?,date_add(?,interval 90 day))";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps1=con.prepareStatement(query1);
			ps1.setString(1, bloodgroup);
			ps1.setInt(2, units);
			ps1.setString(3, date);
			flag=ps1.executeUpdate();		//flag
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	// 3. insert into donations
	public int updateDonations(String username,String date,String venue)
	{
		int flag=0;
		String query="insert into donations values(?,?,?)";
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
