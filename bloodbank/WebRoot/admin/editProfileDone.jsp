<jsp:useBean id="admin_edit_profile" class="bloodbank.EditProfile">
<jsp:setProperty name="admin_edit_profile" property="*"/>
</jsp:useBean>

<% 
	int i=admin_edit_profile.updateProfile();
	
	if(i==1)
    {
        request.setAttribute("profileMessage", "Your profile has been updated successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/profile.jsp");
        rd.forward(request, response);          
	}
%>
