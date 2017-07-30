package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class EditProfile 
{
	private String name,gender,birthdate,email,address,phone,bloodgroup;
	
	public void setName(String name) {
		this.name = name;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public int updateProfile()
	{
		int flag=0;
		String query="update registration set name=?,gender=?,birthdate=?,address=?,phone=?,bloodgroup=? where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, gender);
			ps.setString(3, birthdate);
			ps.setString(4, address);
			ps.setString(5, phone);
			ps.setString(6, bloodgroup);
			ps.setString(7, email);
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