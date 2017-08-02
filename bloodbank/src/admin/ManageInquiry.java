package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class ManageInquiry 
{
	public Vector<String> date=new Vector<String>();
	public Vector<String> name=new Vector<String>();
	public Vector<String> phone=new Vector<String>();
	public Vector<String> email=new Vector<String>();
	public Vector<String> message=new Vector<String>();
	
	public void getInquiries()
	{
		String query="select * from inquiries where status=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "unresolved");
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				date.addElement(res.getString(1));
				name.addElement(res.getString(2));
				email.addElement(res.getString(3));
				phone.addElement(res.getString(4));
				message.addElement(res.getString(5));
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
	public Vector<String> phone()
	{
		return phone;
	}
	public Vector<String> email()
	{
		return email;
	}
	public Vector<String> message()
	{
		return message;
	}
	
	//update status
	public int updateInquiries(String username)
	{
		int flag=0;
		String query="update inquiries set status=? where email=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, "resolved");
			ps.setString(2, username);
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
