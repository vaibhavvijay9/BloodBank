<%@page import="bloodbank.DBInfo"%>
<jsp:include page="userHeader.jsp" />
    <%@ page import="java.sql.*" %>

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
                       					Connection con=DBInfo.getConn();	
					                    String query="select name from camps";
                                        PreparedStatement ps=con.prepareStatement(query);
                                        ResultSet res=ps.executeQuery();
                                        while(res.next())
                                        {
                                    %>
                                           <option value="<%=res.getString(1)%>"><%=res.getString(1)%></option>
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
                    String query1="select name,date,venue from camps"; 
                    PreparedStatement ps1=con.prepareStatement(query1); 
                    ResultSet res1=ps1.executeQuery(); 
                    while(res1.next()) 
                    {	
                    	//since id cannot contain spaces
                    	String s=res1.getString(1).trim().replaceAll("\\s+","");
                 %>
                    <div id="<%=s%>" class="group">
                        <table class="table-width">
                            <tr>
                                <td class="firstCol">Date</td>
                                <td><input type="text" name="date" value="<%=res1.getString(2)%>" class="inputHeight" readonly></td>
                            </tr>
                            <tr>
                                <td class="firstCol">Venue</td>
                                <td><input type="text" name="venue" value="<%=res1.getString(3)%>" class="inputHeight" readonly></td>
                            </tr>
                        </table>
                    </div>
                <%
		            }
		            con.close();
		        %>
                        <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                        <i class="material-icons right">send</i>
   						</button>
   				</form>             
        </div>
    </main>