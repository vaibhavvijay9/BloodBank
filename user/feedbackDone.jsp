<jsp:useBean id="feedback" class="user.Feedback">
<jsp:setProperty name="feedback" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_feedback" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=feedback.submitFeedback((String)session.getAttribute("username"));
	
	if(i==1)
    {
        request.setAttribute("feedbackMessage", "Your feedback had been submitted successfully.We thank you for your invaluable feedback.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/feedback.jsp");
        rd.forward(request, response);          
        
        String to=(String)session.getAttribute("username");
		String subject="Feedback Submitted Successfully";
		String message="Thank You for your feedback.We value every piece of feedback we recieve.";
		email_feedback.sendMail(to, subject, message);
	}
%>
