<%@include file="connect.jsp"%>
<%
    int pid=Integer.parseInt(request.getParameter("pid"));
    int decrease_quantity=Integer.parseInt(request.getParameter("quantity"));
    Integer uid=(Integer)session.getAttribute("uid");
    String sql="select * from cart where productID ="+pid+" and userID="+uid+" ";
    String sql1="UPDATE cart SET quantity = (quantity-"+decrease_quantity+") WHERE productID ="+pid+" and userID="+uid+" ";
    String sql2="UPDATE products SET productQuantity = (productQuantity+"+decrease_quantity+") WHERE productID ="+pid+" ";
    String sql3="UPDATE cart SET quantity = (quantity+"+decrease_quantity+") WHERE productID ="+pid+" and userID="+uid+" ";
    rs=st.executeQuery(sql);
    if(rs.first()){
        if(rs.getInt("quantity")>1){
        rs_int=st1.executeUpdate(sql1);
        if(rs_int!=0){
            rs_int2=st2.executeUpdate(sql2);
            if(rs_int2!=0)
                response.sendRedirect("cart.jsp");
            else{
                rs_int3=st3.executeUpdate(sql3);
                response.sendRedirect("cart.jsp");
            }
        }else{
            response.sendRedirect("cart.jsp");
        }
    }else{
          response.sendRedirect("removefromcart.jsp?pid="+pid+"&quantity="+rs.getInt("quantity"));  
        }
        
    }else{
        response.sendRedirect("index.jsp");
    }
%>