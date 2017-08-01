<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_camp" class="admin.ManageCamp">
</jsp:useBean>
<%
	manage_camp.getCamps();
	Vector<String> date=manage_camp.date();
	Vector<String> name=manage_camp.name();
	Vector<String> venue=manage_camp.venue();
 %>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- camp updated-->
    	<%
	       if(null!=request.getAttribute("campUpdateMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("campUpdateMessage")%>
	       </div>
	    <%
		   }
	    %>
	    <!-- camp deleted-->
    	<%
	       if(null!=request.getAttribute("campDeleteMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("campDeleteMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row reg-dimension">
            <h4 class="left">All Camps</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Date</th>
                        <th>Venue</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>

                    <tbody>
	                <% 
						for(int i=0;i<date.size();i++)
						{	
					%>
							<tr>
								<td><%=name.get(i) %></td>
								<td><%=date.get(i) %></td>
								<td><%=venue.get(i) %></td>
								<td>
									<a href="updateCamp.jsp?name=<%=name.get(i)%>&date=<%=date.get(i)%>&venue=<%=venue.get(i)%>">
									<i class="material-icons">mode_edit</i></a>
								</td>
								<td>
									<a href="deleteCamp.jsp?name=<%=name.get(i)%>">
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