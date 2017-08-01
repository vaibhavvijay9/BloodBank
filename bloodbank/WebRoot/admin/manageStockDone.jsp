<%@page import="java.util.Vector"%>
<jsp:useBean id="manage_stock_values" class="admin.ManageStock">
</jsp:useBean>
<%
	manage_stock_values.getStock();
	Vector<String> bloodgroup=manage_stock_values.bloodgroup();
	Vector<String> units=manage_stock_values.units();
 %>
 
<jsp:useBean id="manage_addStock" class="admin.ManageStock">
</jsp:useBean>
<% 
	String bloodgrp=request.getParameter("bloodgroup");
	int quantity=Integer.parseInt((String)request.getParameter("units"));
	int i=manage_stock_values.addStock(bloodgrp, quantity);
	
	if(i==1)
    {
        request.setAttribute("stockAddedMessage", "Stock added successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/manageStock.jsp");
        rd.forward(request, response);
	}
%>
