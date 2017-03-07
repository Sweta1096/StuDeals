<%@include file="connect.jsp" %>
<%  
    String rname=request.getParameter("rname");
    String remail=request.getParameter("remail");
    String review=request.getParameter("review");
    if(!rname.equals("")& !remail.equals("")& !review.equals("")){
        int pid=Integer.parseInt(request.getParameter("pid"));
        java.util.Date date=new java.util.Date();
        String sql="Insert into comments(userName,userEmail,productID,comment,date) values ( '"+rname+"','"+remail+"',"+pid+",'"+review+"','"+date+"') ";
        rs_int=st.executeUpdate(sql);
        if(rs_int!=0){
            %><h5 style='color:yellowgreen'><strong>* Comment added successfully !!</strong></h5><% 
        }else{
            %><h5 style='color:red'><strong>* Please try again !!</strong></h5><%
        }
    }else{
        %><h5 style='color:red'><strong>* Please fill all details !!</strong></h5><%
    }
%>