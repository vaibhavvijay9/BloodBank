<%@include file='Header.html' %>
                    <ul class="side-nav" id="mobile-demo">
                        <li class="tab"><a href="index.jsp"><i class="material-icons">home</i>Home</a></li>
                        <li class="tab"><a href="aboutUs.jsp"><i class="material-icons">info</i>About Us</a></li>
                        <li class="tab"><a href="contactUs.jsp"><i class="material-icons">contact_mail</i>Contact Us</a></li>
                        <li class="tab"><a class="active" href="feedback.jsp"><i class="material-icons">comment</i>Feedback</a></li>
                        <li class="tab"><a href="inquiry.jsp"><i class="material-icons">info</i>Inquiry</a></li>
                    </ul>
                </div>
                <div class="nav-content">
                    <ul class="hide-on-med-and-down tabs tabs-transparent">
                        <li class="tab"><a href="index.jsp" target="_self">Home</a></li>
                        <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
                        <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
                        <li class="tab"><a class="active" href="feedback.jsp" target="_self">Feedback</a></li>
                        <li class="tab"><a href="inquiry.jsp" target="_self">Inquiry</a></li>
                    </ul>
                </div>
            </nav>
        </div>
            <!--NavBar Ends-->

        <div class="row" id="feedback">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="icon_prefix" type="text" required="true" class="validate">
                        <label for="icon_prefix">Name</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mail</i>
                        <input id="email" type="email" required="true" class="validate">
                        <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="icon_prefix2" class="materialize-textarea" required="true"></textarea>
                        <label for="icon_prefix2">Feedback</label>
                    </div>
                    <button class="btn waves-effect waves-light" id="feedbackBtn" type="submit" name="action">Submit
                        <i class="material-icons right">send</i>
                    </button>
                </div>
            </form>
        </div>

<%@include file='Footer.html' %>