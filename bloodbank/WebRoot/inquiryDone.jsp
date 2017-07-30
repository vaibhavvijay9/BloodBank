<jsp:useBean id="inquiry" class="bloodbank.Inquiry">
<jsp:setProperty name="inquiry" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_inquiry" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=inquiry.submitInquiry();
	
	if(i==1)
    {
        request.setAttribute("inquiryMessage", "Your inquiry has been submitted successfully.We have sent mail to "+inquiry.getEmail());
        RequestDispatcher rd = request.getRequestDispatcher("/inquiry.jsp");
        rd.forward(request, response);          
        
        String to=inquiry.getEmail();
		String subject="Thank you for contacting People's Blood Bank.";
		String message="Thank You for inquiring about our system.\nWe will contact you within next 24 hours";
		email_inquiry.sendMail(to, subject, message);
	}
%>
