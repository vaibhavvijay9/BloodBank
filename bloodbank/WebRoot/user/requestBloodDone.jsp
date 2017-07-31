<jsp:useBean id="request_blood" class="user.RequestBlood">
<jsp:setProperty name="request_blood" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_requestBlood" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=request_blood.submitRequest((String)session.getAttribute("username"));
	if(i==1)
	{
		request.setAttribute("requestMessage", "Your appointment has been submitted successfully.We will contact you soon.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/requestBlood.jsp");
        rd.forward(request, response);
	
        String to=(String)session.getAttribute("username");
		String subject="Request Submitted Successfully";
		String message="Your request has been submitted successfully.We will conatct you within 24 hours regarding confirmation.Thank You.";
		email_requestBlood.sendMail(to, subject, message);
	}	
%>
