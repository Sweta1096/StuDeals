<%@include file="connect.jsp"%>
<%  
    int increase_quantity;
    int decrease_quantity;
    int pid=Integer.parseInt(request.getParameter("pid"));
    int ch_quantity=Integer.parseInt(request.getParameter("quantity"));
    Integer uid=(Integer)session.getAttribute("uid");
    String sql="select * from cart where productID ="+pid+" and userID="+uid+" ";
    rs=st.executeQuery(sql);
    rs.first();
    int ini_quantity=rs.getInt("quantity");
    if(ch_quantity>0){
        if(ch_quantity>ini_quantity){
            increase_quantity=ch_quantity-ini_quantity;
            response.sendRedirect("addtocart.jsp?pid="+pid+"&quantity="+increase_quantity) ;
        }
        else if(ch_quantity<ini_quantity){
            decrease_quantity=ini_quantity-ch_quantity;
            response.sendRedirect("subtractfromcart.jsp?pid="+pid+"&quantity="+decrease_quantity) ;
        }
        else{
            response.sendRedirect("cart.jsp");
        }
    }else{
        response.sendRedirect("cart.jsp");
    }
    
%>