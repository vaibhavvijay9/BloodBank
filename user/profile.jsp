<jsp:useBean id="profile" class="user.Profile"></jsp:useBean>
<%
	profile.viewProfile((String)session.getAttribute("username"));
 %>
<jsp:include page="userHeader.jsp" />
    <main>
    	<%
	       if(null!=request.getAttribute("profileMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("profileMessage")%>
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
                    <td><input class="inputHeight" value="<%=profile.getName()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Gender</td>
                    <td><input class="inputHeight" value="<%=profile.getGender()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">BirthDate</td>
                    <td class="firstCol"><input class="inputHeight" value="<%=profile.getBirthdate()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Email</td>
                    <td><input class="inputHeight" value="<%=profile.getEmail()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Address</td>
                    <td><input class="inputHeight" value="<%=profile.getAddress()%>" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Contact</td>
                    <td><input class="inputHeight" value="<%=profile.getPhone()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td><input class="inputHeight" value="<%=profile.getBloodgroup()%>" type="text" readonly></td>
                </tr>
            </table>
        </div>
    </main>