<jsp:useBean id="user_profile" class="bloodbank.Profile"></jsp:useBean>
<%
	user_profile.viewProfile((String)session.getAttribute("username"));
 %>
<jsp:include page="userHeader.jsp" />
    <main>
    	<%
	       if(null!=request.getAttribute("user_profileMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("user_profileMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div>
            <a class="right" href="editProfile.jsp" style="padding-right:10%;"><i class="material-icons prefix">mode_edit</i>Edit</a>
            <h4 class="center">Profile</h4>
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input class="inputHeight" value="<%=user_profile.getName()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Gender</td>
                    <td><input class="inputHeight" value="<%=user_profile.getGender()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">BirthDate</td>
                    <td class="firstCol"><input class="inputHeight" value="<%=user_profile.getBirthdate()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Email</td>
                    <td><input class="inputHeight" value="<%=user_profile.getEmail()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Address</td>
                    <td><input class="inputHeight" value="<%=user_profile.getAddress()%>" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Contact</td>
                    <td><input class="inputHeight" value="<%=user_profile.getPhone()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td><input class="inputHeight" value="<%=user_profile.getBloodgroup()%>" type="text" readonly></td>
                </tr>
            </table>
        </div>
    </main>