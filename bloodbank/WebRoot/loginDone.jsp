<jsp:useBean id="sign_in" class="bloodbank.SignIn">
<jsp:setProperty name="sign_in" property="*"/>
</jsp:useBean>

<% 
	String str=sign_in.login();
	
	if(null!=str)
    {
    	response.sendRedirect("user/index.jsp");
    	session.setAttribute("username",sign_in.getEmail());
	}
	else
	{
		request.setAttribute("signInMessage", "Wrong username or password");
        RequestDispatcher rd = request.getRequestDispatcher("/signIn.jsp");
        rd.forward(request, response);
	}
%>
