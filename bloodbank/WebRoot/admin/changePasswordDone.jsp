<jsp:useBean id="admin_change_password" class="bloodbank.ChangePassword">
<jsp:setProperty name="admin_change_password" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_changePassword" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=admin_change_password.validate((String)session.getAttribute("username"));
	
	if(i==0)
    {
        request.setAttribute("changePasswordMessage", "Wrong old password...");
        RequestDispatcher rd = request.getRequestDispatcher("../user/changePassword.jsp");
        rd.forward(request, response);          
    }
    else
    {   
    	int j=admin_change_password.change((String)session.getAttribute("username"));
    	
    	if(j==1)
    	{
	        request.setAttribute("changeSuccessMessage", "Password changed successfully.");
	        RequestDispatcher rd = request.getRequestDispatcher("../user/changePassword.jsp");
	        rd.forward(request, response);
	        
	        String to=(String)session.getAttribute("username");
			String subject="Password Changed Successfully";
			String message="Your password has been changed successfully.";
			email_changePassword.sendMail(to, subject, message);
		}
	}
%>
