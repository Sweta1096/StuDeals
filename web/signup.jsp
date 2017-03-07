<%@include file="connect.jsp"%>
<%
    String name= request.getParameter("sname");
    String emailid=request.getParameter("semail");
    String security=request.getParameter("ssecurity");
    String pass=request.getParameter("spassword");
    String sql="insert into user(userName,userSecurity,userPassword,userEmail) values ('"+name+"','"+security+"','"+pass+"','"+emailid+"') ";
    rs_int=st.executeUpdate(sql);
    if(rs_int!=0){
        rs=st1.executeQuery("select * from user where userEmail='"+emailid+"' and userPassword='"+pass+"'");
        rs.first();
        session.setAttribute("uid",Integer.parseInt(rs.getString("userID")));
        session.setAttribute("uname",rs.getString("userName"));
        %><h5 style='color:yellowgreen'><strong>* Signup Successfull !!</strong></h5> <% 
    }else{ 
        %><h5 style='color:red'><strong>* Signup UnSuccessfull !!</strong></h5><%
    }
%>