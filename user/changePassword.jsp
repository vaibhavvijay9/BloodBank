<jsp:include page="userHeader.jsp" />
    <main>
    	<!-- authentication failed -->
	    <%
	       if(null!=request.getAttribute("changePasswordMessage"))
	       {
	    %>
	       <div class="error-message">
	           <%=request.getAttribute("changePasswordMessage")%>
	       </div>
	    <%
		   }
    	%>
    	<!-- password changed -->
    	<%
	       if(null!=request.getAttribute("changeSuccessMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("changeSuccessMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row" id="mainContent">
            <h4 class="left">Change Password</h4>
            <form class="col s12" action="changePasswordDone.jsp" method="post" onsubmit="return validatePassword()">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="fa fa-key small prefix"></i>
                        <input id="oldPassword" type="password" name="old_password" minlength="8" required>
                        <label for="oldPassword">Old Password</label>
                    </div>
	                <div class="input-field col s12">
	                    <i class="fa fa-key small prefix"></i>
	                    <input id="password1" type="password" name="password" minlength="8" required>
	                    <label for="password1">New Password</label>
	                </div>
	                <div class="input-field col s12">
	                    <i class="fa fa-check-circle-o small prefix"></i>
	                    <input id="confirm_password" type="password" name="confirm_password" required>
	                    <label for="confirm_password">Confirm New Password</label>
	                    <a id="passwordError" class="right"></a>
	                </div>
                    <button class="btn waves-effect waves-light right" type="submit" name="action">Save
                        <i class="material-icons right">send</i>
                    </button>
                </div>
            </form>
        </div>
    </main>
    <script src="js/index.js"></script>