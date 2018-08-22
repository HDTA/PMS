<%@ page import="java.util.List" %>
<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/9
  Time: 1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../public/head.jsp"/>
    <script src="../../../js/admin.js"></script>


</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

    <div class="able">
        <p>管理员信息一览表</p>
        <table id="info">
            <thead>
                <tr>
                    <th><label class="pointer"><input type="checkbox">管理员ID</label></th>
                    <th>姓名</th>
                    <th>电话</th>
                    <th>E-mail</th>
                    <th>权限</th>
                    <th>
                        <img src="../../../img/add.png" class="pointer" id="add">
                        <img src="../../../img/del.png" class="pointer" id="delAll">
                    </th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.list}" var="i" >

                    <tr>
                        <td><label class="pointer"><input type="checkbox">&nbsp;&nbsp;${i.id}</label></td>
                        <td>${i.username}</td>
                        <td>${i.tel}</td>
                        <td>${i.email}</td>
                        <td>${i.role}</td>
                        <td>
                            <img src="../../../img/modify.png" class="pointer" >
                            <img src="../../../img/del.png" class="pointer">
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
            <img src="../../../img/search.png"/>
            <input type="text" placeholder="输入ID或者名字">
        </p>

    </div>

    <br><br>

</body>
</html>
