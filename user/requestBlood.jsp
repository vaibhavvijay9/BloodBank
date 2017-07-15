<%@include file="userHeader.html" %>
    <main>
        <div>

            <div class="row">
                <h4 class="left">Request Blood</h4>
            </div>
            <table class="table-width">
                <tr>
                    <td class="firstCol">Name</td>
                    <td><input class="inputHeight" value="Vaibhav Vijay" type="text"></td>
                </tr>
                <tr>
                    <td class="firstCol">Gender</td>
                    <td>
                        <select>
                            <option value="" disabled selected>Gender</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BirthDate</td>
                    <td>
                        <input type="date" class="datepicker inputHeight" placeholder="09/05/1997">
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">Email</td>
                    <td><input type="email" required class="validate inputHeight" value="vaibhavvijay9@gmail.com"></td>
                </tr>
                <tr>
                    <td class="firstCol">Address</td>
                    <td><textarea class="materialize-textarea inputHeight" required>95,Adarsh Nagar</textarea></td>
                </tr>
                <tr>
                    <td class="firstCol">Contact</td>
                    <td><input class="inputHeight" type="text" required maxlength="10" value="8104410854" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol">BloodGroup</td>
                    <td>
                        <select>
                            <option value="" disabled selected>Blood Group</option>
                            <option value="1">A<sup>+</sup></option>
                            <option value="2">B<sup>+</sup></option>
                            <option value="3">O<sup>+</sup></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <button class="btn waves-effect waves-light right" type="submit">Save
                        <i class="material-icons right">send</i>
                    </td>
                </tr>
            </table>
            
        </div>
    </main>