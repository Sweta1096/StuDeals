<%-- 
    Document   : slideshow
    Created on : Jan 6, 2017, 11:34:02 AM
    Author     : SHAIL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
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
</head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-12" style="margin-top: 50px;">
                    <div id="slider-carousel" class="carousel slide"  data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                            <li data-target="#slider-carousel" data-slide-to="3"></li>
                            <li data-target="#slider-carousel" data-slide-to="4"></li>
                            <li data-target="#slider-carousel" data-slide-to="5"></li>
                            <li data-target="#slider-carousel" data-slide-to="6"></li>
                        </ol>

                        <div class="carousel-inner"  >
                            <div class="item active">
                                <img src="images/slideshow/slide_1.jpg"   alt="" />
                            </div>
                            <div class="item">
                                <img src="images/slideshow/slide_2.jpg"   alt="" />
                            </div>
                            <div class="item">
                                <img src="images/slideshow/slide_3.jpg"   alt="" />
                            </div>
                            <div class="item">
                                <img src="images/slideshow/slide_4.jpg"   alt="" />
                            </div>
                            <div class="item">
                                <img src="images/slideshow/slide_5.jpg"   alt="" />
                            </div>
                            <div class="item">
                                <img src="images/slideshow/slide_6.jpg"   alt="" />
                            </div>
                            <div class="item">
                                <img src="images/slideshow/slide_7.jpg"   alt="" />
                            </div>
                        </div>

                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
