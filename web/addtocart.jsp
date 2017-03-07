<%@include file="connect.jsp"%>
<%  if(session.getAttribute("uid")!=null){
        int pid=Integer.parseInt(request.getParameter("pid"));
        int increase_quantity=Integer.parseInt(request.getParameter("quantity"));
        Integer uid=(Integer)session.getAttribute("uid");
        String sql="select * from cart where productID ="+pid+" and userID="+uid+" ";
        String sql1="select * from products where productID="+pid+" ";
        String sql2="UPDATE cart SET quantity = (quantity+"+increase_quantity+") WHERE productID ="+pid+" and userID="+uid+" ";
        String sql3="UPDATE products SET productQuantity = (productQuantity-"+increase_quantity+") WHERE productID ="+pid+" ";
        String sql4="UPDATE cart SET quantity = (quantity-"+increase_quantity+") WHERE productID ="+pid+" and userID="+uid+" ";
        rs=st.executeQuery(sql);

        if(!rs.next()){
            java.util.Date date=new java.util.Date();
            String sql5="INSERT INTO `cart` (`date`, `userID`, `productID`, `quantity`) VALUES ('"+ date + "',"+uid+","+pid+","+increase_quantity+"); ";
            rs_int1=st5.executeUpdate(sql5);
            if(rs_int1!=0){
                rs_int2=st4.executeUpdate(sql3);
                if(rs_int2!=0)
                    response.sendRedirect("cart.jsp");
            }
        }else{
            rs1=st1.executeQuery(sql1);
            rs1.first();
            if(rs1.getInt("productQuantity")>=increase_quantity){
                rs_int1=st2.executeUpdate(sql2);
                if(rs_int1!=0){
                    rs_int2=st3.executeUpdate(sql3);
                    if(rs_int2!=0){
                        response.sendRedirect("cart.jsp");
                    }
                    else{
                        rs_int3=st4.executeUpdate(sql4);
                        response.sendRedirect("cart.jsp");
                    }
                }else{
                    response.sendRedirect("cart.jsp");
                }
            }else{
                response.sendRedirect("cart.jsp");
            }
        }
    }else{
      response.sendRedirect("login_html.jsp");          
    }
%>