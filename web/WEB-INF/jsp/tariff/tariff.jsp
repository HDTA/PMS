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
    <jsp:include page="../public/head.jsp"/>
    <script src="../../../js/tariff.js"></script>

</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able">
    <p><a href="/success/tariff.do">资费详细信息 </a>| <a href="/success/tariffApp.do">缴费信息</a></p>
    <table id="info">
        <thead>
        <tr>
            <th><label class="pointer"><input type="checkbox">资费ID</label></th>
            <th>收费项目</th>
            <th>收费标准</th>
            <th>单位</th>
            <th>收费开始时间</th>
            <th>收费截止时间</th>
            <th>详细信息</th>
            <th>
                <img src="../../../img/add.png" class="pointer" id="add">
                <img src="../../../img/del.png" class="pointer" id="delAll">
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach begin="1" end="9" step="1">
            <tr>
                <td><label class="pointer"><input type="checkbox">&nbsp;&nbsp;10000</label></td>
                <td>水费</td>
                <td>￥ 100.0</td>
                <td>立方米</td>
                <td>2017-9-25</td>
                <td>2017-9-25</td>
                <td>---</td>
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
