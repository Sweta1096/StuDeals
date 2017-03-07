<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title>Cart | StuDeals</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
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
</head><!--/head-->

<body>
    <%@include file="connect.jsp" %>
    <%
        Integer uid=(Integer)session.getAttribute("uid");
        String sql="select * from cart where userID="+uid+"  ";
        String sql1="select count(*) as Count from cart where userID="+uid+"  ";
        rs=st.executeQuery(sql);
        rs1=st1.executeQuery(sql1);
        rs1.first();
        int n=rs1.getInt("Count");
        double shippingcost=0;
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
                              <li class="active">Shopping Cart</li>
                            </ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
                                            <%if(n>0){
                                                while(rs.next()){ 
                                                    if(rs.getInt("quantity")>0){
                                                        int pid=rs.getInt("productID");
                                                        String sql2="select * from products where productID="+pid+" ";
                                                        rs2=st2.executeQuery(sql2);
                                                        rs2.first();
                                            %>
						<tr>
							<td class="cart_product">
                                                            <a href="product-details.jsp?captain=<%=rs2.getString("productBranch")%>&subcaptain=<%=rs2.getString("productSubCategory")%>&productID=<%=rs2.getString("productID")%>">
                                                                <img src="<%=rs2.getString("productImage")%>" class="img-thumbnail" alt="">
                                                            </a>
							</td>
							<td class="cart_description">
								<h4>
                                                                    <a href="product-details.jsp?captain=<%=rs2.getString("productBranch")%>&subcaptain=<%=rs2.getString("productSubCategory")%>&productID=<%=rs2.getString("productID")%>">
                                                                        <%=rs2.getString("productName")%>
                                                                    </a>
                                                                </h4>
								<p>Web ID: <%=rs.getString("productID")%></p>
							</td>
                                                        <%
                                                            double price=rs2.getDouble("productPrice");
                                                            int quantity=rs.getInt("quantity");
                                                            double totalprice=(double)price*quantity;
                                                            shippingcost+=totalprice;
                                                        %>
							<td class="cart_price">
                                                            <p>Rs.<%=price%></p>
							</td>
							<td class="cart_quantity">
                                                            <div class="cart_quantity_button">
                                                                <a class="cart_quantity_up" href="addtocart.jsp?pid=<%=rs.getString("productID")%>&quantity=1"> + </a>
                                                                <div class="panel panel-primary cart_quantity_input">
                                                                    <div class="panel-body" style="margin-top: -14px"><%=rs.getInt("quantity")%></div>
                                                                </div>
                                                                <a class="cart_quantity_down" href="subtractfromcart.jsp?pid=<%=rs.getString("productID")%>&quantity=1"> - </a>
                                                            </div>
							</td>
							<td class="cart_total">
                                                            <p class="cart_total_price">Rs.<%=totalprice%></p>
							</td>
							<td class="cart_delete">
                                                            <a class="cart_quantity_delete" href="removefromcart.jsp?pid=<%=rs.getString("productID")%>&quantity=<%=rs.getInt("quantity")%>">
                                                                <i class="fa fa-times"></i>
                                                            </a>
							</td>
						</tr>
                                            <%  }}}else{ %>
                                                <tr class="mcon">
                                                    <td colspan="4"><h2 class="remember text-center">Cart is empty</h2></td>    
                                                </tr>
                                            <% } %>
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->
    <%if(n>0){%>
	<section id="do_action">
            <div class="container">
                <div class="row">
                    <div class="total_area pull-right" style="margin-right: 20px">
                        <ul>
                            <li>Cart Sub Total<span>Rs.<%=shippingcost%>0</span></li>
                            <li>Shipping Cost <span>Free</span></li>
                            <li>Total <span style="font-weight: 800;font-size: 16px;color:#3071a9">Rs.<%=shippingcost%>0</span></li>
                        </ul>
                        <a class="btn btn-default check_out" href="checkout1.jsp">Check Out</a>
                    </div>

                </div>
            </div>
	</section><!--/#do_action-->
    <%}%>
        <footer id="footer"><!--Footer-->
            <jsp:include page="Home/footer.jsp"/>
        </footer><!--/Footer-->
</body>
</html>