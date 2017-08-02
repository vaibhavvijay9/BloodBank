<%@page import="jdk.nashorn.internal.codegen.Emitter"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_inquiry" class="admin.ManageInquiry">
</jsp:useBean>
<%
	manage_inquiry.getInquiries();
	Vector<String> date=manage_inquiry.date();
	Vector<String> name=manage_inquiry.name();
	Vector<String> email=manage_inquiry.email();
	Vector<String> phone=manage_inquiry.phone();
	Vector<String> message=manage_inquiry.message();
%>
<jsp:include page="adminHeader.jsp" />
    <!-- Reply sent successfully-->
	    <%
	       if(null!=request.getAttribute("inquiryReplyMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("inquiryReplyMessage")%>
	       </div>
	    <%
		   }
    	%>
    <div class="largeTable">
        <div class="row">
            <h4 class="left">Inquiries</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Telephone</th>
                        <th style="width:40%">Message</th>
                        <th>Reply</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<date.size();i++)
						{	
					%>
							<tr>
								<td><%=date.get(i) %></td>
								<td><%=name.get(i) %></td>
								<td><%=email.get(i) %></td>
								<td><%=phone.get(i) %></td>
								<td><%=message.get(i) %></td>
								<td>
                                    <a href="inquiryReply.jsp?email=<%=email.get(i)%>"><i class="material-icons">reply</i></a>
                                </td>
							</tr>
					<%
						}
					%>
			       </tbody>
            </table>
        </div>
    </div>