<jsp:useBean id="obj" class="user.FixAppointment">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<% 
	int i=obj.isEligible((String)session.getAttribute("username"));
	if(i==1)
	{
		request.setAttribute("ineligibleMessage", "You are not eligible for donation.Try after a few days.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/fixAppointment.jsp");
        rd.forward(request, response);
	}
	else
	{
		int j=obj.makeAppointment((String)session.getAttribute("username"));
		if(j==1)
	    {
	        request.setAttribute("appointmentMessage", "Your appointment has been submitted successfully.");
	        RequestDispatcher rd = request.getRequestDispatcher("../user/fixAppointment.jsp");
	        rd.forward(request, response);          
		}	
	}
%>
