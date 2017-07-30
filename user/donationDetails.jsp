<jsp:useBean id="donation_details" class="user.DonationDetails"></jsp:useBean>
<%
	donation_details.viewDonations((String)session.getAttribute("username"));
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
                        <tr><!-- without bean like general OR arraylist(bean)?? OR JSTL OR Struts ??? -->
                            <td><%=donation_details.getDonation_date() %></td>
                            <td><%=donation_details.getVenue() %></td>
                        </tr>
                    </tbody>
            </table>
        </div>
    </main>