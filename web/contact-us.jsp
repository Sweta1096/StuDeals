<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title>Contact | StuDeals</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <script type="text/Javascript" src="call_jsp.js"></script>
    <script type="text/Javascript" src="ajax.js"></script>
    <script type="text/Javascript" src="js/jquery_showPassword.js"></script>
    	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
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
    
    <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">    		
                <div class="col-sm-12">    			   			
                    <h2 class="title text-center">Contact <strong>Us</strong></h2>    			    				    				
                    <div id="gmap" class="contact-map"></div>
                </div>			 		
            </div>    	
            <div class="row" style="margin-bottom: 10px">  	
                <div class="col-sm-8">
                        <div class="contact-form">
                                <h2 class="title text-center">Get In Touch</h2>
                                <div class="status alert alert-success" style="display: none"></div>
                                <form id="main-contact-form" class="contact-form row" name="contact_form" method="post">
                                    <%if(session.getAttribute("uid")==null){%>
                                    <div class="form-group col-md-6">
                                        <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                                    </div>
                                    <%}%>
                                    <div class="form-group col-md-12">
                                        <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
                                    </div>                        
                                    <div id="contactinfo"></div>
                                    <div class="form-group col-md-12">
                                        <button type="button" onclick="contact_review()" class="btn btn-primary pull-right">Submit</button>
                                    </div>
                                </form>
                        </div>
                </div>
                <div class="col-sm-4">
                        <div class="contact-info">
                                <h2 class="title text-center">Contact Info</h2>
                                <address>
                                    <p style="font-size: 25px; font-weight: 600">StuDeals </p>
                                    <p style=" margin-top: 20px; font-size: 20px">Shailendra Kumar Verma</p>
                                    <p style="margin-top: 5px">BTech CS 3rd Year</p>
                                    <p>United College of Engineering Research</p>
                                    <p>Allahabad Uttar Pradesh</p>
                                    <p>Mobile: +91 88 53 61 62 24</p>
                                    <p>Email: shailv06@gmail.com</p>
                                </address>
                                <div class="social-networks">
                                    <h2 class="title text-center">Social Networking</h2>
                                        <ul>
                                            <li>
                                                <a href="facebook.com"><i class="fa fa-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="twitter.com"><i class="fa fa-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="gmail.com"><i class="fa fa-google-plus"></i></a>
                                            </li>
                                            <li>
                                                <a href="youtube.com"><i class="fa fa-youtube"></i></a>
                                            </li>
                                        </ul>
                                </div>
                        </div>
                </div>    			
            </div>  
        </div>	
    </div><!--/#contact-page-->
	
    <footer id="footer"><!--Footer-->
        <jsp:include page="Home/footer.jsp"/>
    </footer><!--/Footer-->

</body>
</html>