<%@include file='Header.html' %>
    <div class="nav-content">
        <ul class="hide-on-med-and-down tabs tabs-transparent">
            <li class="tab"><a href="index.jsp" target="_self">Home</a></li>
            <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
            <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
            <li class="tab"><a href="inquiry.jsp" target="_self">Inquiry</a></li>
        </ul>
    </div>
    </nav>
    </div>
    </div>
    <!--NavBar Ends-->
    <div class="row" id="inquiry">
        <h4>Forgot Passsword</h4>
        <form class="col s12" action="#" onsubmit="return ValidateEmail()">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">mail</i>
                    <input id="email1" type="text" name="email">
                    <label for="email">Email (Username)</label>
                    <a id="errorMessage" class="right"></a>
                </div>
            </div>
            <button class="btn waves-effect waves-light right" type="submit">Submit
                    <i class="material-icons right">send</i>
                </button>
        </form>
    </div>




    <%@include file='Footer.html' %>
        <script src="js/index.js"></script>