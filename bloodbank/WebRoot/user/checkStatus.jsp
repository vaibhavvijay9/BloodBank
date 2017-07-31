<jsp:include page="userHeader.jsp" />
<%@page import="java.util.Vector"%>
<jsp:useBean id="check_status" class="user.CheckStatus">
</jsp:useBean>
<%
	check_status.getRequests((String)session.getAttribute("username"));
	Vector<String> patient_name=check_status.patientName();
	Vector<String> required_date=check_status.requiredDate();
	Vector<String> units=check_status.units();
	Vector<String> bloodgroup=check_status.bloodGroup();
	Vector<String> hospital_name=check_status.hospitalName();
	Vector<String> status=check_status.status();
%>
    <main>
        <div class="row reg-dimension">
            <h4 class="left">Request Details</h4>
            <table class="striped">
                <thead>
                    <tr>
                        <th>Patient's Name</th>
                        <th>Required Date</th>
                        <th>Units</th>
                        <th>Blood Group</th>
                        <th>Hospital</th>
                        <th>Status</th>
                    </tr>

                    <tbody>
	                <% 
						for(int i=0;i<patient_name.size();i++)
						{	
					%>
							<tr>
								<td><%=patient_name.get(i) %></td>
								<td><%=required_date.get(i) %></td>
								<td><%=units.get(i) %></td>
								<td><%=bloodgroup.get(i) %></td>
								<td><%=hospital_name.get(i) %></td>
								<td><a><%=status.get(i) %></a></td>
							</tr>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>