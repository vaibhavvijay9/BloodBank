<jsp:useBean id="delete_story" class="admin.UserStories">
</jsp:useBean>

<% 
	String username=request.getParameter("email");
	int i=delete_story.deleteStory(username);
	
	if(i==1)
    {
        request.setAttribute("storyDeleteMessage", "Story deleted.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/userStories.jsp");
        rd.forward(request, response);                  
    }
%>
