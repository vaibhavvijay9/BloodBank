<jsp:useBean id="report_story" class="admin.UserStories">
</jsp:useBean>

<jsp:useBean id="email_report_story" class="bloodbank.Email">
</jsp:useBean>

<% 
	String username=request.getParameter("email");
	int i=report_story.deleteStory(username);
	
	if(i==1)
    {
        request.setAttribute("storyReplyMessage", "Story reported and deleted.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/userStories.jsp");
        rd.forward(request, response);          
            
        String to=request.getParameter("email");
		String subject="Story Reported";
		String message="Your story has been rejected as it contained some absusive content.Thank You.";
		email_report_story.sendMail(to, subject, message);
	}
%>
