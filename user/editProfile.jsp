<%@page import="bloodbank.DBInfo"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="obj" class="user.Profile"></jsp:useBean>
<%
	obj.viewProfile((String)session.getAttribute("username"));
 %>
<jsp:include page="userHeader.jsp" />
    <main>
        <div>
            <div class="row">
                <h4 class="left">Edit Profile</h4>
            </div>
          <form class="col s12" action="editProfileDone.jsp" method="post">
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input type="text" name="name" value="<%=obj.getName()%>" class="inputHeight" required></td>
                </tr>
                <tr>
                    <td class="firstCol">Gender</td>
                    <td>
                        <select name="gender" required>
                            <option value="<%=obj.getGender()%>" selected><%=obj.getGender()%></option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BirthDate</td>
                    <td>
                        <input type="date" name="birthdate" value="<%=obj.getBirthdate()%>" class="defaultDate datepicker inputHeight" required>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Email</td>
                    <td><input type="email" name="email" class="inputHeight" value="<%=obj.getEmail()%>" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Address</td>
                    <td><textarea name="address" class="materialize-textarea inputHeight" required><%=obj.getAddress()%></textarea></td>
                </tr>
                <tr>
                    <td class="firstCol">Contact</td>
                    <td><input type="text" name="phone" value="<%=obj.getPhone()%>" class="inputHeight" maxlength="10" required onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td>
                        <select name="bloodgroup" required>
                            <option value="<%=obj.getBloodgroup()%>" selected><%=obj.getBloodgroup()%></option>
                        <% 
		                    String query="select * from bloodgroups";
							Connection con=DBInfo.getConn();	
							PreparedStatement ps=con.prepareStatement(query); 
							ResultSet res=ps.executeQuery();
							while(res.next())
							{
						%>
							<option value="<%=res.getString(1)%>"><%=res.getString(1)%></option>					
						<%	
							}
							con.close();
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