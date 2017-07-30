<jsp:include page="userHeader.jsp" />
    <main>
        <%
	       if(null!=request.getAttribute("storyMessage"))
	       {
	    %>
	       <div class="success-message">
	           <%=request.getAttribute("storyMessage")%>
	       </div>
	    <%
		   }
	    %>
        <div class="row" id="mainContent">
            <h4 class="left">Your Story</h4>
            <form class="col s12" action="yourStoryDone.jsp" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="textarea1" name="story" class="materialize-textarea" maxlength="500" data-length="500" placeholder="Start writing from here..." required></textarea>
                    </div>
                </div>
                <button class="btn waves-effect waves-light right" type="submit">Submit
                        <i class="material-icons right">send</i>
            	</button>
            </form>
        </div>
    </main>