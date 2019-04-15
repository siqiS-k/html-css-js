function checklogin(){
   var email,password;
   var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
   email=document.login_form.email_address.value;
   password=document.login_form.pass.value;
   if(email==""|password==""){
   alert("Information missing! Please check again! ");
   }else if(!reg.test(email)){
   alert("Invalid Email! Please check again!");
   }
   
}
function checkemail(){
   var email,getemail;
   email=document.login_form.email_address.value;
   getemail="Invalid Email! Please check again!";
   var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
   if(!reg.test(email)){
   document.login_form.checkemail_a.value=getemail;
   return false;
   }
   else {return false;}
}
