<jsp:useBean id="approve_story" class="admin.UserStories">
</jsp:useBean>

<% 
	String username=request.getParameter("email");
	int i=approve_story.updateStories(username);
	
	if(i==1)
    {
        request.setAttribute("storyApproveMessage", "Story has been approved.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/userStories.jsp");
        rd.forward(request, response);                  
    }
%>
