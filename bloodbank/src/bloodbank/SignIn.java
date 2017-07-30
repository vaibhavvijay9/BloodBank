package bloodbank;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SignIn 
{
	private String email,password;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String login()
	{
		String usertype=null;
		String query="select * from login where username=? and password=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				usertype=res.getString(3);
				break;
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return usertype;
	}
}