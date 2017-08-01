package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class UpdateCamp 
{
	private String name,date,venue;
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public void setVenue(String venue) {
		this.venue = venue;
	}
	
	public int updateCamp()
	{
		int flag=0;
		String query="update camps set date=?,venue=? where name=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, date);
			ps.setString(2, venue);
			ps.setString(3, name);
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
