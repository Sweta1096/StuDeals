<%@include file="connect.jsp"%>
<%  if(session.getAttribute("uid")!=null){
        int pid=Integer.parseInt(request.getParameter("pid"));
        int quantity=Integer.parseInt(request.getParameter("quantity"));
        Integer uid=(Integer)session.getAttribute("uid");
        java.util.Date date=new java.util.Date();
        String sql="delete from cart where productID="+pid+" and userID="+uid+"";
        String sql1="Update products set productQuantity=(productQuantity+"+quantity+") where productID="+pid+" ";
        String sql2="INSERT INTO `cart`(`date`, `userID`, `productID`, `quantity`) VALUES ('"+ date + "',"+uid+","+pid+","+quantity+"); ";
        rs_int=st.executeUpdate(sql);
        if(rs_int!=0){
            rs_int1=st1.executeUpdate(sql1);
            if(rs_int1!=0)
                response.sendRedirect("cart.jsp");
            else{
                rs_int2=st2.executeUpdate(sql2);
                response.sendRedirect("cart.jsp");
            }
        }else
            response.sendRedirect("cart.jsp");
    }else{
        response.sendRedirect("login_html.jsp");
    }
%>