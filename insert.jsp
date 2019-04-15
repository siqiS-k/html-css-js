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
        String first = request.getParameter("first_name");
        String last = request.getParameter("last_name");
        String email = request.getParameter("email_address");
        String pass = request.getParameter("confirm_pass");
          
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
            String insert_sql = "insert into capic values('" + first + "','" + last + "','" + email + "','" + pass + "')";   
                          
            try {   
                if(!stmt.execute(insert_sql)){%>
                	 <script type='text/javascript'>alert('Register sucess');
            window.location.href='login.html';</script>
<% 
                }else{%>
                <script type='text/javascript'>alert('Username aready existed');
            window.location.href='register.html';</script>
<%
                	
                }
            }catch(Exception e)     {  
                e.printStackTrace();  
            }  
           

            //rs.close();             
            stmt.close();                 
            conn.close();   
        }catch (Exception e) {  
                e.printStackTrace();  
        }   
%>   
</body>   
</html>  