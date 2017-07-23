<%@include file="userHeader.html" %>
    <main>
        <div>

            <div class="row">
                <a class="right" href="checkStatus.jsp" style="padding-right:10%;"><i class="material-icons prefix">check_circle</i>Check Status</a>
                <h4 class="left">Request Blood</h4>
            </div>
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input class="inputHeight" type="text" placeholder="Patient's Name"></td>
                </tr>
                <tr>
                    <td class="firstCol">Date</td>
                    <td>
                        <input type="date" class="datepicker inputHeight" placeholder="When Required">
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Units</td>
                    <td><input class="inputHeight" type="text" required maxlength="2" onkeypress='return event.charCode >= 48 && event.charCode <= 57' placeholder="Units Required">
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td>
                        <select>
                            <option value="" disabled selected>Select</option>
                            <option value="1">A<sup>+</sup></option>
                            <option value="2">B<sup>+</sup></option>
                            <option value="3">O<sup>+</sup></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Hospital Name</td>
                    <td><input class="inputHeight" type="text"></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <button class="btn waves-effect waves-light right" type="submit">Submit
                        <i class="material-icons right">send</i>
                    </td>
                </tr>
            </table>
            
        </div>
    </main>