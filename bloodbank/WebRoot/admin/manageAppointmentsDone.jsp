<%@page import="java.util.Vector"%>
<jsp:useBean id="donation_done" class="admin.ManageAppointments">
</jsp:useBean>

<jsp:useBean id="email_manageAppointment" class="bloodbank.Email">
</jsp:useBean>

<%
	String username=request.getParameter("username");
	String date=request.getParameter("date");
	String venue=request.getParameter("venue");
	
	int units=Integer.parseInt(request.getParameter("units"));
	
	//update appointments status
	int a=donation_done.updateAppointments(username,date);
	
	//add blood stock
	int b=donation_done.updateStock(username,date,units);
	
	//insert donation details
	int c=donation_done.updateDonations(username, date, venue);
	
	if(a==1 && b==1 && c==1)
    {
        request.setAttribute("appointmentStockMessage", "Appointments,Donations, and Stock updated successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageAppointments.jsp");
        rd.forward(request, response);
    
        String to=request.getParameter("username");
		String subject="Thank You for Donation";
		String message="Thank You for donating blood.Your donation will save lives.Once Again, Thank You.";
		email_manageAppointment.sendMail(to, subject, message);
	}
%>
