package bloodbank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class Camps 
{
	public Vector<String> date=new Vector<String>();
	public Vector<String> name=new Vector<String>();
	public Vector<String> venue=new Vector<String>();
	
	public void getCamps()
	{
		String query="select * from camps";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{	
				date.addElement(res.getString(1));
				name.addElement(res.getString(2));
				venue.addElement(res.getString(3));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> date()
	{
		return date;
	}
	public Vector<String> name()
	{
		return name;
	}
	public Vector<String> venue()
	{
		return venue;
	}
}