<jsp:useBean id="fix_appiontment" class="user.FixAppointment">
<jsp:setProperty name="fix_appiontment" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_fixAppointment" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=fix_appiontment.isEligible((String)session.getAttribute("username"));
	if(i==1)
	{
		request.setAttribute("ineligibleMessage", "You are not eligible for donation.Try after a few days.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/fixAppointment.jsp");
        rd.forward(request, response);
	}
	else
	{
		int j=fix_appiontment.makeAppointment((String)session.getAttribute("username"));
		if(j==1)
	    {
	        request.setAttribute("appointmentMessage", "Your appointment has been submitted successfully.We will contact you soon.");
	        RequestDispatcher rd = request.getRequestDispatcher("../user/fixAppointment.jsp");
	        rd.forward(request, response);         
	        
	        String to=(String)session.getAttribute("username");
			String subject="Appointment Made Successfully";
			String message="Your appointment has been made successfully.We will send you a mail within 24 hours regarding time and other details.Thank You.";
			email_fixAppointment.sendMail(to, subject, message);
		}	
	}
%>
