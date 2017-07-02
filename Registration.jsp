<%@include file='Header.html' %>
                    <ul class="side-nav" id="mobile-demo">
                        <li class="tab"><a href="index.jsp"><i class="material-icons">home</i>Home</a></li>
                        <li class="tab"><a href="aboutUs.jsp"><i class="material-icons">info</i>About Us</a></li>
                        <li class="tab"><a href="contactUs.jsp"><i class="material-icons">contact_mail</i>Contact Us</a></li>
                        <li class="tab"><a href="feedback.jsp"><i class="material-icons">comment</i>Feedback</a></li>
                        <li class="tab"><a href="inquiry.jsp"><i class="material-icons">info</i>Inquiry</a></li>
                    </ul>
                </div>
                <div class="nav-content">
                    <ul class="hide-on-med-and-down tabs tabs-transparent">
                        <li class="tab"><a href="index.jsp" target="_self">Home</a></li>
                        <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
                        <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
                        <li class="tab"><a href="feedback.jsp" target="_self">Feedback</a></li>
                        <li class="tab"><a href="inquiry.jsp" target="_self">Inquiry</a></li>
                    </ul>
                </div>
            </nav>
        </div>
            <!--NavBar Ends-->

            <div class="row" id="inquiry">
                <h3 id="loginAlign">Registration</h3>
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="icon_prefix" type="text" required="true" class="validate">
                        <label for="icon_prefix">Name</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">face</i>
                        <select>
                            <option value="" disabled selected>Gender</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Other</option>
                        </select>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">date_range</i>
                        <input type="date" class="datepicker" placeholder="BirthDate">
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mail</i>
                        <input id="email" type="email" required="true" class="validate">
                        <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">location_on</i>
                        <textarea id="icon_prefix2" class="materialize-textarea" required="true"></textarea>
                        <label for="icon_prefix2">Address</label>
                    </div>
                     <div class="input-field col s12">
                        <i class="material-icons prefix">phone</i>
                        <input id="icon_telephone" type="text" required="true" maxlength="10" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        <label for="icon_telephone">Mobile</label>
                    </div>
                     <div class="input-field col s12">
                        <i class="material-icons prefix">dialpad</i>
                        <input id="icon_telephone" type="text" maxlength="10" onkeypress="return event.charCode >= 48 && event.charCode <= 57">
                        <label for="icon_telephone">Telephone</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="prefix"><img src="images/bloodgroup.svg" class="bloodIcon"/></i>
                        <select>
                            <option value="" disabled selected>Blood Group</option>
                            <option value="1">A<sup>+</sup></option>
                            <option value="2">B<sup>+</sup></option>
                            <option value="3">O<sup>+</sup></option>
                        </select>
                    </div>
                </div>
                <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                    <i class="material-icons right">send</i>
                </button>
                <button class="btn waves-effect waves-light" id="resetBtn" type="reset">Reset
                    <i class="material-icons right">autorenew</i>
                </button>
            </form>
        </div>




<%@include file='Footer.html' %>
<script src="js/registration.js"></script>