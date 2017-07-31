package user;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class CheckStatus 
{
	public Vector<String> patient_name=new Vector<String>();
	public Vector<String> required_date=new Vector<String>();
	public Vector<String> units=new Vector<String>();
	public Vector<String> bloodgroup=new Vector<String>();
	public Vector<String> hospital_name=new Vector<String>();
	public Vector<String> status=new Vector<String>();
	
	public void getRequests(String username)
	{
		String query="select * from requests where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				patient_name.addElement(res.getString(2));
				required_date.addElement(res.getString(3));
				units.addElement(res.getString(4));
				bloodgroup.addElement(res.getString(5));
				hospital_name.addElement(res.getString(6));
				status.addElement(res.getString(7));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> patientName()
	{
		return patient_name;
	}
	public Vector<String> requiredDate()
	{
		return required_date;
	}
	public Vector<String> units()
	{
		return units;
	}
	public Vector<String> bloodGroup()
	{
		return bloodgroup;
	}
	public Vector<String> hospitalName()
	{
		return hospital_name;
	}
	public Vector<String> status()
	{
		return status;
	}
}
