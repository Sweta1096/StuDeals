<%@include file="connect.jsp"%>
<%  String mobile=request.getParameter("mobile");
    if(!mobile.equals("")){
        if(session.getAttribute("uid")!=null){
            Integer uid=(Integer)session.getAttribute("uid");
            String sql="INSERT INTO `mobile_id` VALUES ("+uid+", '"+mobile+"')";
            rs_int=st.executeUpdate(sql);
            if(rs_int!=0){
                %><h4 style='color:yellowgreen'><strong>* Mobile no. added to your list !!</strong></h4> <%
            }
            else{
                %><h4 style='color:red'><strong>* Please try again !!</strong></h4><%
            }
        }else{
            %><h4 style='color:red'><strong>* Please Login first !!</strong></h4><%
        }
    }else{
        %><h4 style='color:red'><strong>* Please fill all details !!</strong></h4><%
    }
%>