<jsp:include page="adminHeader.jsp" />
    <main>
    	<div class="row reg-dimension">
            <h4 class="left">Reply</h4><br><br>
            <form action="inquiryReplyDone.jsp" method="post">
            <table class="table-width">
                <tr>
                    <td class="firstCol">To</td>
                    <td><input type="text" name="to" value="<%=request.getParameter("email")%>" class="inputHeight" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Message</td>
                    <td>
                    	<textarea name="message" class="materialize-textarea" maxlength="500" data-length="500" required></textarea>        
               		</td>
               </tr>
               <tr>
                    <td></td>
                    <td>
	                    <button class="btn waves-effect waves-light right" type="submit">Send
	               			<i class="material-icons right">send</i>
	            		</button>
	            	</td>
              </tr>
            </table>
        </div>
    </main>