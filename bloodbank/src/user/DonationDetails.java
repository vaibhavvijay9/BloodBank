package user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bloodbank.DBInfo;

public class DonationDetails 
{
//	private String donation_date,venue;
//	
//	public String getDonation_date() {
//		return donation_date;
//	}
//
//	public String getVenue() {
//		return venue;
//	}
//
//	public void viewDonations(String username)
//	{
//		String query="select donation_date,venue from donations where username=?";
//		try
//		{
//			Connection con=DBInfo.getConn();	
//			PreparedStatement ps=con.prepareStatement(query);
//			ps.setString(1, username);
//			ResultSet res=ps.executeQuery();
//			while(res.next())
//			{
//				donation_date=res.getString(1);
//				venue=res.getString(2);
//			}
//			con.close();
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//	}
//	
	List<Object> allData=new ArrayList<Object>();
    
    public String donation_date,venue;
    Object obj=new Object();
 
    public void setObj(Object obj) {
        this.obj = obj;
    }
    public List viewDonations(String username)
    {
        int i=0;
        try
        {
        	String query="select donation_date,venue from donations where username=?";
        	Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet res=ps.executeQuery();
			while(res.next())
            {
                DataFields d=new DataFields(res.getString(1), res.getString(2));                    
                allData.add(i,d);
                i++;
            }
			con.close();     
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
       return allData;
    }
     
   	public String getDonation_date() {
   		this.donation_date=((DataFields)obj).donation_date;
   		return this.donation_date;
	}

	public String getVenue() {
		return venue;
	}
    public class DataFields
    {
        private String donation_date,venue;
 
        public DataFields(String donation_date,String venue)
        {
            this.donation_date=donation_date;
            this.venue=venue;
        }
    }
    
}