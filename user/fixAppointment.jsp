<%@include file="userHeader.html" %>
    <main>
        <div class="row" id="mainContent">
            <h4 class="left">Fix Appointment</h4>
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">date_range</i>
                        <input type="date" class="datepicker" placeholder="Date of Donation">
                    </div>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">location_on</i>
                    <input type="text" value="People's Blood Bank" readonly>
                </div>
                <button class="btn waves-effect waves-light right" id="feedbackBtn" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
            </button>
        </div>
        </form>
        </div>
    </main>