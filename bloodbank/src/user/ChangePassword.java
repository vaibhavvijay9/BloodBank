package user;
import java.sql.*;

import bloodbank.DBInfo;

public class ChangePassword 
{
	private String old_password,password,confirm_password;	
	
	public void setOld_password(String old_password) {
		this.old_password = old_password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	
	public int validate(String username)
	{
		int flag=0;
		String query="select * from login where username=? and password=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, old_password);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				flag=1;
				break;
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	public int change(String username)
	{
		int flag=0;
		String query="update login set password=? where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, password);
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