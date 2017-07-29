<%@include file='userHeader.jsp' %>
    <main>
        <div class="row" id="mainContent">
            <h4 class="left">Feedback</h4>
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="textarea1" class="materialize-textarea" required="true" maxlength="250" data-length="250"></textarea>
                    </div>
                </div>
                <button class="btn waves-effect waves-light right" id="feedbackBtn" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
            </button>
        </div>
        </form>
        </div>
    </main>