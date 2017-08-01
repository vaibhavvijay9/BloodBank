<jsp:useBean id="email_fixAppointment" class="bloodbank.Email">
</jsp:useBean>

<% 
    String to=request.getParameter("email");
	String subject="Appointment Confirmation";
	String message="Your appointment has been confirmed.You can come between 10a.m. to 4p.m. .Thank You.";
	email_fixAppointment.sendMail(to, subject, message);	

	request.setAttribute("appointmentReplyMessage", "Reply sent.");
    RequestDispatcher rd = request.getRequestDispatcher("../admin/manageAppointments.jsp");
    rd.forward(request, response);
%>
