<jsp:include page="adminHeader.jsp" />
    <main>
        <!-- camp registered successfully-->
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
    	
    	<div class="row reg-dimension">
            <div class="row">
                <a class="right" href="manageCamp.jsp" style="padding:2% 0% 0% 0%;"><i class="material-icons right">settings</i>Manage</a>
                <h4 class="left">Register Camp</h4>
            </div>
            <form action="registerCampDone.jsp" method="post" onsubmit="return checkDate()">
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input type="text" name="name" class="inputHeight" placeholder="Enter Name" required></td>
                </tr>
                <tr>
                    <td class="firstCol">Date</td>
                    <td><input type="date" name="date" class="datepicker check" placeholder="Enter Camp Dates"></td>
                	<a id="requiredMessage" class="right"></a>
                </tr>
                <tr>
                    <td class="firstCol">Venue</td>
                    <td class="firstCol"><input type="text" name="venue" class="inputHeight" placeholder="Enter Venue" required></td>
                </tr>

            </table>
            <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                        <i class="material-icons right">send</i>
                
        </div>
    </main>