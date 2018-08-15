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
    <script src="../../../js/tariffApp.js"></script>

</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>
<script src="../../../js/tariffApp.js"></script>

<div class="able">
    <p><a href="/success/tariff.do">资费详细信息 </a>| <a href="/success/tariffApp.do">缴费信息</a></p>
    <table id="info">
        <thead>
        <tr>
            <th><label class="pointer"><input type="checkbox">用户ID</label></th>
            <th>使用人</th>
            <th>收费项目</th>
            <th>使用数量</th>
            <th>开始时间</th>
            <th>结束时间</th>
            <th>应收金额</th>
            <th>实收金额</th>
            <th>欠费金额</th>
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
                <td>盐酸</td>
                <td>水费</td>
                <td>100</td>
                <td>2017-9-25</td>
                <td>2017-9-25</td>
                <td>100</td>
                <td>80</td>
                <td>20</td>
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
