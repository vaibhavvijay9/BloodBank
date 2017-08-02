<%@page import="java.util.Vector"%>
<jsp:useBean id="user_stories" class="admin.UserStories">
</jsp:useBean>
<%
	user_stories.getStories();
	Vector<String> username=user_stories.username();
	Vector<String> story=user_stories.story();
	Vector<String> status=user_stories.status();
%>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- Report sent successfully-->
	    <%
	       if(null!=request.getAttribute("storyReplyMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("storyReplyMessage")%>
	       </div>
	    <%
		   }
    	%>
    	<!-- Story deleted successfully-->
	    <%
	       if(null!=request.getAttribute("storyDeleteMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("storyDeleteMessage")%>
	       </div>
	    <%
		   }
    	%>
    	<!-- Story approved successfully-->
	    <%
	       if(null!=request.getAttribute("storyApproveMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("storyApproveMessage")%>
	       </div>
	    <%
		   }
    	%>
        <div class="row reg-dimension">
            <h4 class="left">User Stories</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th style="width:50%">Story</th>
                        <th>Report</th>
                        <th>Delete</th>
                        <th>Status</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<username.size();i++)
						{	
					%>
							<tr>
								<td><%=username.get(i) %></td>
								<td><%=story.get(i) %></td>
								<td><a href="reportStory.jsp?email=<%=username.get(i)%>"><i class="material-icons">report</i></a></td>
	                            <td>
	                                <a href="deleteStory.jsp?email=<%=username.get(i)%>"><i class="material-icons">delete</i></a>
	                            </td>
	                            <td>
	                                <a href="approveStory.jsp?email=<%=username.get(i)%>"><%=status.get(i)%></a>
	                            </td>
							</tr>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>