<jsp:useBean id="inquiry_reply" class="admin.ManageInquiry">
</jsp:useBean>

<jsp:useBean id="email_changePassword" class="bloodbank.Email">
</jsp:useBean>

<% 
	String username=request.getParameter("to");
	int i=inquiry_reply.updateInquiries(username);
	
	if(i==1)
    {
        request.setAttribute("inquiryReplyMessage", "Reply sent successfully to "+username);
        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageInquiry.jsp");
        rd.forward(request, response);          
            
        String to=request.getParameter("to");
		String subject="Inquiry Reply";
		String message=request.getParameter("message");
		email_changePassword.sendMail(to, subject, message);
	}
%>
