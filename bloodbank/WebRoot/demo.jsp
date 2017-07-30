<html>
<body>
<form action="demo.jsp" method="post">
	<table border="1">
		<tr>
			<td>Enter username:</td>
			<td><input type="text" name="uname"></td>
			<td><input type="submit"></td>
		</tr>
	</table>
</form>
<br>
<%
	String uname= request.getParameter("uname");
	if (uname == null) 
	{
		// myText is null when the page is first requested, 
		// so do nothing
	}
	else 
	{  
%>
	<b>Hello <%=uname%></b>
<%
	}
%>
</body>
</html>