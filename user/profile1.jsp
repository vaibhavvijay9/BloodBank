<%@include file="userHeader.html" %>
    <main>
        <div id="userContent">

            <a class="right" href="editProfile.jsp"><i class="material-icons prefix">mode_edit</i>Edit</a>
            <h4 class="center">Profile</h4>
            <div class="row" id="userContentads">
                <div class="input-field col s8">
                    <input id="name" type="text" value="Vaibhav Vijay" readonly>
                    <label for="name">Name</label>
                </div>
                <div class="input-field col s8">
                    <input id="gender" type="text" value="Male" readonly>
                    <label for="gender">Gender</label>
                </div>
                <div class="input-field col s8">
                    <input id="birthdate" type="text" value="09/05/1997" class="validate">
                    <label for="birthdate">BirthDate</label>
                </div>
                <div class="input-field col s8">
                    <input id="email" type="text" value="vaibhavvijay9@gmail.com" readonly>
                    <label for="email">Email</label>
                </div>
                <div class="input-field col s8">
                    <textarea id="address" class="materialize-textarea" readonly>95,Adarsh Nagar</textarea>
                    <label for="address">Address</label>
                </div>
                <div class="input-field col s8">
                    <input id="contact" type="text" value="8104410875" readonly>
                    <label for="contact">Contact</label>
                </div>
                <div class="input-field col s8">
                    <input id="bloodgroup" type="text" value="AB+" readonly>
                    <label for="bloodgroup">BloodGroup</label>
                </div>
            </div>

        </div>
    </main>