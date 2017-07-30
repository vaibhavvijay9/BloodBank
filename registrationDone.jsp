<jsp:useBean id="registration" class="bloodbank.Registration">
<jsp:setProperty name="registration" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_registration" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=registration.check();
	if(i==1)
    {
        request.setAttribute("AlreadyExistsMessage", "User Already Exists...Try ");
        RequestDispatcher rd = request.getRequestDispatcher("/registration.jsp");
        rd.forward(request, response);          
	}
	else
	{
		int j=registration.register();
		if(j==1)
		{
			request.setAttribute("registrationMessage", "Thank You for registering with us.");
	        RequestDispatcher rd = request.getRequestDispatcher("/registration.jsp");
	        rd.forward(request, response);         	
		
			String to=registration.getEmail();
			String subject="Welcome to People's Blood Bank.";
			String message="Congratulations, your account has been created successfully and we are pleased to welcome you to our community.You can now sign in with your username and password.Thank you.";
			email_registration.sendMail(to, subject, message);
		
		}
	}
%>
