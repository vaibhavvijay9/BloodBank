<jsp:useBean id="delete_camp" class="admin.DeleteCamp">
</jsp:useBean>
<% 
	String name=request.getParameter("name");
	int i=delete_camp.deleteCamp(name);
	
	if(i==1)
    {
        request.setAttribute("campDeleteMessage", "Camp deleted successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageCamp.jsp");
        rd.forward(request, response);
	}
%>
