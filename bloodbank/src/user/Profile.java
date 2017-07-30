package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class Profile 
{
	private String name,gender,birthdate,email,address,phone,bloodgroup;
	
	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public String getEmail() {
		return email;
	}
	
	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void viewProfile(String username)
	{
		String query="select * from registration where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				email=res.getString(1);
				name=res.getString(2);
				gender=res.getString(3);
				birthdate=res.getString(4);
				address=res.getString(5);
				phone=res.getString(6);
				bloodgroup=res.getString(7);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}