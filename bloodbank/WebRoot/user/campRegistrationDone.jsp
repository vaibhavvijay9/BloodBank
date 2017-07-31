<jsp:useBean id="camp_registration" class="user.CampRegistration">
<jsp:setProperty name="camp_registration" property="campname"/>
</jsp:useBean>

<jsp:useBean id="email_camp" class="bloodbank.Email">
</jsp:useBean>

<% 
	camp_registration.getDateVenue();
	
	int i=camp_registration.isEligible((String)session.getAttribute("username"));
	if(i==1)
	{
		request.setAttribute("notEligibleMessage", "You are not eligible for donation.Try after a few days.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/registerForCamp.jsp");
        rd.forward(request, response);
	}
	else
	{
		int j=camp_registration.campRegister((String)session.getAttribute("username"));
		if(j==1)
	    {
	        request.setAttribute("campMessage", "You have successfully registered for the camp.");
	        RequestDispatcher rd = request.getRequestDispatcher("../user/registerForCamp.jsp");
	        rd.forward(request, response);
	        
	        String to=(String)session.getAttribute("username");
			String subject="Camp Registration Successful";
			String message="You have successfully registered for the camp.Thank you.";
			email_camp.sendMail(to, subject, message);           
		}	
	}
%>
