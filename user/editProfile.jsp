<%@include file="userHeader.html" %>

    <div id="userContent">
        <h4 class="center">Edit Profile</h4>
        <div class="row" id="userContentads">
            <div class="col s12">
                <span id="spanSize">Name</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="input-field inline" id="fieldSpace">
                    <input id="icon_prefix" value="database" type="text" required="true" class="validate">
                </div>
            </div>
            <div class="col s12">
                <span id="spanSize">Gender</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="input-field inline" id="fieldSpace">
                    <select>
                            <option value="" disabled selected>databse gender value</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Other</option>
                        </select>
                </div>
            </div>
            <div class="col s12">
                <span id="spanSize">BirthDate</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="input-field inline" id="fieldSpace">
                    <input type="date" placeholder="09 May,2017" class="datepicker">
                </div>
            </div>
            <div class="col s12">
                <span id="spanSize">Address</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="input-field inline" id="fieldSpace">
                    <textarea id="icon_prefix2" class="materialize-textarea" required="true"></textarea>
                </div>
            </div>
            <div class="col s12">
                <span id="spanSize">Contact No.</span>
                <div class="input-field inline" id="fieldSpace">
                    <input id="icon_telephone" type="text" required="true" maxlength="10" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                </div>
            </div>
            <div class="col s12">
                <span id="spanSize">BloodGroup</span>
                <div class="input-field inline" id="fieldSpace">
                    <select>
                            <option value="" disabled selected>Blood Group</option>
                            <option value="1">A<sup>+</sup></option>
                            <option value="2">B<sup>+</sup></option>
                            <option value="3">O<sup>+</sup></option>
                        </select>
                </div>
            </div>
            <div id="saveBtn" class="right">
                <button class="btn waves-effect waves-light" type="submit" name="action">Save
                    <i class="material-icons right">send</i>
            </button>
            </div>

        </div>
    </div>
    <script src="js/index.js"></script>