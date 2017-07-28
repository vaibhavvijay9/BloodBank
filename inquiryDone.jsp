<jsp:useBean id="obj" class="bloodbank.Inquiry">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<jsp:useBean id="obj1" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=obj.submitInquiry();
	
	String to=obj.getEmail();
	String subject="Thank you for contacting People's Blood Bank.";
	String message="Thank You for inquiring about our system.\nWe will contact you within next 24 hours";
	obj1.sendMail(to, subject, message);
	
	if(i==1)
    {
        request.setAttribute("inquiryMessage", "Your inquiry has been submitted successfully.We have sent mail to "+obj.getEmail());
        RequestDispatcher rd = request.getRequestDispatcher("/inquiry.jsp");
        rd.forward(request, response);          
	}
%>
