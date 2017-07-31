<%@page import="java.util.Vector"%>
<jsp:useBean id="donation_details" class="user.DonationDetails"></jsp:useBean>
<%
	donation_details.getDonations((String)session.getAttribute("username"));
	Vector<String> donation_date=donation_details.donationDate();
	Vector<String> venue=donation_details.venue();
 %>
<jsp:include page="userHeader.jsp" />
    <main>
        <div class="row" id="mainContent">
            <h4 class="left">Donation Details</h4>
            <table class="striped">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Venue</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<donation_date.size();i++)
						{	
					%>
							<tr>
								<td><%=donation_date.get(i) %></td>
								<td><%=venue.get(i) %></td>
							</tr>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>