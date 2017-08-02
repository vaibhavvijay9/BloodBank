package admin;
import bloodbank.DBInfo;
import java.sql.*;
import java.util.Vector;

public class ManageRequests 
{
	public Vector<String> username=new Vector<String>();
	public Vector<String> patient_name=new Vector<String>();
	public Vector<String> required_date=new Vector<String>();
	public Vector<String> units=new Vector<String>();
	public Vector<String> bloodgroup=new Vector<String>();
	public Vector<String> hospital_name=new Vector<String>();
	public Vector<String> status=new Vector<String>();
	
	//
	public Vector<Integer> id=new Vector<Integer>();
	public Vector<Integer> qty=new Vector<Integer>();
	//
	
	//
	int index=0;
	//
	
	// 1. getting all requests
	public void getRequests()
	{
		String query="select * from requests order by status,required_date";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				username.addElement(res.getString(1));
				patient_name.addElement(res.getString(2));
				required_date.addElement(res.getString(3));
				units.addElement(res.getString(4));
				bloodgroup.addElement(res.getString(5));
				hospital_name.addElement(res.getString(6));
				status.addElement(res.getString(7));
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
	public Vector<String> patient_name()
	{
		return patient_name;
	}
	public Vector<String> required_date()
	{
		return required_date;
	}
	public Vector<String> units()
	{
		return units;
	}
	public Vector<String> bloodgroup()
	{
		return bloodgroup;
	}
	public Vector<String> hospital_name()
	{
		return hospital_name;
	}
	public Vector<String> status()
	{
		return status;
	}
	
	int flag=0,flag1=0;
	
	int required=0;		//units of blood required

	
	// 2. update status from "Confirm"--->"Confirmed" OR "Confirmed"--->"Provided"
	public int updateRequestStatus(String username,String patient_name,int units,String old_status,String new_status)
	{
		int flag=0;
		String query="update requests set status=? where username=? and patient_name=? and units=? and status=?";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, new_status);
			ps.setString(2, username);
			ps.setString(3, patient_name);
			ps.setInt(4, units);
			ps.setString(5, old_status);
			flag=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	// 3. provide blood
	public void fetchStock(String bloodgroup,int units)
	{
		required=units;
		// (1.) fetching id and units of required bloodgroup available in stock
		String querys="select id,units from stock where bloodgroup=? and expiry_date>=curdate() order by expiry_date";
		try
		{
			Connection con=DBInfo.getConn();	
			PreparedStatement pss=con.prepareStatement(querys);
			pss.setString(1, bloodgroup);
			ResultSet ress=pss.executeQuery();
			while(ress.next())
			{
				id.add(ress.getInt(1));
				qty.add(ress.getInt(2));
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

	//provide the blood available in stock for the required bloodgroup & units
	public void provideBlood()
	{
		
		// (1.) getting id of blood to be given
		int i=0;
		while(required>0)
		{
			required=required-qty.get(i);
			i++;
			if(required==0)
			{
				break;
			}
			if(required<0)
			{
				int x=qty.get(i-1);
				x=x+(required);
				qty.add(i-1, x);
			}
		}
		index=i-1;	
		
		// (2.1) deleting from stock
		if(required==0)	//delete upto index'th(included)
		{
			for(int j=0;j<=index;j++)
			{
				String query2="delete from stock where id=?";
				try
				{
					Connection con=DBInfo.getConn();	
					PreparedStatement ps2=con.prepareStatement(query2);
					ps2.setInt(1, id.get(j));
					flag=ps2.executeUpdate();
					con.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
		}
		// (2.2) deleting/updating from stock
		if(required<0)
		{
			//delete before 'index' from stock and update index'th id of id[]
			
			// (2.2.1) deleting from stock
			for(int j=0;j<index;j++)
			{
				String query2="delete from stock where id=?";
				try
				{
					Connection con=DBInfo.getConn();	
					PreparedStatement ps2=con.prepareStatement(query2);
					ps2.setInt(1, id.get(j));
					flag=ps2.executeUpdate();
					con.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
			
			// (2.2.2) updating stock(partial given)
			String query3="update stock set units=? where id=?";
			try
			{
				Connection con=DBInfo.getConn();	
				PreparedStatement ps3=con.prepareStatement(query3);
				ps3.setInt(1, -(required));
				ps3.setInt(2, id.get(index));
				flag1=ps3.executeUpdate();
				con.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}
	public int getIndex()
	{
		return index;
	}
}