<%@include file='Header.html' %>
    <ul class="side-nav" id="mobile-demo">
        <li class="tab"><a href="index.jsp"><i class="material-icons">home</i>Home</a></li>
        <li class="tab"><a href="aboutUs.jsp"><i class="material-icons">info</i>About Us</a></li>
        <li class="tab"><a href="contactUs.jsp"><i class="material-icons">contact_mail</i>Contact Us</a></li>
        <li class="tab"><a href="inquiry.jsp"><i class="material-icons">info</i>Inquiry</a></li>
        <li class="tab"><a href="faq.jsp"><i class="material-icons">question_answer</i>FAQ</a></li>
    </ul>
    </div>
    <div class="nav-content">
        <ul class="hide-on-med-and-down tabs tabs-transparent">
            <li class="tab"><a href="index.jsp" target="_self">Home</a></li>
            <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
            <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
            <li class="tab"><a href="inquiry.jsp" target="_self">Inquiry</a></li>
            <li class="tab"><a href="faq.jsp" target="_self">FAQ</a></li>
        </ul>
    </div>
    </nav>
    </div>
    <!--NavBar Ends-->

    <!-- Modal Structure -->
    <div id="modal1" class="modal">
        <div class="modal-content">
            <div id="profile"><img src="images/account_login.png" id="userProfile" /></div>
            <br>
            <h5 id="loginAlign">Sign in</h5>
            <div class="row">
                <form class="col s12" name="myForm" onsubmit="return validate()">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">mail</i>
                            <input id="email" type="email" name="email" required="true" class="validate">
                            <label for="email">Email</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock_open</i>
                            <input id="password" type="password" name="password" required="true" class="validate">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div>
                        <span><a href="Registration.jsp">Create Account</a></span>
                        <span id="modalFoot"><button type="submit" class="modal-action waves-effect waves-green btn-flat">NEXT</button></span>
                    </div>
                </form>
            </div>
        </div>
    </div>

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