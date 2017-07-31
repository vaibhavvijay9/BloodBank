package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bloodbank.DBInfo;

public class RequestBlood 
{
	private String patientName,requiredDate,units,bloodgroup,hospitalName;	
	
	public String getPatientName() {
		return patientName;
	}
	
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	
	public String getRequiredDate() {
		return requiredDate;
	}
	
	public void setRequiredDate(String requiredDate) {
		this.requiredDate = requiredDate;
	}
	
	public String getUnits() {
		return units;
	}
	
	public void setUnits(String units) {
		this.units = units;
	}
	
	public String getBloodgroup() {
		return bloodgroup;
	}
	
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	
	public String getHospitalName() {
		return hospitalName;
	}
	
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	
	public int submitRequest(String username)
	{
		int flag=0;
		String query="insert into requests values(?,?,?,?,?,?,?)";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, patientName);
			ps.setString(3, requiredDate);
			ps.setString(4, units);
			ps.setString(5, bloodgroup);
			ps.setString(6, hospitalName);
			ps.setString(7, "Pending");		//ADMIN will update it.
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