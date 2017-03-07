<%-- 
    Document   : checkout3
    Created on : Jan 6, 2017, 6:56:52 PM
    Author     : SHAIL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title>Checkout:Step-3 | StuDeals</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery.min.js"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
<body>
    <%@include file="connect.jsp" %>
    <%
        double totalCost=0;
        String userName="";
        String userEmail="";
        if(session.getAttribute("uid")!=null){
            Integer uid=(Integer)session.getAttribute("uid");
            String sql="select * from cart where userID="+uid+" ";
            rs=st.executeQuery(sql);
            while(rs.next()){
                int cid=rs.getInt("cartID");
                int quantity=rs.getInt("quantity");
                int pid=rs.getInt("productID");
                String sql1="select * from products where productID="+pid+" ";
                rs1=st1.executeQuery(sql1);
                rs1.first();
                totalCost+=(double)quantity*rs1.getDouble("productPrice");
            }
            String sql2="select * from user where userID="+uid+" ";
            rs2=st2.executeQuery(sql2);
            rs2.first();
            userName=rs2.getString("userName");
            userEmail=rs2.getString("userEmail");
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
                          <li><a href="checkout1.jsp">Check Out</a><span  style="color:#FE980F;margin-left: -2px">&#9658;</span></li>
                          <li class="active"> Review Shipping Details&#9658;</li>
                        </ol>
                </div><!--/breadcrums-->

                <div class="step-one">
                    <h2 class="heading">Step-3:</h2>
                </div>

                <div class="shopper-informations">
                        <div class="row">
                            <div class="col-sm-12 ">
                                    <div class="bill-to col-lg-offset-1">
                                        <p>Review Details</p>
                                        <div class="register-req"><%=userName%></div>
                                        <div class="register-req"><%=request.getParameter("mobile")%></div>
                                        <div class="register-req"><%=userEmail%></div>
                                        <div class="register-req"><%=request.getParameter("address")%></div>
                                        <div class="register-req">Total Amount: Rs. <%=totalCost%>0</div>
                                    </div>
                                    <a class="btn btn-primary pull-right"  style="margin-bottom: 20px" id="next" href="placeorder.jsp?mobile=<%=request.getParameter("mobile")%>&address=<%=request.getParameter("address")%>">
                                        Place Order
                                    </a>
                            </div>
                        </div>
                </div>

        </div>
    </section> <!--/#cart_items-->
        <footer id="footer"><!--Footer-->
            <jsp:include page="Home/footer.jsp"/>
        </footer><!--/Footer-->
    <%} else{
        response.sendRedirect("login_html.jsp");
    }%>
</body>
</html>
