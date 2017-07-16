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

    <div class="row" id="inquiry">
        <%
            String uname=request.getParameter("email");
            String pass=request.getParameter("password");
        %>

            Welcome,
            <%=uname %>
    </div>



    <%@include file='Footer.html' %>
        <script src="js/validateEmail.js"></script>