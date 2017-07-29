<%@include file="userHeader.jsp" %>
    <main>
        <div class="row" id="mainContent">
            <h4 class="left">Change Password</h4>
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="fa fa-key small prefix"></i>
                        <input id="password" type="password" class="validate" required="true">
                        <label for="password">Old Password</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="fa fa-key small prefix"></i>
                        <input id="password" type="password" class="validate" required="true">
                        <label for="password">New Password</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="fa fa-check-circle-o small prefix"></i>
                        <input id="password" type="password" class="validate" required="true">
                        <label for="password">Confirm New Password</label>
                    </div>
                    <button class="btn waves-effect waves-light right" type="submit" name="action">Save
                        <i class="material-icons right">send</i>
                    </button>
                </div>
            </form>
        </div>
    </main>