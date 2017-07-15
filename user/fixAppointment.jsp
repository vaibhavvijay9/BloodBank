<%@include file="userHeader.html" %>
    <!--<main>
        <div>
            <div class="row">
                <h4 class="left">Fix Appointment</h4>
            </div>

            <table class="table-width">
                <tr>
                    <td class="firstCol">Date</td>
                    <td>
                        <input type="date" class="datepicker inputHeight">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <button class="btn waves-effect waves-light right" type="submit">Fix
                        <i class="material-icons right">send</i>
                    </td>
                </tr>
            </table>
            
        </div>
    </main>-->
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
                <button class="btn waves-effect waves-light right" id="feedbackBtn" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
            </button>
        </div>
        </form>
        </div>
    </main>