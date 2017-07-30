<jsp:useBean id="your_story" class="user.YourStory">
<jsp:setProperty name="your_story" property="*"/>
</jsp:useBean>

<jsp:useBean id="email_story" class="bloodbank.Email">
</jsp:useBean>

<% 
	int i=your_story.submitStory((String)session.getAttribute("username"));
	
	if(i==1)
    {
        request.setAttribute("storyMessage", "Thank You for sharing your story.We will publish your story after review.");
        RequestDispatcher rd = request.getRequestDispatcher("../user/yourStory.jsp");
        rd.forward(request, response);          
        
        String to=(String)session.getAttribute("username");
		String subject="Story Submitted Successfully";
		String message="Thank You for sharing your story.We will publish your story after review.Thank you.";
		email_story.sendMail(to, subject, message);
	}
%>
