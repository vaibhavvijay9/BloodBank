<%@include file='adminHeader.html' %>
    <main>
        <div class="row reg-dimension">
            <div class="row">
                <a class="right" href="manageCamp.jsp" style="padding:2% 0% 0% 0%;"><i class="material-icons right">settings</i>Manage</a>
                <h4 class="left">Register Camp</h4>
            </div>
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input type="text" required="true" class="validate inputHeight" placeholder="Enter Name"></td>
                </tr>
                <tr>
                    <td class="firstCol">Date</td>
                    <td><input type="date" class="datepicker inputHeight" placeholder="Enter Camp Dates"></td>
                </tr>
                <tr>
                    <td class="firstCol">Venue</td>
                    <td class="firstCol"><input type="text" required="true" class="validate inputHeight" placeholder="Enter Venue"></td>
                </tr>

            </table>
            <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                        <i class="material-icons right">send</i>
                
        </div>
    </main>