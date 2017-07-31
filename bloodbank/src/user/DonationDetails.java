package user;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class DonationDetails 
{
	public Vector<String> date=new Vector<String>();
	public Vector<String> venue=new Vector<String>();
	
	public void getDonations(String username)
	{
		String query="select donation_date,venue from donations where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				date.addElement(res.getString(1));
				venue.addElement(res.getString(2));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> donationDate()
	{
		return date;
	}
	public Vector<String> venue()
	{
		return venue;
	}
}
