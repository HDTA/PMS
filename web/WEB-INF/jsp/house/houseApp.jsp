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
    <script src="../../../js/houseApp.js"></script>

</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able">
    <p><a href="/success/house.do">楼房详细信息 </a>| <a href="/success/houseApp.do">使用情况</a></p>
    <table id="info">
        <thead>
        <tr>
            <th><label class="pointer"><input type="checkbox">房间ID</label></th>
            <th>楼栋名</th>
            <th>房间号</th>
            <th>是否上架</th>
            <th>入住时间</th>
            <th>房屋类型</th>
            <th>房屋用途</th>
            <th>房屋面积</th>
            <th>房屋朝向</th>
            <th>备注</th>
            <th>
                <img src="../../../img/add.png" class="pointer" id="add">
                <img src="../../../img/del.png" class="pointer" id="delAll">
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach begin="1" end="9" step="1">
            <tr>
                <td><label class="pointer"><input type="checkbox">&nbsp;&nbsp;1</label></td>
                <td>A栋</td>
                <td>208</td>
                <td>是</td>
                <td>2014-5-8</td>
                <td>1室1厅</td>
                <td>居住</td>
                <td>100平方米</td>
                <td>东南向</td>
                <td>--</td>
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
