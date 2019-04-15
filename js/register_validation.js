function checkregister(){
   var fname,lname,email,password1,cpassword;
   var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
   fname=document.register_form.first_name.value;
   lname=document.register_form.last_name.value;
   email=document.register_form.email_address.value;
   password1=document.register_form.password.value;
   cpassword=document.register_form.confirm_pass.value;
   if(fname==""|lname==""|email==""|password1==""|cpassword==""){
   alert("Information missing! Please check again! ");
   }else if(cpassword!=password1){
   alert("Confirm password is wrong! Please check again!");
   }else if(!reg.test(email)){
   alert("Invalid Email! Please check again!");
   }
}
function checkemail(){
   var email,getemail;
   email=document.register_form.email_address.value;
   getemail="Invalid Email! Please check again!";
   var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
   if(!reg.test(email)){
   document.register_form.checkemail_a.value=getemail;
   return false;
   }
   else {return false;}
}

function checkpassword(){
   var password1,cpassword,getpass;
   password1=document.register_form.password.value;
   cpassword=document.register_form.confirm_pass.value;
   getpass="Confirm password is wrong! Please check again!";
   if(cpassword!=password1){
    document.register_form.checkepass_w.value=getpass;
   return false;
   }
   else {return false;}
}