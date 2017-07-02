<%@include file='Header.html' %>
    <ul class="side-nav" id="mobile-demo">
        <li class="tab"><a class="active" href="index.jsp"><i class="material-icons">home</i>Home</a></li>
        <li class="tab"><a href="aboutUs.jsp"><i class="material-icons">info</i>About Us</a></li>
        <li class="tab"><a href="contactUs.jsp"><i class="material-icons">contact_mail</i>Contact Us</a></li>
        <li class="tab"><a href="feedback.jsp"><i class="material-icons">comment</i>Feedback</a></li>
        <li class="tab"><a href="inquiry.jsp"><i class="material-icons">info</i>Inquiry</a></li>
    </ul>
    </div>
    <div class="nav-content">
        <ul class="hide-on-med-and-down tabs tabs-transparent">
            <li class="tab"><a class="active" href="index.jsp" target="_self">Home</a></li>
            <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
            <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
            <li class="tab"><a href="feedback.jsp" target="_self">Feedback</a></li>
            <li class="tab"><a href="inquiry.jsp" target="_self">Inquiry</a></li>
        </ul>
    </div>
    </nav>
    <!--NavBar Ends-->


    <!--Carousel Begin-->
    <div>
        <ul id="slides">
            <li class="slide showing"><img id="carouselImg" src="images/Q1.jpg"></li>
            <li class="slide"><img id="carouselImg" src="images/Q3.jpg"></li>
            <li class="slide"><img id="carouselImg" src="images/Q4.jpg"></li>
            <li class="slide"><img id="carouselImg" src="images/Q6.jpg"></li>
        </ul>
    </div>



    <%@include file='Footer.html' %>
        <script src="js/index.js"></script>