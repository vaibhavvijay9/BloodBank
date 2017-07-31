<jsp:include page="userHeader.jsp" />
<%@page import="java.util.Vector"%>

<jsp:useBean id="blood_grps" class="bloodbank.BloodGroups">
</jsp:useBean>
<%
	blood_grps.getBloodGroups();
	Vector<String> blood=blood_grps.bloodGroup();
%>
    <main>
    	<!-- request successful -->
   		<%
	       if(null!=request.getAttribute("requestMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("requestMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div>
            <div class="row">
                <a class="right" href="checkStatus.jsp" style="padding-right:10%;"><i class="material-icons prefix">check_circle</i>Check Status</a>
                <h4 class="left">Request Blood</h4>
            </div>
            <form action="requestBloodDone.jsp" method="post" onsubmit="return checkDate()">
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input type="text" name="patientName" class="inputHeight" placeholder="Patient's Name" required></td>
                </tr>
                <tr>
                    <td class="firstCol">Date</td>
                    <td>
                        <input type="date" name="requiredDate" class="datepicker inputHeight check" placeholder="When Required">
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Units</td>
                    <td><input type="text" name="units" class="inputHeight" maxlength="2"  placeholder="Units Required" required onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td>
                        <select name="bloodgroup" required>
                           <option value="" disabled selected>Blood Group</option>
                    <% 
	                    for(int i=0;i<blood.size();i++)
						{
					%>
						<option value="<%=blood.get(i)%>"><%=blood.get(i)%></option>					
					<%	
						}
					%>
						</select>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Hospital Name</td>
                    <td><input type="text" name="hospitalName" class="inputHeight" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button class="btn waves-effect waves-light right" type="submit">Submit
                        <i class="material-icons right">send</i>
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </main>