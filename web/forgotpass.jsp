<%@include file="connect.jsp" %>
<%
    if(session.getAttribute("uid")==null){
        String email=request.getParameter("femail");
        String secpass=request.getParameter("fsecupass");
        String sql="Select * from user where userEmail='"+email+"' ";
        rs=st.executeQuery(sql);
        if(!rs.next()){
            %><h5 style='color:red'><strong>* Email does not exists !!</strong></h5><%
        }else{
            rs.first();
            if(rs.getString("userSecurity").equals(secpass)){
            %><h4 style='color:yellowgreen'>Password:
                    <span style="color: violet; "><%=rs.getString("userPassword")%> </span>
            </h4><% 
            }else{
                %><h5 style='color:red'><strong>* Security Password do not match !!</strong></h5><%
            }
        }
    }else{
        response.sendRedirect("index.jsp");
    }  
%>
