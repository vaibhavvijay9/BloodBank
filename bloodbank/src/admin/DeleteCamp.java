package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class DeleteCamp 
{
	public int deleteCamp(String name)
	{
		int flag=0;
		String query="delete from camps where name=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, name);
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
