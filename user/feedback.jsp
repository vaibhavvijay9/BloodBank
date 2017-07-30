<jsp:include page="userHeader.jsp" />
    <main>
    	<%
	       if(null!=request.getAttribute("feedbackMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("feedbackMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row" id="mainContent">
            <h4 class="left">Feedback</h4>
            <form class="col s12" action="feedbackDone.jsp" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="textarea1" name="feedback" class="materialize-textarea" maxlength="250" data-length="250" placeholder="Start writing from here..." required></textarea>
                    </div>
                </div>
                <button class="btn waves-effect waves-light right" id="feedbackBtn" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
            	</button>
        	</form>
        </div>
    </main>