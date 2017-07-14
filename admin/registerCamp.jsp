<%@include file='adminHeader.html' %>
    <main>
        <div class="row reg-dimensions">
            <h4>Register Camp</h4>
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