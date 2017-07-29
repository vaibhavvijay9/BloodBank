<jsp:useBean id="obj" class="user.Profile"></jsp:useBean>
<%
	obj.viewProfile((String)session.getAttribute("username"));
 %>
<%@include file="userHeader.jsp" %>
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
                    <td><input class="inputHeight" value="<%=obj.getName()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Gender</td>
                    <td><input class="inputHeight" value="<%=obj.getGender()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">BirthDate</td>
                    <td class="firstCol"><input class="inputHeight" value="<%=obj.getBirthdate()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Email</td>
                    <td><input class="inputHeight" value="<%=obj.getEmail()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Address</td>
                    <td><input class="inputHeight" value="<%=obj.getAddress()%>" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Contact</td>
                    <td><input class="inputHeight" value="<%=obj.getPhone()%>" type="text" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td><input class="inputHeight" value="<%=obj.getBloodgroup()%>" type="text" readonly></td>
                </tr>
            </table>
        </div>
    </main>