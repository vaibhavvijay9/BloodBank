<jsp:useBean id="manage_feedback" class="admin.ManageFeedback">

</jsp:useBean>
<% 
	String name=request.getParameter("name");
	int i=manage_feedback.deleteFeedback(name);
	
	if(i==1)
    {
        request.setAttribute("feedbackMessage", "Feedback deleted successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageFeedback.jsp");
        rd.forward(request, response);
	}
%>
