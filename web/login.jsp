<%@include file="connect.jsp"%>
<%
    String u=request.getParameter("lemail");
    String p=request.getParameter("lpassword");
    String sql="select * from user where userEmail='"+u+"' and userPassword='"+p+"'";
    rs=st.executeQuery(sql);
    if(rs.next()){
        if(session.getAttribute("uid")!=null){%>
            <h5 style='color:red'><strong>* Please Logout First !!</strong></h5><% 
        }else{
            session.setAttribute("uid",Integer.parseInt(rs.getString("userID")));
            session.setAttribute("uname",rs.getString("userName") ); 
            session.setAttribute("uemail",rs.getString("userEmail") ); 
            Integer uid=(Integer)session.getAttribute("uid");
            String sql1="Select * from cart where userID="+uid+"";
            rs1=st1.executeQuery(sql1);
            while(rs1.next()){
                int pid=rs1.getInt("productID");
                int quantity=rs1.getInt("quantity");
                String sql3="Select * from products where productID="+pid+" ";
                rs2=st3.executeQuery(sql3);
                rs2.first();
                if(quantity<=rs2.getInt("productQuantity")){
                    String sql2="Update products set productQuantity=(productQuantity-"+quantity+") where productID="+pid+" ";
                    rs_int=st2.executeUpdate(sql2);
                }else{
                    String sql4="delete from cart where productID="+pid+" and userID="+uid+"";
                    rs_int1=st4.executeUpdate(sql4);
                }
            }
            %><h5 style='color:yellowgreen'><strong>* You Have successfully LoggedIn !!</strong></h5><% 
        }
    }else { %>
        <h5 style='color:red'><strong>* Username Or Password is Incorrect !!</strong></h5>
    <%} 
%>
				