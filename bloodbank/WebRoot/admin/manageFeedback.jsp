<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_feedback" class="admin.ManageFeedback">
</jsp:useBean>
<%
	manage_feedback.getFeedbacks();
	Vector<String> username=manage_feedback.username();
	Vector<String> feedback=manage_feedback.feedback();
 %>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- feedback deleted-->
    	<%
	       if(null!=request.getAttribute("feedbackMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("feedbackMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row reg-dimension">
            <h4 class="left">Feedbacks</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th style="width:50%">Feedback</th>
                        <th>Delete</th>
                    </tr>

                    <tbody>
                        <% 
						for(int i=0;i<username.size();i++)
						{	
					%>
							<tr>
								<td><%=username.get(i) %></td>
								<td><%=feedback.get(i) %></td>
								<td>
									<a href="manageFeedbackDone.jsp?name=<%=username.get(i)%>">
									<i class="material-icons">delete</i></a>
								</td>
							</tr>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>