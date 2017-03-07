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
</head><!--/head-->

<body>
    <%@include file="connect.jsp" %>
    <%
        Integer uid=(Integer)session.getAttribute("uid");
        String sql="Select * from orders where userID="+uid+" ORDER BY `orders`.`orderID` DESC ";
        String sql1="select count(*) as Count from orders where userID="+uid+"  ";
        rs=st.executeQuery(sql);
        rs1=st1.executeQuery(sql1);
        rs1.first();
        int n=rs1.getInt("Count");
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
                          <li class="active">Orders</li>
                        </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                    <td class="image ">Item</td>
                                    <td class="description"></td>
                                    <td class="price">Mobile No.</td>
                                    <td class="price">Address</td>
                                    <td class="price">Date</td>
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
                                        String address=rs.getString("address");
                                        String add[]=address.split(",");
                                        String sql2="select * from products where productID="+pid+" ";
                                        rs2=st2.executeQuery(sql2);
                                        rs2.first();
                            %>
                            <tr>
                                <td class="cart_product">
                                    <a href=""><img src="<%=rs2.getString("productImage")%>" alt=""></a>
                                </td>
                                <td class="cart_description">
                                    <h4><a href=""><%=rs2.getString("productName")%></a></h4>
                                    <p>Web ID: <%=pid%></p>
                                </td>
                                <td class="cart_price">
                                    <p><%=rs.getString("mobile_no")%></p>
                                </td>
                                <td class="cart_price">
                                    <p><%=add[0]%><br><%=add[1]%><br><%=add[2]%><%=add[3]%></p>
                                </td>
                                <td class="cart_price">
                                    <p><%=rs.getString("date")%></p>
                                </td>
                                <td class="cart_quantity">
                                    <h4>
                                        <%=rs.getInt("quantity")%>
                                    </h4>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">Rs. <%=rs.getDouble("productCost")%></p>
                                </td>
                            </tr>
                            <%  }}}else{ %>
                                <tr class="mcon">
                                    <td colspan="4"><h2 class="remember text-center">You have not order anything</h2></td>    
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
	</section> <!--/#cart_items-->
        
        <footer id="footer"><!--Footer-->
            <jsp:include page="Home/footer.jsp"/>
        </footer><!--/Footer-->
    </body>
</html>
        
        