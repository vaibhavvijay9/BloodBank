<html>
<head>
    <title>People's Blood Bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' type='text/css' href='css/style.css'>
    <link rel="icon" href="../images/16x16.png" type="image/gif" sizes="16x16">
</head>

<body>
    <nav class="nav-extended navWidth">
        <div class="nav-wrapper">
            <div id="imgAlign">
                <img src="../images/100x100.png">
                <a class="brand-logo hide-on-med-and-down">People's Blood Bank</a>
                <ul class="right">
                    <li><a href="sass.html" class="hide-on-med-and-down"><i class="fa fa-sign-out"></i>&nbsp;&nbsp;Sign Out</a></li>
                </ul>
                <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </div>
		<!-- topNav ends -->
		
		<!-- sideNav begins (small code email and username)-->
		
		<jsp:useBean id="obj" class="user.Profile">
		</jsp:useBean>
		<%
			String username=(String)session.getAttribute("username");
			obj.viewProfile(username);
		 %>
        <ul id="slide-out" class="side-nav fixed">
            <li>
                <div class="user-view">
                    <div class="background">
                        <img src="../images/cover.jpg">
                    </div>

                    <span id="profilePic"><%=obj.getName().charAt(0) %></span>
                    <span class="white-text name"><%=obj.getName() %></span>
                    <span class="white-text email"><%=obj.getEmail() %></span>
                </div>
            </li>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="fixAppointment.jsp">Fix Appointment</a></li>
            <li><a href="registerForCamp.jsp">Register For Camp</a></li>
            <li><a href="donationDetails.jsp">Donation Details</a></li>
            <li><a href="requestBlood.jsp">Request Blood</a></li>
            <li><a href="yourStory.jsp">Write Your Story</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="changePassword.jsp">Change Password</a></li>
            <li class="hide1"><a href="sass.html">Sign Out</a></li>
        </ul>
    </nav>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
    <script src="js/index.js"></script>

</body>

</html>