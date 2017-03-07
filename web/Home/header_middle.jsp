<%-- 
    Document   : header2
    Created on : Oct 21, 2016, 8:57:24 PM
    Author     : SHAIL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/Javascript" src="call_jsp.js"></script>
    </head>
    <body>
        <%@include file="../connect.jsp"%>
        <%
            Integer uid=(Integer)session.getAttribute("uid");
            String sql=" select count(*) as Count from cart where userID="+uid+" ";
            String sql1=" select count(*) as Count from orders where userID="+uid+" ";
            rs=st.executeQuery(sql);
            rs1=st1.executeQuery(sql1);
            rs.first();
            rs1.first();
        %>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="logo pull-left">
                        <a href="index.jsp"><img src="images/home/logo1.jpg" alt="Logo" /></a>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="shop-menu pull-right" >
                        <ul class="nav navbar-nav navbar-right"  >
                            <li><%if(session.getAttribute("uid")!=null){%>
                                <a href="orders.jsp">
                                <%}else{%>
                                <a href="login_html.jsp">
                                <%}%>
                                    <i class="fa fa-truck"></i> Orders
                                    <span class="label label-default"><%=rs1.getString("Count")%></span>
                                </a>
                            </li>
                            <li><a href=""><i class="fa fa-star"></i> Wishlist</a></li>
                            <li><%if(session.getAttribute("uid")==null){%>
                                    <a href="login_html.jsp">
                                <%}else if(Integer.parseInt(rs.getString("Count"))<1){%>
                                    <a href="cart.jsp">
                               <%   }
                                    else{%>
                                    <a href="checkout1.jsp">
                                <%}%>
                                    <i class="fa fa-crosshairs"></i> Checkout
                                </a>
                            </li>
                            <li>
                                <a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart 
                                    <span class="label label-default"><%=rs.getString("Count")%></span>
                                </a>
                            </li>
                            <%if(session.getAttribute("uid")==null){ %>
                            <li><a href="login_html.jsp"><i class="fa fa-lock"></i> Login</a></li>
                            <% }else{ %>
                            <li>
                                <a href="logout.jsp"><i class="fa fa-unlock-alt"></i>
                                    Logout(<strong style="color:blue"><%=session.getAttribute("uname")%></strong>)
                                </a>
                            </li>
                            <% }%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
