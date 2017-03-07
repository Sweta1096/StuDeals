<%@include file="connect.jsp" %>
<%      
    String name,email;
    String subject=request.getParameter("subject");
    String message=request.getParameter("message");
    java.util.Date date=new java.util.Date();
    if(session.getAttribute("uid")==null){
        name=request.getParameter("name");
        email=request.getParameter("email");
    }
    else{
        name=session.getAttribute("uname").toString();
        email=session.getAttribute("uemail").toString();
    }
    if(!name.equals("")& !email.equals("")& !subject.equals("")& !message.equals("")){
        String sql="Insert into review(reviewName,reviewEmail,reviewSubject,reviewMessage,date) values ( '"+name+"','"+email+"','"+subject+"','"+message+"','"+date+"') x";
        rs_int=st.executeUpdate(sql); 
        if(rs_int!=0){
            %><h5 style='color:yellowgreen'><strong>Successfully Sent !!</strong></h5><% 
        }
        else{
            %><h5 style='color:red'><strong>UnSuccessfull !!</strong></h5><%
        }
    }
    else{
        %><h5 style='color:red'><strong>Enter all details !!</strong></h5><%
    }
%>