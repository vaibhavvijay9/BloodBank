<jsp:useBean id="obj" class="bloodbank.SignIn">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<% 
	String str=obj.login();
	
	if(null!=str)
    {
    	response.sendRedirect("user/index.jsp");
    	session.setAttribute("username",obj.getEmail());
	}
	else
	{
		request.setAttribute("signInMessage", "Wrong username or password");
        RequestDispatcher rd = request.getRequestDispatcher("/signIn.jsp");
        rd.forward(request, response);
	}
%>
