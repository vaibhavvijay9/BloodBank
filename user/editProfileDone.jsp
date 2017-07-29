<jsp:useBean id="obj" class="user.EditProfile">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<% 
	int i=obj.updateProfile();
	
	if(i==1)
    {
        request.setAttribute("profileMessage", "Your profile has been updated successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/profile.jsp");
        rd.forward(request, response);          
	}
%>
