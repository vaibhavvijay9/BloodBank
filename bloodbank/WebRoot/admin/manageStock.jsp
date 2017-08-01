<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_stock" class="admin.ManageStock">
</jsp:useBean>
<%
	manage_stock.getStock();
	Vector<String> bloodgroup=manage_stock.bloodgroup();
	Vector<String> units=manage_stock.units();
 %>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- stock updated-->
    	<%
	       if(null!=request.getAttribute("stockAddedMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("stockAddedMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row reg-dimension">
            <div class="row">
                <a class="right" href="deleteStock.jsp" style="padding:2% 0% 0% 0%;"><i class="material-icons right">settings</i>Delete Stock</a>
                <h4 class="left">Blood Stock</h4>
            </div>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th style="width:10%">Blood Group</th>
                        <th style="width:10%">Units</th>
                        <th style="width:10%">Quantity</th>
                        <th style="width:10%">Add Stock</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<bloodgroup.size();i++)
						{	
					%>
							<form action="manageStockDone.jsp" method="post">
							<tr>
								<td>
								<%=bloodgroup.get(i) %>
								<input type="hidden" name="bloodgroup" value="<%=bloodgroup.get(i)%>"/>
								</td>
								<td><%=units.get(i) %></td>
								<td>
                                    <input type="text" name="units" class="inputHeight" style="width:30%;text-align:center;" maxlength="2" required>
                                	
                                </td>
                                <td>
                                    <button class="btn-flat"><i class="material-icons">done</i></button>
                                </td>
							</tr>
							</form>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>