<jsp:useBean id="update_camp" class="admin.UpdateCamp">
<jsp:setProperty name="update_camp" property="*"/>
</jsp:useBean>
<% 
	int i=update_camp.updateCamp();
	
	if(i==1)
    {
        request.setAttribute("campUpdateMessage", "Camp updated successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageCamp.jsp");
        rd.forward(request, response);
	}
%>
