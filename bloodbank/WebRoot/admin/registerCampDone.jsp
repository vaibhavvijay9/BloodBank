<jsp:useBean id="register_camp" class="admin.RegisterCamp">
<jsp:setProperty name="register_camp" property="*"/>
</jsp:useBean>

<% 
	int i=register_camp.registerCamp();
	
	if(i==1)
    {
        request.setAttribute("campMessage", "Camp has been registered successfully.");
        RequestDispatcher rd = request.getRequestDispatcher("../admin/registerCamp.jsp");
        rd.forward(request, response);
	}
%>
