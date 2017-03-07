/* global pid */

var request;
function login(){
    var v=getSubmitQuery(loginform);
    var url="login.jsp"+v;

    if(window.XMLHttpRequest){
        request=new XMLHttpRequest();
    }
    else if(window.ActiveXObject){
        request=new ActiveXObject("Microsoft.XMLHTTP");
    }

    try{
        request.onreadystatechange=function(){
            if(request.readyState==4){			
                window.setTimeout(function(){
                    window.location.href="login_html.jsp";  
                },2000);
                document.getElementById("logininfo").innerHTML=request.responseText;
            }
        };
        request.open("POST",url,false);
        request.send();
    }catch(e){
        alert("Unable to connect to server !!");
    }
}

function signup(){
    if(document.signupform.spassword.value!=document.signupform.scpassword.value)
        alert("Your passwords do not match");	
    else{        
        var v=getSubmitQuery(signupform);
        var url="signup.jsp"+v;

        if(window.XMLHttpRequest){
            request=new XMLHttpRequest();
        }
        else if(window.ActiveXObject){
            request=new ActiveXObject("Microsoft.XMLHTTP");
        }

        try{
            request.onreadystatechange=function(){
                if(request.readyState==4){	
                    window.setTimeout(function(){
                        window.location.href="signup_html.jsp";  
                    },2000);
                    document.getElementById("signupinfo").innerHTML=request.responseText;
                }
            };
            request.open("POST",url,false);
            request.send();
        }catch(e){
            alert("Unable to connect to server !!");
        }
        }
}

function forgotpassword(){
    var v=getSubmitQuery(forgotform);
    var url="forgotpass.jsp"+v;

    if(window.XMLHttpRequest){
        request=new XMLHttpRequest();
    }
    else if(window.ActiveXObject){
        request=new ActiveXObject("Microsoft.XMLHTTP");
    }

    try{
        request.onreadystatechange=function(){
            if(request.readyState==4){			
                document.getElementById("forgotinfo").innerHTML=request.responseText;
            }
        };
        request.open("GET",url,true);
        request.send();
    }catch(e){
        alert("Unable to connect to server !!");
    }
}

function addaddress(){
    var v=getSubmitQuery(addform);
    var url="addaddress.jsp"+v;

    if(window.XMLHttpRequest){
        request=new XMLHttpRequest();
    }
    else if(window.ActiveXObject){
        request=new ActiveXObject("Microsoft.XMLHTTP");
    }

    try{
        request.onreadystatechange=function(){
            if(request.readyState==4){			
                window.setTimeout(function(){
                    window.location.href="checkout1.jsp";  
                },2000);
                document.getElementById("addinfo").innerHTML=request.responseText;
            }
        };
        request.open("POST",url,false);
        request.send();
    }catch(e){
        alert("Unable to connect to server !!");
    }
}


function addmobile(){
    var v=getSubmitQuery(mobileform);
    var url="addmobile.jsp"+v;

    if(window.XMLHttpRequest){
        request=new XMLHttpRequest();
    }
    else if(window.ActiveXObject){
        request=new ActiveXObject("Microsoft.XMLHTTP");
    }

    try{
        request.onreadystatechange=function(){
            if(request.readyState==4){			
                window.setTimeout(function(){
                    window.location.href="checkout2.jsp";  
                },2000);
                document.getElementById("mobileinfo").innerHTML=request.responseText;
            }
        };
        request.open("GET",url,false);
        request.send();
    }catch(e){
        alert("Unable to connect to server !!");
    }
}


function submitreview(){
    var v=getSubmitQuery(reviewform);
    var url="submitreview.jsp"+v+"&pid="+pid;
    if(window.XMLHttpRequest){
        request=new XMLHttpRequest(); 
    }
    else if(window.ActiveXObject){
        request=new ActiveXObject("Microsoft.XMLHTTP");
    }

    try{
        request.onreadystatechange=function(){
            if(request.readyState==4){			
//                window.setTimeout(function(){
                    window.location.reload();  
//                },3000);
                document.getElementById("reviewinfo").innerHTML=request.responseText;
            }
        };
        request.open("GET",url,false);
        request.send();
    }catch(e){
        alert("Unable to connect to server !!");
    }
}

function contact_review(){
    var v=getSubmitQuery(contact_form);
    var url="contact_review.jsp"+v;
    if(window.XMLHttpRequest){
        request=new XMLHttpRequest(); 
    }
    else if(window.ActiveXObject){
        request=new ActiveXObject("Microsoft.XMLHTTP");
    }

    try{
        request.onreadystatechange=function(){
            if(request.readyState==4){			
//                window.setTimeout(function(){
//                    window.location.href="contact-us.jsp";  
//                },2000);
                document.getElementById("contactinfo").innerHTML=request.responseText;
            }
        };
        request.open("POST",url,true);
        request.send();
    }catch(e){
        alert("Unable to connect to server !!");
    }
}
