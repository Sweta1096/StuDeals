<%@include file="connect.jsp"%>
<%  
    if(session.getAttribute("uid")!=null){
        Integer uid=(Integer)session.getAttribute("uid");
        String sql="Select * from cart where userID="+uid+"";
        rs=st.executeQuery(sql);
        while(rs.next()){
            int pid=rs.getInt("productID");
            int quantity=rs.getInt("quantity");
            String sql1="Update products set productQuantity=(productQuantity+"+quantity+") where productID="+pid+" ";
            rs_int=st1.executeUpdate(sql1);
        }
        session.setAttribute("uid","");
        session.setAttribute("uname","");
        session.invalidate();
        response.sendRedirect("index.jsp");
    }else{
        response.sendRedirect("login_html.jsp");
    }
%>        