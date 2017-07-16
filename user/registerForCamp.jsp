<%@include file='userHeader.html' %>
    <main>
        <div class="row reg-dimensions">
            <div class="row">
                <h4 class="left">Register For Camp</h4>
            </div>
            <table class="table-width">
                <tr>
                    <td class="firstCol">Camp Name</td>
                    <td>
                        <select name="camp">
                            <option value="" disabled selected>Select</option>
                            <option value="1" >Volunteer Blood Donation Camp</option>
                            <option value="2">Society Blood Camp</option>
                            <option value="3">Community Donation Capm</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Date</td>
                    <td><input type="text" class="inputHeight" value="<%=request.getParameter( " camp ")%>" readonly></td>
                </tr>
                <tr>
                    <td class="firstCol">Venue</td>
                    <td class="firstCol"><input type="text" class="inputHeight" value="" readonly></td>
                </tr>

            </table>
            <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                        <i class="material-icons right">send</i>
                
        </div>
    </main>