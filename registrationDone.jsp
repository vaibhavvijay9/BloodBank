<jsp:useBean id="obj" class="bloodbank.Registration">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<jsp:useBean id="obj1" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=obj.check();
	if(i==1)
    {
        request.setAttribute("AlreadyExistsMessage", "User Already Exists...Try ");
        RequestDispatcher rd = request.getRequestDispatcher("/registration.jsp");
        rd.forward(request, response);          
	}
	else
	{
		int j=obj.register();
		if(j==1)
		{
			request.setAttribute("registrationMessage", "Thank You for registering with us.");
	        RequestDispatcher rd = request.getRequestDispatcher("/registration.jsp");
	        rd.forward(request, response);         	
		
			String to=obj.getEmail();
			String subject="Welcome to People's Blood Bank.";
			String message="Congratulations, your account has been created successfully and we are pleased to welcome you to our community.You can now sign in to Genymotion with your username and password.Thank you.";
			obj1.sendMail(to, subject, message);
		
		}
	}
%>
