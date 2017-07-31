<%@page import="bloodbank.DBInfo"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Vector"%>
<jsp:include page="adminHeader.jsp" />

<jsp:useBean id="admin_ed_profile" class="bloodbank.Profile">
</jsp:useBean>
<%
	admin_ed_profile.viewProfile((String)session.getAttribute("username"));
 %>

<jsp:useBean id="blood_group" class="bloodbank.BloodGroups">
</jsp:useBean>
<%
	blood_group.getBloodGroups();
	Vector<String> blood=blood_group.bloodGroup();
%> 
 
    <main>
        <div>
            <div class="row">
                <h4 class="left">Edit Profile</h4>
            </div>
          <form class="col s12" action="editProfileDone.jsp" method="post">
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input type="text" name="name" value="<%=admin_ed_profile.getName()%>" class="inputHeight" required></td>
                </tr>
                <tr>
                    <td class="firstCol">Gender</td>
                    <td>
                        <select name="gender" required>
                            <option value="<%=admin_ed_profile.getGender()%>" selected><%=admin_ed_profile.getGender()%></option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BirthDate</td>
                    <td>
                        <input type="date" name="birthdate" value="<%=admin_ed_profile.getBirthdate()%>" class="defaultDate datepicker inputHeight" required>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Email</td>
                    <td><input type="email" name="email" class="inputHeight" value="<%=admin_ed_profile.getEmail()%>" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Address</td>
                    <td><textarea name="address" class="materialize-textarea inputHeight" required><%=admin_ed_profile.getAddress()%></textarea></td>
                </tr>
                <tr>
                    <td class="firstCol">Contact</td>
                    <td><input type="text" name="phone" value="<%=admin_ed_profile.getPhone()%>" class="inputHeight" maxlength="10" required onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td>
                        <select name="bloodgroup" required>
                            <option value="<%=admin_ed_profile.getBloodgroup()%>" selected><%=admin_ed_profile.getBloodgroup()%></option>
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
                    <td></td>
                    <td>
                        <button class="btn waves-effect waves-light right" type="submit">Save
                        <i class="material-icons right">send</i>
                    </td>
                </tr>
            </table>
          </form>  
        </div>
    </main>