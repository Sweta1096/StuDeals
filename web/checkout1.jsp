<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title>Checkout:Step-1 | StuDeals</title>
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
        
        function openPage(){
            var radio=document.getElementsByName("add");
            var address;
            for(var i=0;i<radio.length;i++){
                if(radio[i].checked)
                    address=radio[i].value;
            }
                var url="checkout2.jsp?address="+address;
                location.href=url;
        }
    </script>
</head><!--/head-->

<body>
    <%@include file="connect.jsp" %>
    <%
        Integer uid=(Integer)session.getAttribute("uid");
        String sql="Select * from address_id where userID="+uid+" ";
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
			</div><!--/breadcrumbs-->
                        
                        <div class="step-one">
                            <h2 class="heading">Step-1:</h2>
			</div>
			
			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-12 pull-right ">
						<div class="bill-to col-lg-offset-1">
							<p>New Shipping Address</p>
                                                        <div class="radio"  name="radio_add">
                                                            <%
                                                                while(rs.next()){
                                                                    String address=rs.getString("address");
                                                                    String add[]=address.split(",");
                                                            %>
                                                            <label>
                                                                <input class="nondisplay" name="add" type="radio" value="<%=address%>, Pin: <%=rs.getInt("pincode")%>" >
                                                                <div class="panel panel-primary"  style="max-width: 300px">
                                                                    <div class="panel-body"><%=add[0]%><br><%=add[1]%><br> <%=add[2]%>&nbsp;&nbsp;&nbsp; Pin : <%=rs.getInt("pincode")%></div>
                                                                </div>
                                                            </label>
                                                        <% } %>
                                                        </div>
							<div class="form-one pull-right" id="display" >
                                                            <p>Enter the new address</p>
								<form name="addform">  
									<input name="house" type="text"  required="true" placeholder="House No. *">
									<input name="street" type="text" required="true" placeholder="Town *">
									<input name="city" type="text" required="true" placeholder="City *">
                                                                        <input name="pincode" type="text" required="true" placeholder="Zip / Postal Code *">
									<select name="country" required="true">
                                                                            <option value="India" selected="selected">India</option>
                                                                            <option value="United States">United States</option>
                                                                            <option value="Bangladesh">Bangladesh</option>
                                                                            <option value="UK">UK</option>
                                                                            <option value="Pakistan">Pakistan</option>
                                                                            <option value="Ucrane">Ucrane</option>
                                                                            <option value="Canada">Canada</option>
                                                                            <option value="Dubai">Dubai</option>
									</select>&nbsp;
									<select name="state" required="true">
										<option value="Uttar Pradesh" selected="selected">Uttar Pradesh</option>
										<option value="Varanasi">Varanasi</option>
										<option value="Delhi NCR" >Delhi NCR</option>
										<option value="Lucknow">Lucknow</option>
										<option value="Patna">Patna</option>
										<option value="Chandigarh">Chandigarh</option>
										<option value="Bhopal">Bhopal</option>
										<option value="Mumbai">Mumbai</option>
									</select>
                                                                        <a class="btn btn-primary" style="margin-bottom: 20px" onclick="addaddress()">Add to Address List</a>
                                                                        <div id="addinfo"></div>
								</form >
							</div>
                                                        <a class="btn btn-primary"  style="display: none;margin-bottom: 20px" id="next" style="margin-bottom: 20px" onclick="openPage()">Next</a>
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