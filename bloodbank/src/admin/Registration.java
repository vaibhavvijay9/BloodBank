package admin;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class Registration 
{
	private String name,gender,birthdate,email,address,phone,bloodgroup,usertype;
	private String password;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
		
	//User Registration

	// 1. Is user already registered?
	public int check()
	{
		int flag=0;
		//select login table
		String query="select * from login where username=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email); 
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
	
	//  2. Registering user
	public int register()
	{
		int flag=0,flag1=0;
		
		//registration table
		String query="insert into registration values(?,?,?,?,?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email); 
			ps.setString(2, name);
			ps.setString(3, gender);
			ps.setString(4, birthdate);
			ps.setString(5, address);
			ps.setString(6, phone);
			ps.setString(7, bloodgroup);
			flag=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//login table
		String query1="insert into login values(?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps1=con.prepareStatement(query1);
			ps1.setString(1, email); 
			ps1.setString(2, password);
			ps1.setString(3, usertype);	
			flag1=ps1.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(flag==1 && flag1==1)
		{
			flag=1;
		}
		return flag;
	}
}