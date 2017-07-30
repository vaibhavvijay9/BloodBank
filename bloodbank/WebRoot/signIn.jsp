<html>

<head>
    <title>People's Blood Bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Gentium+Basic" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="icon" href="images/16x16.png" type="image/gif" sizes="16x16">
</head>

<body>
    <nav class="sign-in-nav">
        <div class="nav-wrapper">
            <ul class="right hide-on-med-and-down">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="aboutUs.jsp">About Us</a></li>
                <li><a href="contactUs.jsp">Contact Us</a></li>
                <li><a href="inquiry.jsp">Inquiry</a></li>
                <li><a href="faq.jsp">FAQ</a></li>
            </ul>
        </div>
    </nav>
    <div>
        <div class="row">
            <div class="col s7 left-bg-signin">
                <div class="head-left">
                    <div class="head-margin">
                        <img src="images/100x100.png" />
                    </div>
                    <div class="head-margin">
                        <h5>People's<br> Blood <br>Bank</h5>
                    </div>
                </div>
                <div class="left-content">
                    <a class="left-content-head ">Welcome</a>
                    <br><a class="left-content-subhead content-weight">Register for a new account here</a>
                    <p class="content-weight">Register for the People's Blood Bank and give the Gift of Life</p>
                    <a href="registration.jsp" class="btn waves-effect waves-light register-btn">Register</a>
                </div>
            </div>
            <div class="col s5 right-bg">
                <div class="sign-in-panel">
                    <form action="loginDone.jsp" method="post">
                        <div class="head-message">
                            <a class="center content-weight">Login to your account</a>
                        </div>
                        <div class="login-content">
                            <input id="email1" type="email" name="email" placeholder="Enter Username" required>
                            <a id="errorMessage" class="right"></a>
                            <input type="password" name="password" placeholder="Enter Password" required>
                            <%
						       if(null!=request.getAttribute("signInMessage"))
						       {
						    %>
						       <a id="errorMessage"><%=request.getAttribute("signInMessage")%></a>
						    <%
							   }
						    %>
						    
						    <%
						       if(null!=request.getAttribute("forgotExistsMessage"))
						       {
						       		//here call the forgotpwd class function js
						       		//OR auto click the link--Forgot Password
						    %>
						    <script>
						    	$(document).ready(function(){
						    		$(".forgot-link").trigger('click');
						    	});
						    	//document.getElementsByClassName(".forgot-link")[0].click();
						    	//$('.forgot-link').trigger('click');
						    	//document.getElementById("#forgotPassword").click();​
						    </script>
						    <%
							   }
						    %>
                        </div>
                        <div class="submit-button row">
                            <div class="col s6">
                                <button class="btn waves-effect waves-light submit-btn" type="submit">Login</button></div>
                            <div class="col s6">
                                <a id="forgotPassword" class="content-weight forgot-link">Forgot Password ?</a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="forgot-password-panel">
                    <form action="forgotProcessing.jsp" method="post">
                        <div class="head-message">
                            <a class="center content-weight">Enter Username</a>
                        </div>
                        <div class="login-content">
                            <input id="email2" type="email" name="email" placeholder="Enter Email Address" required>
                            <a id="errorMessage1" class="right"></a>
                            <%
						       if(null!=request.getAttribute("forgotExistsMessage"))
						       {
						    %>
						       <a id="errorMessage"><%=request.getAttribute("forgotExistsMessage")%></a>
						    <%
							   }
						    %>
                        </div>
                        <div class="submit-button row">
                            <div class="col s6">
                                <button class="btn waves-effect waves-light submit-btn" type="submit">Submit</button></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/index.js"></script>

</body>

</html>