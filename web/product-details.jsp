<!DOCTYPE html>
<%@include file="connect.jsp"%>
    <%  String branch=request.getParameter("captain");
        String subcategory=request.getParameter("subcaptain");
        String pid=request.getParameter("productID");
        String sql="select * from products where productQuantity>0 and productID='"+pid+"' ";
        String sql1="select * from products where productQuantity>0 and productBranch='"+branch+"' and productSubCategory='"+subcategory+"'  ";
        String sql2="select * from comments where productID='"+pid+"' ";
        String sql3="select count(*) as 'Count' from products where productQuantity>0 and  productID='"+pid+"' ";
        rs=st.executeQuery(sql);
        rs.first();
    %>
<script>
    var pid=<%=pid%>;
    var branch=getQueryVariable("captain");
    var subcategory=<%=subcategory%>;
</script>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="images/home/logo1.jpg"/>
    <title><%=rs.getString("productName")%> | StuDeals</title>
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
    
	<section>
            <div class="container">
                <div class="row">
                        <div class="col-sm-12 padding-right">
                                <div class="product-details"><!--product-details-->
                                        <div class="col-sm-3">
                                                <div class="view-product">
                                                        <img src="<%=rs.getString("productImage") %>" alt="" />
                                                        <a href="<%=rs.getString("productImage") %>"><h3>ZOOM</h3></a>
                                                </div>
                                        </div>
                                        <div class="col-sm-9 ">
                                            <div class="product-information pull-right" style="margin-right: 40px"><!--/product-information-->
                                                        <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                                        <h2><strong><%=rs.getString("productName") %></strong></h2>
                                                        <p>Web ID: <%=rs.getString("productID") %></p>
                                                        <img src="images/product-details/rating.png" alt="" />
                                                        <span>
                                                                <span>Rs.<%=rs.getString("productPrice") %></span>
                                                                <label>Quantity: <bold style="font-size:22px ;font-weight: 800">1</bold></label>
                                                                <a class="btn btn-fefault cart" href="addtocart.jsp?pid=<%=rs.getString("productID")%>&quantity=1">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                        Add to cart
                                                                </a>
                                                        </span>
                                                        <p><b>Availability:</b>
                                                        <%if(rs.getInt("productQuantity")>0){%>    
                                                            In Stock</p>
                                                        <% }else{ %>
                                                            <span style="font-weight:800;color:red">Out of Stock</span></p>

                                                        <% } %>
                                                        <p><b>Author:</b> <%=rs.getString("productDetail1") %></p>
                                                        <p><b>Publish Year:</b> <%=rs.getString("productDetail3") %></p>
                                                        <p><b>Publisher:</b> <%=rs.getString("productDetail2") %></p>
                                                        <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                                </div><!--/product-information-->
                                        </div>
                                </div><!--/product-details-->

                                <div class="recommended_items"><!--recommended_items-->
                                    <h2 class="title text-center">Recommended Items</h2>
                                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <%  String productID[]=new String[8];
                                                String productImage[]=new String[8];
                                                String productPrice[]=new String[8];
                                                String productName[]=new String[8];
                                                int j=0;
                                                rs1=st.executeQuery(sql1);
                                                while(rs1.next()){
                                                    productID[j]=rs1.getString("productID");
                                                    productImage[j]=rs1.getString("productImage");
                                                    productPrice[j]=rs1.getString("productPrice");
                                                    productName[j]=rs1.getString("productName");
                                                    if(j==7)break;
                                                    j++;
                                                }
                                                for(int k=0;k<j;k=k+4){
                                            %>  <div class="item <%if(k==0){ %> active <% } %>">	
                                                    <div class="col-sm-3">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div id="product-image" class="productinfo text-center">
                                                                                    <a href="product-details.jsp?captain=<%=branch%>&subcaptain=<%=subcategory%>&productID=<%=productID[k]%>">
                                                                                        <img src="<%=productImage[k] %>" alt="" />
                                                                                    </a>
                                                                                    <h2>Rs.<%=productPrice[k]%></h2>
                                                                                    <p><strong><%=productName[k] %></strong></p>
                                                                                    <a href="addtocart.jsp?pid=<%=productID[k]%>&quantity=1" class="btn btn-default add-to-cart">
                                                                                        <i class="fa fa-shopping-cart"></i>Add to cart
                                                                                    </a>
                                                                            </div>

                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <div class="product-image-wrapper">
                                                            <div class="single-products">
                                                                <div id="product-image" class="productinfo text-center">
                                                                    <a href="product-details.jsp?captain=<%=branch%>&subcaptain=<%=subcategory%>&productID=<%=productID[k+1]%>">
                                                                        <img src="<%=productImage[k+1] %>" alt="" />
                                                                    </a>
                                                                    <h2>Rs.<%=productPrice[k+1]%></h2>
                                                                    <p><strong><%=productName[k+1] %></strong></p>
                                                                    <a href="addtocart.jsp?pid=<%=productID[k+1]%>&quantity=1" class="btn btn-default add-to-cart">
                                                                        <i class="fa fa-shopping-cart"></i>Add to cart
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div id="product-image" class="productinfo text-center">
                                                                                    <a href="product-details.jsp?captain=<%=branch%>&subcaptain=<%=subcategory%>&productID=<%=productID[k+2]%>">
                                                                                        <img src="<%=productImage[k+2] %>" alt="" />
                                                                                    </a>
                                                                                    <h2>Rs.<%=productPrice[k+2]%></h2>
                                                                                    <p><strong><%=productName[k+2] %></strong></p>
                                                                                    <a href="addtocart.jsp?pid=<%=productID[k+2]%>&quantity=1" class="btn btn-default add-to-cart">
                                                                                        <i class="fa fa-shopping-cart"></i>Add to cart
                                                                                    </a>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div id="product-image" class="productinfo text-center">
                                                                                    <a href="product-details.jsp?captain=<%=branch%>&subcaptain=<%=subcategory%>&productID=<%=productID[k+3]%>">
                                                                                        <img src="<%=productImage[k+3] %>" alt="" />
                                                                                    </a>
                                                                                    <h2>Rs.<%=productPrice[k+3]%></h2>
                                                                                    <p><strong><%=productName[k+3] %></strong></p>
                                                                                    <a href="addtocart.jsp?pid=<%=productID[k+3]%>&quantity=1" class="btn btn-default add-to-cart">
                                                                                        <i class="fa fa-shopping-cart"></i>Add to cart
                                                                                    </a>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                    </div>
                                            </div>
                                            <% } %>
                                        </div>
                                        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                            <i class="fa fa-angle-right"></i>
                                        </a>			
                                    </div>
                                </div><!--/recommended_items-->

                                <div class="category-tab shop-details-tab"><!--category-tab-->
                                    <div class="col-sm-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="" data-toggle="tab"><i class="fa fa-reply">&nbsp;&nbsp;</i>Reviews</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="reviews" >
                                            <div class="col-sm-12">
                                                <form id="reviewform">
                                                    <span>
                                                        <input name="rname" type="text" placeholder="Your Name"/>
                                                        <input name="remail" type="email" placeholder="Email Address"/>
                                                    </span>
                                                    <textarea name="review" placeholder="Review"></textarea>
                                                    <b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
                                                    <button type="button" onclick="submitreview()" class="btn btn-default pull-right">
                                                        Submit
                                                    </button>
                                                    <div id="reviewinfo"></div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--/category-tab-->

                                <div class="category-tab shop-details-tab"><!--category-tab-->
                                        <div class="col-sm-12">
                                                <ul class="nav nav-tabs">
                                                    <li class="active"><a data-toggle="tab">
                                                            <i class="fa fa-comment ">&nbsp;&nbsp;</i>Comment Box</a>
                                                    </li>
                                                </ul>
                                      </div>
                                        <div class="tab-content">
                                                <div class="tab-pane fade active in" id="reviews" >
                                                        <div class="col-sm-12">
                                                            <div class="actionBox">
                                                                <ul class="commentList">
                                                                    <%  rs3=st.executeQuery(sql3);
                                                                        rs3.first();
                                                                        int n=Integer.parseInt(rs3.getString("Count"));
                                                                        if(n>0){
                                                                            rs2=st1.executeQuery(sql2);
                                                                            while(rs2.next()){ 
                                                                    %>
                                                                    <li>
                                                                        <div class="col-sm-4 commenterImage">
                                                                          <img src="images/home/profile2.png" class="img-rounded"  />
                                                                        </div>
                                                                        <div class="col-sm-8 commentText">
                                                                            <p class=""><%=rs2.getString("comment")%></p> 
                                                                            <span class="date sub-text">From <%=rs2.getString("userName")%>  <%=rs2.getString("userEmail")%> </span><br>
                                                                            <span class="date sub-text">On <%=rs2.getString("date")%></span>
                                                                        </div>
                                                                    </li><br>
                                                                    <%  }}else{ %>
                                                                            <h2 class="remember text-center" style="margin-bottom: 100px">Comments Not Found.</h2>
                                                                    <% } %>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                </div>

                                        </div>
                                </div><!--/category-tab-->
                        </div>
                </div>
            </div>
	</section>
    
	<footer id="footer"><!--Footer-->
            <jsp:include page="Home/footer.jsp"/>
        </footer><!--/Footer-->
</body>
</html>