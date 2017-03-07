<%@include file="connect.jsp"%>
<%  
    String house=request.getParameter("house");
    String street=request.getParameter("street");
    String city=request.getParameter("city");
    String pin=request.getParameter("pincode");
    String country=request.getParameter("country");
    String state=request.getParameter("state");
    if(!house.equals("") &!street.equals("") &!city.equals("") &!pin.equals("")){
        int pincode=Integer.parseInt(request.getParameter("pincode"));
        String address=house+" "+street+", "+city+" "+state+", "+country;
        if(session.getAttribute("uid")!=null){
            Integer uid=(Integer)session.getAttribute("uid");
            String sql="INSERT INTO `address_id` (`userID`, `address`, `pincode`) VALUES ("+uid+", '"+address+"', "+pincode+") ";
            rs_int=st.executeUpdate(sql);
            if(rs_int!=0){
                %><h5 style='color:yellowgreen'><strong>* Address added to your list !!</strong></h5> <%
            }
            else{
                %><h5 style='color:red'><strong>* Please try again !!</strong></h5><%
            }
        }else{
            %><h5 style='color:red'><strong>* Please Login first !!</strong></h5><%
        }
    }else{
        %><h5 style='color:red'><strong>* Please fill all details !!</strong></h5><%
    }
%>

