<jsp:useBean id="obj" class="bloodbank.ForgotPassword">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<% 
	int i=obj.check();
	
	if(i==0)
    {
    	request.setAttribute("forgotExistsMessage", "Wrong username or password");
        RequestDispatcher rd = request.getRequestDispatcher("/signIn.jsp");
        rd.forward(request, response);
	}
	else
	{
		System.out.print("hello");
	}
%>
