<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_appointments" class="admin.ManageAppointments">
</jsp:useBean>
<%
	manage_appointments.getAppointments();
	Vector<String> username=manage_appointments.username();
	Vector<String> date=manage_appointments.date();
	Vector<String> venue=manage_appointments.venue();
 %>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- reply sent-->
    	<%
	       if(null!=request.getAttribute("appointmentReplyMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("appointmentReplyMessage")%>
	       </div>
	    <%
		   }
	    %>
	    <!-- stock added-->
    	<%
	       if(null!=request.getAttribute("appointmentStockMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("appointmentStockMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row reg-dimension">
            <h4 class="left">Manage Appointments/Donations</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th style="width:10%">Name</th>
                        <th style="width:10%">Date</th>
                        <th style="width:10%">Venue</th>
                        <th style="width:10%">Reply</th>
                        <th style="width:10%">Units</th>
                        <th style="width:10%">Add Stock</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<venue.size();i++)
						{	
					%>
							<form action="manageAppointmentsDone.jsp" method="post">
							<tr>
								<td>
									<%=username.get(i)%>
									<input type="hidden" name="username" value="<%=username.get(i)%>"/>
								</td>
								<td>
									<%=date.get(i)%>
									<input type="hidden" name="date" value="<%=date.get(i)%>"/>
								</td>
								<td>
									<%=venue.get(i)%>
									<input type="hidden" name="venue" value="<%=venue.get(i)%>"/>
								</td>
								<td>
									<a href="appointmentReply.jsp?email=<%=username.get(i)%>"><i class="material-icons">reply</i></a>
								</td>
								<td>
                                    <input type="text" name="units" class="inputHeight" style="width:30%;text-align:center;" maxlength="2" required/>
                                </td>
                                <td>
                                    <button class="btn-flat"><i class="material-icons">done</i></button>
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