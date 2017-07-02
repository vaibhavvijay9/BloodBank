<%@include file='Header.html' %>
    <ul class="side-nav" id="mobile-demo">
        <li class="tab"><a href="index.jsp"><i class="material-icons">home</i>Home</a></li>
        <li class="tab"><a href="aboutUs.jsp"><i class="material-icons">info</i>About Us</a></li>
        <li class="tab"><a href="contactUs.jsp"><i class="material-icons">contact_mail</i>Contact Us</a></li>
        <li class="tab"><a class="active" href="inquiry.jsp"><i class="material-icons">info</i>Inquiry</a></li>
        <li class="tab"><a href="faq.jsp"><i class="material-icons">question_answer</i>FAQ</a></li>
    </ul>
    </div>
    <div class="nav-content">
        <ul class="hide-on-med-and-down tabs tabs-transparent">
            <li class="tab"><a href="index.jsp" target="_self">Home</a></li>
            <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
            <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
            <li class="tab"><a class="active" href="inquiry.jsp" target="_self">Inquiry</a></li>
            <li class="tab"><a href="faq.jsp" target="_self">FAQ</a></li>
        </ul>
    </div>
    </nav>
    </div>
    <!--NavBar Ends-->

    <div class="row" id="inquiry">
        <form class="col s12">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="icon_prefix" type="text" required="true" class="validate">
                    <label for="icon_prefix">Name</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">mail</i>
                    <input id="email" type="email" name="email" required="true" class="validate">
                    <label for="email">Email</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">phone</i>
                    <input id="icon_telephone" type="text" required="true" maxlength="10" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    <label for="icon_telephone">Telephone</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">chat</i>
                    <textarea id="icon_prefix2" class="materialize-textarea" required="true"></textarea>
                    <label for="icon_prefix2">Message</label>
                </div>
            </div>
            <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                </button>
        </form>
    </div>



    <%@include file='Footer.html' %>
        <script src="js/validateEmail.js"></script>