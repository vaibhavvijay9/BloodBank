package user;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class Dashboard 
{
	// getting number of donations
	public int getDonations(String username)
	{
		int donations=0;
		String query="select count(*) from donations where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
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
	
	
	//getting last donation date
	public String getLastDate(String username)
	{
		String date="---";
		String query="select max(donation_date) from donations where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				if(res.getString(1)!=null)
				{
					date=res.getString(1);
				}
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return date;
	}
}
