<%-- 
    Document   : header
    Created on : Oct 21, 2016, 8:52:41 PM
    Author     : SHAIL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="index.jsp"><i class="fa fa-home">&nbsp;</i>Home</a></li>
                            <li class="dropdown"><a>CS Engg.<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="products.jsp?captain=CS&subcaptain=Books">Books</a></li>
                                <li><a href="products.jsp?captain=CS&subcaptain=Tools">Tools</a></li> 
                                <li><a href="products.jsp?captain=CS&subcaptain=Entertainment">Entertainment</a></li> 
                                <li><a href="products.jsp?captain=CS&subcaptain=Gadget">Electronic Gadget</a></li> 
                            </ul>
                            </li> 
                            <li class="dropdown"><a>Mech Engg.<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="products.jsp?captain=ME&subcaptain=Books">Books</a></li>
                                <li><a href="products.jsp?captain=ME&subcaptain=Tools"">Tools</a></li> 
                                <li><a href="products.jsp?captain=ME&subcaptain=Entertainment">Entertainment</a></li> 
                                <li><a href="products.jsp?captain=ME&subcaptain=Gadget">Electronic Gadget</a></li> 
                            </ul>
                            </li> 
                            <li class="dropdown"><a>EC Engg.<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="products.jsp?captain=EC&subcaptain=Books">Books</a></li>
                                <li><a href="products.jsp?captain=EC&subcaptain=Tools"">Tools</a></li> 
                                <li><a href="products.jsp?captain=EC&subcaptain=Entertainment">Entertainment</a></li> 
                                <li><a href="products.jsp?captain=EC&subcaptain=Gadget">Electronic Gadget</a></li> 
                            </ul>
                            </li> 
                            <li><a href="contact-us.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="search_box pull-right" >
                        <input type="text" id="search" onKeydown="Javascript: if (event.keyCode==13) searchProduct();" placeholder="Search"/>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        function searchProduct(){
            var search=document.getElementById("search").value;
            location.href="searchResults.jsp?search="+search;
        }
    </script>
</html>
