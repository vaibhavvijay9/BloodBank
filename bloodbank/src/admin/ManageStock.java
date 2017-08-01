package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class ManageStock 
{
	public Vector<String> bloodgroup=new Vector<String>();
	public Vector<String> units=new Vector<String>();
	
	//for expired blood
	public Vector<Integer> id=new Vector<Integer>();
	
	//get full stock
	public void getStock()
	{
		String query="select bloodgroup,sum(units) from stock where expiry_date>=curdate() group by bloodgroup";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				bloodgroup.addElement(res.getString(1));
				units.addElement(res.getString(2));
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public Vector<String> bloodgroup()
	{
		return bloodgroup;
	}
	public Vector<String> units()
	{
		return units;
	}
	
	//add stock
	public int addStock(String bloodgroup,int units)
	{
		int flag=0;
		String query="insert into stock(bloodgroup,units,expiry_date) values(?,?,date_add(curdate(),interval 90 day))";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, bloodgroup);
			ps.setInt(2, units);
			flag=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	//get expired Stock
		public void getExpiredStock()
		{
			String query="select id from stock where expiry_date<curdate()";
			try
			{
				Connection con=DBInfo.getConn();	
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet res=ps.executeQuery();
				while(res.next())
				{
					id.addElement(res.getInt(1));
				}
				con.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		public Vector<Integer> id()
		{
			return id;
		}
		
		//delete stock
		public int deleteStock(int id)
		{
			int flag=0;
			String query="delete from stock where id=?";
			try
			{
				Connection con=DBInfo.getConn();	
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, id);
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
