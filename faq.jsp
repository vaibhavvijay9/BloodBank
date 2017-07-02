<%@include file='Header.html' %>
    <ul class="side-nav" id="mobile-demo">
        <li class="tab"><a href="index.jsp"><i class="material-icons">home</i>Home</a></li>
        <li class="tab"><a href="aboutUs.jsp"><i class="material-icons">info</i>About Us</a></li>
        <li class="tab"><a href="contactUs.jsp"><i class="material-icons">contact_mail</i>Contact Us</a></li>
        <li class="tab"><a href="feedback.jsp"><i class="material-icons">comment</i>Feedback</a></li>
        <li class="tab"><a class="active" href="inquiry.jsp"><i class="material-icons">info</i>Inquiry</a></li>
    </ul>
    </div>
    <div class="nav-content">
        <ul class="hide-on-med-and-down tabs tabs-transparent">
            <li class="tab"><a href="index.jsp" target="_self">Home</a></li>
            <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
            <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
            <li class="tab"><a href="feedback.jsp" target="_self">Feedback</a></li>
            <li class="tab"><a class="active" href="inquiry.jsp" target="_self">Inquiry</a></li>
        </ul>
    </div>
    </nav>
    </div>
    <!--NavBar Ends-->

    <br><br>
    <div class="container">
        <b>Frequently Asked Questions about Blood Donation</b>
        <br><br>
        <ul class="collapsible popout" data-collapsible="accordion">
            <li>
                <div class="collapsible-header iconColor" id="faqColor"><i class="material-icons">favorite</i>First</div>
                <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
            </li>
            <li>
                <div class="collapsible-header iconColor" id="faqColor"><i class="material-icons">favorite</i>Second</div>
                <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
            </li>
            <li>
                <div class="collapsible-header iconColor" id="faqColor"><i class="material-icons">favorite</i>Third</div>
                <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
            </li>
        </ul>
    </div>


    <%@include file='Footer.html' %>
        <script src="js/validateEmail.js"></script>