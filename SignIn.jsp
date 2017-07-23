<html>

<head>
    <title>People's Blood Bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Gentium+Basic" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<style>
    .left-bg {
        background: #c62828;
        height: 100%;
        color: #fff;
    }
    
    .head-left {
        display: flex;
        height: 100px;
        margin: 2%;
        margin-left: 8%;
    }
    
    .row {
        margin-bottom: 0% !important;
    }
    
    .right-bg {
        background: #263238;
        height: 100%;
    }
    
    .sign-in-panel {
        width: 70%;
        margin: auto;
        background: #263238;
        margin-top: 30%;
    }
    
    .register-btn {
        background: #263238;
    }
    
    .register-btn:hover {
        background: #E73D43;
    }
    
    .head-message {
        font-size: 1.6em;
        padding-top: 3%;
        padding-bottom: 3%;
    }
    
    .head-margin {
        margin: 1%;
    }
    
    .submit-button {
        padding-bottom: 4%;
    }
    
    .submit-btn {
        background: #fff;
        color: #263238;
    }
    
    .submit-btn:hover {
        background: #263238;
        color: #fff;
    }
    
    .left-content {
        margin-top: 15%;
        margin-left: 8%;
        margin-right: 8%;
    }
    
    a,
    p {
        color: #fff;
        font-weight: 300;
    }
    
    .left-content-head {
        font-size: 2em;
        font-weight: 400 !important;
    }
    
    .left-content-subhead {
        font-size: 1.2em;
    }
</style>

<body>
    <div class="row">
        <div class="col s7 left-bg">
            <div class="head-left">
                <div class="head-margin">
                    <img src="images/100x100.png" />
                </div>
                <div class="head-margin">
                    <h5>People's<br> Blood <br>Bank</h5>
                </div>
            </div>
            <div class="left-content">
                <a class="left-content-head">Welcome</a>
                <br><a class="left-content-subhead">Register for a new account here</a>
                <p>Register for the People's Blood Bank and give the Gift of Life</p>
                <button class="btn waves-effect waves-light register-btn" type="submit" name="action">Register</button>
            </div>
        </div>
        <div class="col s5 right-bg">
            <div class="sign-in-panel">
                <form>
                    <div class="head-message">
                        <a class="center">Login to your account</a>
                    </div>
                    <div class="login-content">
                        <input type="text" name="email" value="" placeholder="Enter Username">
                        <input type="text" name="password" value="" placeholder="Enter Password">
                    </div>
                    <div class="submit-button row">
                        <div class="col s6">
                            <button class="btn waves-effect waves-light submit-btn" type="submit" name="action">Submit</button></div>
                        <div class="col s6">
                            <a>Forgot Password</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>