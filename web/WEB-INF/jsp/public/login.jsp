<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/8
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>物业管理系统</title>
    <link rel="stylesheet" href="../../css/global.css">
    <link rel="stylesheet" href="../../css/login.css">
  </head>
  <body class="body">
    <div class="logo">
      <img src="../../img/logo.png">
    </div>

    <div class="login">
      <form action="/login/login.do" method="post">
        <span>账户:</span><br>
        <input type="text" value="输入账户"><br>
        <span>密码:</span><br>
        <input type="password" ><br>
        <span>验证码:</span><br>
        <input type="text" value="输入验证码" class="code">
        <input class="code2" readonly><br>
        <input type="submit" class="submit" value="">
      </form>
      

    </div>
  </body>
</html>
