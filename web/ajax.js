function getSubmitQuery(fobj){
   var str = "?";   
   for(var i = 0 ;i<fobj.elements.length;i++){ 
       switch(fobj.elements[i].type){
            case "text":
            case "textarea":
            case "password":
            case "email":
            case "select-one":
                    str += fobj.elements[i].name +"=" + encodeURI(fobj.elements[i].value) + "&"; 
                    break;			
            } 
	} 
   str = str.substr(0,(str.length - 1));   
   return str;
}

function getAllUrlParams(url){
    var queryString=url.split('?')[1];
    var obj={};
    if(queryString){
        queryString=queryString.split('#')[0];
        var arr=queryString.split('&');
        for(var i=0;i<arr.length;i++){
            var a=arr[i].split('=');
            var paramNum=undefined;
            var paramName=a[0].replace(/\[\d*\]/,function(v){
                paramNum=v.slice(1,-1);
                return ;
            });
            var paramValue=typeof(a[1])==='undefined'?true:a[1];
    //                    paramName=paramName.toLowerCase();
    //                    paramValue=paramvalue.toLowerCase();
            if(obj[paramName]){
                if(typeof objp[paramName]==='string'){
                    obj[paramName]=[obj[paramName]];
                }
                if(typeof paramNum==='undefined'){
                    obj[paramName].push(paramValue);
                }
                else{
                    obj[paramName][paramNum]=paramValue;
                }
            }
            else{
                obj[paramName]=paramValue;
            }
        }
    }
    return obj;
}