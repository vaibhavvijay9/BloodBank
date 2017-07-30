package bloodbank;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class Inquiry 
{
	private String name,email,phone,message;
	long millis=System.currentTimeMillis();  
    Date date=new Date(millis); 
    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public int submitInquiry()
	{
		int flag=0;
		String query="insert into inquiries values(?,?,?,?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, String.valueOf(date)); 
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, message);
			ps.setString(6, "unresolved");		//when admin replies then updated to 'resolved'
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