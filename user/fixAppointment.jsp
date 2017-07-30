<jsp:include page="userHeader.jsp" />
    <main>
   		<!-- not eligible -->
   		<%
	       if(null!=request.getAttribute("ineligibleMessage"))
	       {
	    %>
	       <div class="error-message">
	           <%=request.getAttribute("ineligibleMessage")%>
	       </div>
	    <%
		   }
	    %>
	    <!-- appointment successful -->
   		<%
	       if(null!=request.getAttribute("appointmentMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("appointmentMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row" id="mainContent">  
            <h4 class="left">Fix Appointment</h4>
            <form "col s12" action="fixAppointmentDone.jsp" method="post" onsubmit="return checkDate()">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">date_range</i>
                        <input type="date" name="appointmentDate" class="datepicker check" placeholder="Date of Donation">
                    	<a id="requiredMessage" class="right"></a>
                    </div>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">location_on</i>
                    <input type="text" name="venue" value="People's Blood Bank" readonly>
                </div>
                <button class="btn waves-effect waves-light right" id="feedbackBtn" type="submit">Submit
                <i class="material-icons right">send</i>
            	</button>
            </form>
        </div>
    </main>