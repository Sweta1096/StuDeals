<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title>Login | StuDeals</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script type="text/Javascript" src="call_jsp.js"></script>
    <script type="text/Javascript" src="ajax.js"></script>
    <script type="text/Javascript" src="js/jquery_showPassword.js"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    
</head><!--/head-->
<body>
    <header id="header"><!--header-->
        <div class="header_top"><!--header_top-->
            <jsp:include page="Home/header_top.jsp"/>   
        </div><!--/header_top-->

        <div class="header-middle"><!--header-middle-->
            <jsp:include page="Home/header_middle.jsp" />
        </div><!--/header-middle-->

        <div class="header-bottom"><!--header-bottom-->
            <jsp:include page="Home/header_bottom.jsp"/>
        </div><!--/header-bottom-->
    </header><!--/header-->
		
    <section id="form" style="margin-top: 50px"><!--form-->
        <div class="container">
                <div class="col-sm-4 col-sm-offset-1">
                    <div class="login-form"><!--login form-->
                        <h2>Login to your account</h2>
                        <form name="loginform" method="" action="" >
                            <input type="email" name="lemail"  required="true" placeholder="Email Address" />
                            <input type="password" class="password" name="lpassword" required="true" placeholder="Password" />
                            <span>
                                <input type="checkbox" id="showHide" class="checkbox"> 
                                    Show Password
                                <a style="float: right" href="forgotpass_html.jsp">Forgot Password</a>
                            </span>
                            <button type="button" onclick="login()" class="btn btn-default">Login</button>
                            <div id="logininfo"></div>
                        </form>
                    </div><!--/login form-->
                </div>
                <div class="col-sm-1 center-block">
                        <h2 class="or">OR</h2>
                </div>
                <div class="col-sm-4">
                    <div class="signup-form pull-right "><!--sign up form-->
                        <form action="signup_html.jsp">
                                <button type="submit"  class="btn btn-default">Want to Signup!!</button>
                        </form>
                    </div><!--/sign up form-->
                </div>
        </div>
    </section><!--/form-->
	
    <footer id="footer"><!--Footer-->
        <jsp:include page="Home/footer.jsp"/>
    </footer><!--/Footer-->
<script src="js/jquery_showPassword.js"></script>
</body>
</html>