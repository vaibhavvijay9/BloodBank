<%@page import="java.util.Vector"%>
<jsp:useBean id="approve_request" class="admin.ManageRequests">
</jsp:useBean>

<jsp:useBean id="email_approve_request" class="bloodbank.Email">
</jsp:useBean>

<%
	String username=request.getParameter("username");
	String patient_name=request.getParameter("patient");
	int units=Integer.parseInt(request.getParameter("units"));
	String bloodgroup=request.getParameter("bloodgroup");
	String status=request.getParameter("status");
	
	if(status.equalsIgnoreCase("Confirm"))
	{
		int i=approve_request.updateRequestStatus(username, patient_name, units, status, "Confirmed");
		if(i==1)
    	{
	        request.setAttribute("requestApproveMessage", "Request approved.");
	        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageRequests.jsp");
	        rd.forward(request, response);         	
		
			String to=username;
			String subject="Blood Request Approved.";
			String message="Your blood request for "+patient_name+" has been approved.Thank you.";
			email_approve_request.sendMail(to, subject, message);
		
		}
	}
	if(status.equalsIgnoreCase("Confirmed"))
	{
		int i=approve_request.updateRequestStatus(username, patient_name, units, status, "Provided");
		
		approve_request.fetchStock(bloodgroup, units);
		
		approve_request.provideBlood();
		
		int count=approve_request.getIndex();
		
		Vector<Integer> ids=approve_request.id();
		String id="";
		for(int p=0;p<=count;p++)
		{
			id=id+","+ids.get(p);
		}
		
		if(i==1)
    	{
	        request.setAttribute("requestProvidedMessage", "Blood provided.Blood ID(s)::: "+id);
	        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageRequests.jsp");
	        rd.forward(request, response);         	
		
			String to=username;
			String subject="Blood Provided.";
			String message="Your have been provided blood for the request for "+patient_name+".Thank you.";
			email_approve_request.sendMail(to, subject, message);
		
		}
	}
%>
