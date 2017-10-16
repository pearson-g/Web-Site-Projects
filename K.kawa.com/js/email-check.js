$(function() {
   


var name=$(".left .name"),company=$(".left .company"),email=$(".left .email"),message=$(".right .message"),format = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
$("#form2 .sub").click(function(){
    $(this).parent().submit();
});
$("#form2").submit(function(){

    var _email=email.val();
       if(company.val()==''){
       alert('company can not be empty!');
       company.focus();
       return false;
       }
        if(name.val()==''){
       alert('Name can not be empty!');
       name.focus();
       return false;
       }    
    if(email.val()==''){
       alert('Email can not be empty!');
       email.focus();
       return false;
       }else if(!_email.match(format)){
        alert('Email is wrong');
        return false;

       }       
    if(message.val()==''){
       alert('Message can not be empty!');
       message.focus();
       return false;
       }
        // $(this).parent().submit();
});

});
