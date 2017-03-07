<%-- 
    Document   : checkout2
    Created on : Jan 6, 2017, 6:07:02 PM
    Author     : SHAIL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title>Checkout:Step-2 | StuDeals</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery.min.js"></script>
    <script type="text/Javascript" src="call_jsp.js"></script>
    <script type="text/Javascript" src="ajax.js"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <script type="text/javascript">
        $(document).ready(function(){
            $(".nondisplay").click(function(){
                $("#display").hide();
                $("#next").show();
            });
            $("#new_add").click(function(){
                $("#display").fadeIn(2000);
                $("#next").hide();
            });
        });
        
        function openPage2(){
            var mob;
            var address= getAllUrlParams(window.location.href).address;
            var radio=document.getElementsByName("radio_mobile");
            for(var i=0;i<radio.length;i++){
                if(radio[i].checked)
                    mob=radio[i].value;
            }
            var url="checkout3.jsp?&mobile="+mob+"&address="+address;
            location.href=url;
//            alert(url);
        }
    </script>
    </head>
    <body>
        <%@include file="connect.jsp" %>
        <%
            Integer uid=(Integer)session.getAttribute("uid");
            String sql="Select * from mobile_id where userID="+uid+" ";
            rs=st.executeQuery(sql);
        %>
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
        <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="index.jsp">Home</a></li>
				  <li class="active">Check Out&#9658;</li>
				</ol>
			</div><!--/breadcrums-->
                        
                        <div class="step-one">
                            <h2 class="heading">Step-2:</h2>
			</div>
			
			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-12 ">
						<div class="bill-to col-lg-offset-1">
							<p>Mobile Number</p>
                                                        <div class="radio">
                                                            <% while(rs.next()){ %>
                                                            <label>
                                                                <input class="nondisplay" type="radio" name="radio_mobile" value="<%=rs.getBigDecimal("mobile_no")%>">
                                                                    <div class="panel panel-primary"  style="max-width: 300px">
                                                                    <div class="panel-body"><%=rs.getBigDecimal("mobile_no")%></div>
                                                                </div>
                                                            </label>
                                                            <% } %>
                                                        </div>
                                                        <div class="form-one pull-right" id="display" >
								<form id="mobileform">  
									<input type="text" name="mobile" placeholder="Mobile No. *">
									<a class="btn btn-primary" style="margin-bottom: 20px" onclick="addmobile()" >Add to your List</a>
								</form>
                                                                <div id="mobileinfo"></div>
							</div>
                                                        <a class="btn btn-primary" id="next" style="display: none; margin-bottom: 20px" onclick="openPage2()">
                                                            Next
                                                        </a>
                                                </div>    
					</div>
										
				</div>
			</div>
			
		</div>
	</section> <!--/#cart_items-->

        <footer id="footer"><!--Footer-->
            <jsp:include page="Home/footer.jsp"/>
        </footer><!--/Footer-->
    </body>
</html>
