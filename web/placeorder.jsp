<%@include file="connect.jsp" %>
<%
    if(session.getAttribute("uid")!=null){
        Integer uid=(Integer)session.getAttribute("uid");
        String mobile=request.getParameter("mobile");
        String address=request.getParameter("address");
        String sql="select * from cart where userID="+uid+" ";
        rs=st.executeQuery(sql);
        while(rs.next()){
            int cid=rs.getInt("cartID");
            int quantity=rs.getInt("quantity");
            int pid=rs.getInt("productID");
            java.util.Date date=new java.util.Date();
            String sql1="select * from products where productID="+pid+" ";
            rs1=st1.executeQuery(sql1);
            rs1.first();
            double productCost=(double)quantity*rs1.getDouble("productPrice");
            String sql2="INSERT INTO `orders` (`userID` , `productID` ,`quantity`,`date`,`productCost`,`mobile_no`,`address`) VALUES ("+uid+","+pid+","+quantity+", '"+date+"',"+productCost+",'"+mobile+"','"+address+"' )";
                rs_int=st3.executeUpdate(sql2);
            String sql3="DELETE FROM `studeals`.`cart` WHERE `cart`.`cartID` = "+cid+" ";
                rs_int1=st3.executeUpdate(sql3);
        }
        response.sendRedirect("index.jsp");
    }else{
        response.sendRedirect("login_html.jsp");
    }
%>