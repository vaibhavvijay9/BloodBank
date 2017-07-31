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
                    <li class="hide-on-med-and-down"><a href="signOut.jsp"><i class="fa fa-sign-out"></i>&nbsp;&nbsp;Sign Out</a></li>
                </ul>
                <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>

        </div>
		<!-- topNav ends -->
		
		<!-- sideNav begins (small code email and username)-->
		
		<jsp:useBean id="header" class="bloodbank.Profile">
		</jsp:useBean>
		<%
			String username=(String)session.getAttribute("username");
			header.viewProfile(username);
		 %>
        <ul id="slide-out" class="side-nav fixed">
            <li>
                <div class="user-view">
                    <div class="background">
                        <img src="../images/cover.jpg">
                    </div>

                    <span id="profilePic"><%=header.getName().charAt(0) %></span>
                    <span class="white-text name"><%=header.getName() %></span>
                    <span class="white-text email"><%=header.getEmail() %></span>
                </div>
            </li>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="registration.jsp">Register User</a></li>
            <li><a href="registerCamp.jsp">Register/Manage Camp</a></li>
            <li><a href="manageStock.jsp">Manage Stock</a></li>
            <li><a href="manageAppointments.jsp">Manage Appointments/Donations</a></li>
            <li><a href="manageRequests.jsp">Manage Requests</a></li>
            <li><a href="manageInquiry.jsp">Manage Inquiry</a></li>
            <li><a href="manageFeedback.jsp">Manage Feedback</a></li>
            <li><a href="userStories.jsp">User Stories</a></li>
            <li><a href="changePassword.jsp">Change Password</a></li>
            <li class="hide1"><a href="signOut.jsp">Sign Out</a></li>
        </ul>
    </nav>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
    <script src="js/index.js"></script>

</body>

</html>