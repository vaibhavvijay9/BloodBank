<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_requests" class="admin.ManageRequests">
</jsp:useBean>
<%
	manage_requests.getRequests();
	Vector<String> username=manage_requests.username();
	Vector<String> patient_name=manage_requests.patient_name();
	Vector<String> required_date=manage_requests.required_date();
	Vector<String> units=manage_requests.units();
	Vector<String> bloodgroup=manage_requests.bloodgroup();
	Vector<String> hospital_name=manage_requests.hospital_name();
	Vector<String> status=manage_requests.status();
%>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- Request approved successfully-->
	    <%
	       if(null!=request.getAttribute("requestApproveMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("requestApproveMessage")%>
	       </div>
	    <%
		   }
    	%>
    	<!-- Request provided successfully-->
	    <%
	       if(null!=request.getAttribute("requestProvidedMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("requestProvidedMessage")%>
	       </div>
	    <%
		   }
    	%>
        <div class="row reg-dimension">
            <h4 class="left">Manage Requests</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th style="width:10%">Username</th>
                        <th style="width:10%">Patient's Name</th>
                        <th style="width:10%">Required Date</th>
                        <th style="width:10%">Units</th>
                        <th style="width:10%">Blood Group</th>
                        <th style="width:10%">Hospital</th>
                        <th style="width:10%">Status</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<username.size();i++)
						{	
					%>		<form action="approveRequest.jsp" method="post">
							<tr>
								<td>
								<%=username.get(i) %>
								<input type="hidden" name="username" value="<%=username.get(i)%>"/>	
								</td>
								<td>
								<%=patient_name.get(i) %>
								<input type="hidden" name="patient" value="<%=patient_name.get(i)%>"/>
								</td>
								<td><%=required_date.get(i) %></td>
								<td>
								<%=units.get(i) %>
								<input type="hidden" name="units" value="<%=units.get(i)%>"/>
								</td>
								<td>
								<%=bloodgroup.get(i) %>
								<input type="hidden" name="bloodgroup" value="<%=bloodgroup.get(i)%>"/>
								</td>
								<td><%=hospital_name.get(i) %></td>
								<td>
								<input type="hidden" name="status" value="<%=status.get(i)%>"/>
								<button class="btn-flat"><%=status.get(i)%></button>
								</td>
	                        </tr>
	                        </form>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>