<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/9
  Time: 1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>物业管理系统</title>
    <link rel="stylesheet" href="../../css/global.css">
    <link rel="stylesheet" href="../../css/admin.css">
    <script src="../../js/jquery-1.8.3.js"></script>
    <script src="../../js/admin.js"></script>

</head>
<body class="body">
<div class="logo " >
    <img src="../../img/logo3.png">
    <button class="shadow" id="first">首页</button>
    <button class="shadow" id="logout">退出</button>
</div>

    <div class="able">
        <p>管理员信息一览表</p>
        <table id="info">
            <thead>
                <tr>
                    <th><label class="pointer"><input type="checkbox">&nbsp;&nbsp;ID</label></th>
                    <th>姓名</th>
                    <th>电话</th>
                    <th>E-mail</th>
                    <th>权限</th>
                    <th>
                        <img src="../../img/add.png" class="pointer" id="add">
                        <img src="../../img/del.png" class="pointer" id="delAll">
                    </th>
                </tr>
            </thead>
            <tbody>
            <c:forEach begin="1" end="9" step="1">
                    <tr>
                        <td><label class="pointer"><input type="checkbox">&nbsp;&nbsp;10000</label></td>
                        <td>一氧化二氚</td>
                        <td>+86-0123-12345678999</td>
                        <td>12345678999@qq.com</td>
                        <td>admin</td>
                        <td>
                            <img src="../../img/modify.png" class="pointer" >
                            <img src="../../img/del.png" class="pointer">
                        </td>
                    </tr>
            </c:forEach>
            </tbody>
        </table>
        <br>
        <!-- 分页-->
        <p class="page">
            <a href="#">首页</a>
            <a href="#">上一页</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">下一页</a>
            <a href="#">末页</a>
        </p>

        <!-- 搜索-->
        <p class="search">
            <img src="../../img/search.png"/>
            <input type="text" placeholder="输入ID或者名字">
        </p>

    </div>

    <br><br>

</body>
</html>
