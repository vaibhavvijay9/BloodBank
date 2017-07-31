<%@page import="bloodbank.DBInfo"%>
<%@include file='adminHeader.jsp' %>
<%@page import="java.sql.*" %>
<%@page import="java.util.Vector"%>

<jsp:useBean id="blood_groups" class="bloodbank.BloodGroups">
</jsp:useBean>
<%
	blood_groups.getBloodGroups();
	Vector<String> blood=blood_groups.bloodGroup();
%>
    <main>
    <!-- registration successful message  -->
    <%
       if(null!=request.getAttribute("registrationMessage"))
       {
    %>
       <div class="success-message">
           <%=request.getAttribute("registrationMessage")%>
       </div>
    <%
	   }
    %>
    <!-- user already exists message -->
    <%
       if(null!=request.getAttribute("AlreadyExistsMessage"))
       {
    %>
       <div class="error-message">
           <%=request.getAttribute("AlreadyExistsMessage")%>
       </div>
    <%
	   }
    %>
    <div class="row reg-dimension1">
        <h3 id="loginAlign">Registration</h3>
        <form class="col s12" action="registrationDone.jsp" method="post" name="registerForm" onsubmit="return validate()">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="icon_prefix" type="text" name="name" required>
                    <label for="icon_prefix">Name</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">face</i>
                    <select id="gender" name="gender" required>
                            <option value="" disabled selected>Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                    </select>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">date_range</i>
                    <input type="date" name="birthdate" class="datepicker" placeholder="BirthDate" required>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">mail</i>
                    <input id="email1" type="email" name="email" required>
                    <label for="email1">Email (Username)</label>
                    <a id="errorMessage" class="right"></a>
                </div>
                <div class="input-field col s12">
                    <i class="fa fa-key small prefix"></i>
                    <input id="password1" type="password" name="password" minlength="8" required>
                    <label for="password1">Password</label>
                </div>
                <div class="input-field col s12">
                    <i class="fa fa-check-circle-o small prefix"></i>
                    <input id="confirm_password" type="password" name="confirm_password" required>
                    <label for="confirm_password">Confirm Password</label>
                    <a id="passwordError" class="right"></a>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">location_on</i>
                    <textarea id="icon_prefix2" name="address" class="materialize-textarea" required></textarea>
                    <label for="icon_prefix2">Address</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">phone</i>
                    <input id="icon_telephone" type="text" name="phone" minlength="10" maxlength="10" required onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    <label for="icon_telephone">Mobile</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">opacity</i>
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
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">perm_identity</i>
                    <select name="usertype" required>
    	                <option value="" disabled selected>Usertype</option>
						<option value="user">User</option>
						<option value="admin">Admin</option>
                    </select>
                </div>
            </div>
           <button id="inquiryBtn" type="submit" class="btn waves-effect waves-light">Register
                    <i class="material-icons right">send</i>
                </button>
            <button id="resetBtn" type="reset" class="btn waves-effect waves-light right">Reset
                    <i class="material-icons right">autorenew</i>
                </button>
        </form>
    </div>
	</main>
<script src="../js/registration.js"></script>        