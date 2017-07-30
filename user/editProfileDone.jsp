<jsp:useBean id="edit_profile" class="user.EditProfile">
<jsp:setProperty name="edit_profile" property="*"/>
</jsp:useBean>

<% 
	int i=edit_profile.updateProfile();
	
	if(i==1)
    {
        request.setAttribute("profileMessage", "Your profile has been updated successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/profile.jsp");
        rd.forward(request, response);          
	}
%>
