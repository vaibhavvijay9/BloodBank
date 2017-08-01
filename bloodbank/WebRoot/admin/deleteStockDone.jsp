<jsp:useBean id="delete_stock_values" class="admin.ManageStock">
</jsp:useBean>
<% 
	int id=Integer.parseInt(request.getParameter("id"));
	int i=delete_stock_values.deleteStock(id);
	
	if(i==1)
    {
        request.setAttribute("stockDeletedMessage", "Stock deleted successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/deleteStock.jsp");
        rd.forward(request, response);
	}
%>
