package bloodbank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BloodGroups 
{
	public Vector<String> bloodgroup=new Vector<String>();
	
	public void getBloodGroups()
	{
		String query="select * from bloodgroups";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{	
				bloodgroup.addElement(res.getString(1));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> bloodGroup()
	{
		return bloodgroup;
	}
}
	 	
