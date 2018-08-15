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
    <script src="../../../js/permission.js"></script>
    <style>
        th,td{
            font-size: medium;
        }
    </style>
</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able">
    <p>模块权限信息一览表 </p>
    <%--<p style="position: relative;top: -20px;right: 30px;">A-添加  D-删除  M-修改  S-查看</p>--%>
    <table id="info">
        <thead>
        <tr>
            <th colspan="4">权限ID</th>
            <th colspan="4">管理员模块</th>
            <th colspan="4">业主模块</th>
            <th colspan="4">员工模块</th>
            <th colspan="4">用户模块</th>
            <th colspan="4">权限模块</th>
            <th colspan="4">楼房模块</th>
            <th colspan="4">资费模块</th>
            <th colspan="4">物资模块</th>
            <th colspan="4">维修模块</th>
            <th >级别</th>
            <th>
                <img src="../../../img/add.png" class="pointer" id="add">
                <img src="../../../img/del.png" class="pointer" id="delAll">
            </th>
        </tr>


        </thead>
        <tbody>

        <tr>

            <th colspan="4" >——</th>
            <c:forEach begin="1" end="9" step="1">
                <th>A</th>
                <th>D</th>
                <th>M</th>
                <th>S</th>
            </c:forEach>
            <td>——</td>
            <td>
               ——
            </td>
        </tr>


        <tr>

            <th colspan="4" >1000</th>
            <c:forEach begin="1" end="9" step="1" >
            <th>1</th>
            <th>0</th>
            <th>1</th>
            <th>0</th>
            </c:forEach>
            <td>A</td>
            <td>——</td>

        <c:forEach begin="1" end="7" step="1" varStatus="i">
            <tr>

                <th colspan="4" >1000</th>
                <c:forEach begin="1" end="9" step="1" >
                    <th>1</th>
                    <th>0</th>
                    <th>1</th>
                    <th>0</th>
                </c:forEach>
                <td>B</td>

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
