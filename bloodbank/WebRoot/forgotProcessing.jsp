<jsp:useBean id="forgot_password" class="bloodbank.ForgotPassword">
<jsp:setProperty name="forgot_password" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_forgotPassword" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=forgot_password.check();
	
	if(i==0)
    {
    	request.setAttribute("forgotExistsMessage", "Wrong username");
        RequestDispatcher rd = request.getRequestDispatcher("/signIn.jsp");
        rd.forward(request, response);
	}
	else
	{
		String password=""+(int)((Math.random()*100000000)+10000000);	//10000000-109999999
		int k=forgot_password.updatePassword(password);
		if(k==1)
		{
			request.setAttribute("forgotSuccessMessage", "Password reset, new password sent to: "+forgot_password.getEmail());
        	RequestDispatcher rd = request.getRequestDispatcher("/signIn.jsp");
        	rd.forward(request, response);
        	
        	String to=forgot_password.getEmail();
			String subject="Password Reset Successful";
			String message="Your new password is:"+password;
			email_forgotPassword.sendMail(to, subject, message);
		}
	}
%>
