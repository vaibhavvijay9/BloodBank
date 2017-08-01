package admin;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class RegisterCamp 
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

	//  Registering camp
	public int registerCamp()
	{
		int flag=0;
		String query="insert into camps values(?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, date); 
			ps.setString(2, name);
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