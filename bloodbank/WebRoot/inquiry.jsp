<%@include file='Header.html' %>
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
    </div>
    <!--NavBar Ends-->

    <%
       if(null!=request.getAttribute("inquiryMessage"))
       {
    %>
        <div class="success-message">
            <%=request.getAttribute("inquiryMessage")%>
        </div>
        <%
	   }
    %>
            <div class="row" id="inquiry">
                <form class="col s12" action="inquiryDone.jsp" method="post" onsubmit="return ValidateEmail()">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="icon_prefix" type="text" name="name" required>
                            <label for="icon_prefix">Name</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">mail</i>
                            <input id="email1" type="email" name="email" required>
                            <label for="email1">Email</label>
                            <a id="errorMessage" class="right"></a>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">phone</i>
                            <input id="icon_telephone" type="text" name="phone" minlength="10" maxlength="10" required onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                            <label for="icon_telephone">Telephone</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">chat</i>
                            <textarea id="icon_prefix2" name="message" class="materialize-textarea" maxlength="350" data-length="350" required></textarea>
                            <label for="icon_prefix2">Message</label>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit">Submit
                    <i class="material-icons right">send</i>
            </button>
                </form>
            </div>

            <%@include file='Footer.html' %>
                <script src="js/index.js"></script>