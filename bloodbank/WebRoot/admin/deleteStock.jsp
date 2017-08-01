<%@page import="java.util.Vector"%>
<jsp:useBean id="delete_stock" class="admin.ManageStock">
</jsp:useBean>
<%
	delete_stock.getExpiredStock();
	Vector<Integer> id=delete_stock.id();
%>
<jsp:include page="adminHeader.jsp" />
    <main>
    	<!-- stock deleted-->
    	<%
	       if(null!=request.getAttribute("stockDeletedMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("stockDeletedMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row reg-dimension">
            <h4 class="left">Delete Stock</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Delete Stock</th>
                    </tr>

                    <tbody>
                    <% 
						for(int i=0;i<id.size();i++)
						{	
					%>
							<tr>
								<td><%=id.get(i) %></td>
								<td>
                                    <a href="deleteStockDone.jsp?id=<%=id.get(i)%>"><i class="material-icons">delete</i></a>
                                </td>
							</tr>
					<%
						}
					%>
                    </tbody>
            </table>
        </div>
    </main>