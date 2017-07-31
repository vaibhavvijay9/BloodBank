<%@page import="bloodbank.DBInfo"%>
<jsp:include page="userHeader.jsp" />
<%@page import="java.util.Vector"%>

<jsp:useBean id="camps" class="bloodbank.Camps">
</jsp:useBean>
<%
	camps.getCamps();
	Vector<String> date=camps.date();
	Vector<String> name=camps.name();
	Vector<String> venue=camps.venue();
%>
        <main>
        <!-- not eligible -->
   		<%
	       if(null!=request.getAttribute("notEligibleMessage"))
	       {
	    %>
	       <div class="error-message">
	           <%=request.getAttribute("notEligibleMessage")%>
	       </div>
	    <%
		   }
	    %>
	    <!-- camp registration successful -->
   		<%
	       if(null!=request.getAttribute("campMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("campMessage")%>
	       </div>
	    <%
		   }
	    %>
            <div class="row reg-dimensions">
                <div class="row">
                    <h4 class="left">Register For Camp</h4>
                </div>
                <table class="table-width">
                    <tr>
                        <td class="firstCol">Camp Name</td>
                        <td>
                            <form action="campRegistrationDone.jsp" method="post">
                                <select id="selectMe" name="campname" required>
                                    <option value="" disabled selected>Select</option>
        							<!--Options Start-->
				                    <% 
					                    for(int i=0;i<name.size();i++)
										{
									%>
										<option value="<%=name.get(i)%>"><%=name.get(i)%></option>					
									<%	
										}
									%>
                                </select>
                        </td>
                    </tr>
                </table>

                <!--OptionsEnd-->
                <!-- Content Start(Date ,Venue fields) -->
                <% 
	                    for(int i=0;i<name.size();i++)
						{
						//since id cannot contain spaces
                    	String s=name.get(i).trim().replaceAll("\\s+","");						
                 %>
                    <div id="<%=s%>" class="group">
                        <table class="table-width">
                            <tr>
                                <td class="firstCol">Date</td>
                                <td><input type="text" name="date" value="<%=date.get(i)%>" class="inputHeight" readonly></td>
                            </tr>
                            <tr>
                                <td class="firstCol">Venue</td>
                                <td><input type="text" name="venue" value="<%=venue.get(i)%>" class="inputHeight" readonly></td>
                            </tr>
                        </table>
                    </div>
                <%
		            }
		        %>
                        <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                        <i class="material-icons right">send</i>
   						</button>
   				</form>             
        </div>
    </main>