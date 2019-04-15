<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<%   
   request.setCharacterEncoding("UTF-8");   
   response.setCharacterEncoding("UTF-8");   
   response.setContentType("text/html; charset=utf-8");   
%>    
<html>   
    <head>   
    <title>add message into table </TITLE>   
    </head>   
<body>   
<%  
        String useremail = request.getParameter("email_address");
        String userpass = request.getParameter("confirm_pass");
          
        java.util.Date date=new java.util.Date();   
        String datetime=new Timestamp(date.getTime()).toString();  
  
        try   
        {   
            /** 连接数据库参数 **/  
            String driverName = "com.mysql.jdbc.Driver"; //驱动名称  
            String DBUser = "root"; //mysql用户名  
            String DBPasswd = "ssy19951220"; //mysql密码  
            String DBName = "capic"; //数据库名  
          
            String connUrl = "jdbc:mysql://47.254.25.175:22" + DBName + "?user=" + DBUser + "&password=" + DBPasswd;  
            Class.forName(driverName).newInstance();  
            Connection conn = DriverManager.getConnection(connUrl);  
            Statement stmt = conn.createStatement();  
            stmt.executeQuery("SET NAMES UTF8");    
            String check_sql="SELECT * FROM capic WHERE email = 'useremail' AND pin = 'userpass'"; 
            if(!stmt.execute(check_sql)){%>
            <script type='text/javascript'>alert('Username and pin do not match our records');
            window.location.href='login.html';</script>
<%       }else{%>
           <script type='text/javascript'>alert('Login sucess');
            window.location.href='index.html';</script>
<% 
	
            }
            stmt.close();                 
            conn.close();   
        }catch (Exception e) {  
                e.printStackTrace();  
        }   
%>   
</body>   
</html>  