package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class ManageFeedback 
{
	public Vector<String> username=new Vector<String>();
	public Vector<String> feedback=new Vector<String>();
	
	public void getFeedbacks()
	{
		String query="select * from feedbacks";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				username.addElement(res.getString(1));
				feedback.addElement(res.getString(2));
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
	public Vector<String> feedback()
	{
		return feedback;
	}
	
	//delete feedback
	public int deleteFeedback(String username)
	{
		int flag=0;
		String query="delete from feedbacks where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
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
