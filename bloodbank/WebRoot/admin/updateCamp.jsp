<jsp:include page="adminHeader.jsp" />
    <main>
        <div class="row reg-dimensions">
            <h4>Update Camp</h4>
        </div>
        <table class="table-width">
            <tr>
                <td class="firstCol">Name</td>
                <td><input type="text" class="inputHeight" value="Volunteer blood camp"></td>
            </tr>
            <tr>
                <td class="firstCol">Date</td>
                <td><input type="date" class="datepicker defaultDate inputHeight" value="2017-07-25"></td>
            </tr>
            <tr>
                <td class="firstCol">Venue</td>
                <td class="firstCol"><input type="text" required="true" class="validate inputHeight" value="Jaipur"></td>
            </tr>
            <tr>
                <td></td>
                <td><button class="btn waves-effect waves-light right" type="submit" name="action">Update</td>
            </tr>
        </table>
        </div>
    </main>