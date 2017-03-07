<%-- 
    Document   : content
    Created on : Jan 6, 2017, 11:43:08 AM
    Author     : SHAIL-PC
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@include file="../connect.jsp"%>
        <%  int i=1,n=0,m=4;
            String sql="select count(*) as 'Count' from products where productDetail4='Featured' and productQuantity>0";
            String sql1="select * from products where productDetail4='Featured' and productQuantity>0";
            rs=st.executeQuery(sql);
            rs.first();
            n=Integer.parseInt(rs.getString("Count"));
            m=n-n%4;
            rs1=st.executeQuery(sql1);
        %>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Featured Items</h2>
                        <% while(rs1.next()){ 
                            if(i<=m){ %>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div  class="productinfo text-center" >
                                        <img class="img-thumbnail img-rounded" src="<%=rs1.getString("productImage")%>" alt="" />
                                        <h2>Rs.<%=rs1.getString("productPrice") %></h2>
                                        <p><strong><%=rs1.getString("productName") %></strong></p>
                                        <a href="addtocart.jsp?pid=<%=rs1.getString("productID")%>&quantity=1" class="btn btn-default add-to-cart">
                                            <i class="fa fa-shopping-cart"></i>Add to cart
                                        </a>
                                    </div>
                                    <div class="product-overlay">
                                        <div class="overlay-content">
                                            <a href="product-details.jsp?captain=<%=rs1.getString("productBranch")%>&subcaptain=<%=rs1.getString("productSubCategory")%>&productID=<%=rs1.getString("productID")%>">
                                                <h2>Rs.<%=rs1.getString("productPrice") %></h2>
                                                <p><%=rs1.getString("productName") %></p>
                                                <a href="addtocart.jsp?pid=<%=rs1.getString("productID")%>&quantity=1" class="btn btn-default add-to-cart">
                                                    <i class="fa fa-shopping-cart"></i>Add to cart
                                                </a>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="choose">
                                    <ul class="nav nav-pills nav-justified">
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <% }
                            i++;
                        } %>
                    </div><!--features_items-->

                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">Recommended Items</h2>
                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <%  String productBranch[]=new String[8];
                                    String productSubCategory[]=new String[8];
                                    String productImage[]=new String[8];
                                    String productID[]=new String[8];
                                    String productPrice[]=new String[8];
                                    String productName[]=new String[8];
                                    int j=0;
                                    rs2=st.executeQuery(sql1);
                                    while(rs2.next()){
                                        productBranch[j]=rs2.getString("productBranch");
                                        productSubCategory[j]=rs2.getString("productSubCategory");
                                        productID[j]=rs2.getString("productID");
                                        productImage[j]=rs2.getString("productImage");
                                        productPrice[j]=rs2.getString("productPrice");
                                        productName[j]=rs2.getString("productName");
                                        if(j==7)break;
                                        j++;
                                    }
                                    for(int k=0;k<j;k=k+4){
                                %><div class="item <%if(k==0){ %> active <% } %>">	
                                        <div class="col-sm-3">
                                                <div class="product-image-wrapper">
                                                        <div class="single-products">
                                                                <div id="product-image" class="productinfo text-center">
                                                                        <a href="product-details.jsp?captain=<%=productImage[k]%>&subcaptain=<%=productSubCategory[k]%>&productID=<%=productID[k]%>">
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
                                                                        <a href="product-details.jsp?captain=<%=productImage[k+1]%>&subcaptain=<%=productSubCategory[k+1]%>&productID=<%=productID[k+1]%>">
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
                                                                        <a href="product-details.jsp?captain=<%=productImage[k+2]%>&subcaptain=<%=productSubCategory[k+2]%>&productID=<%=productID[k+2]%>">
                                                                            <img src="<%=productImage[k+2] %>" alt="" />
                                                                        </a>
                                                                        <h2>Rs.<%=productPrice[k+2] %></h2>
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
                                                                <div id="product-image"  class="productinfo text-center">
                                                                        <a href="product-details.jsp?captain=<%=productImage[k+3]%>&subcaptain=<%=productSubCategory[k+3]%>&productID=<%=productID[k+3]%>">
                                                                            <img src="<%=productImage[k+3] %>" alt="" />
                                                                        </a>
                                                                        <h2>Rs.<%=productPrice[k+3] %></h2>
                                                                        <p><strong><%=productName[k+3] %></strong></p>
                                                                        <a href="addtocart.jsp?pid=<%=productID[k+3]%>&quantity=1" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
                </div>
            </div>
        </div>
    </body>
</html>
