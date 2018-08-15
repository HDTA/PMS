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
    <link rel="stylesheet" href="../../../css/global.css">
    <%--<link rel="stylesheet" href="../../css/login.css">--%>
    <link rel="stylesheet" href="../../../css/admin.css">
    <link rel="stylesheet" href="../../../css/add.css">
    <script src="../../../js/jquery-1.8.3.js"></script>

</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able add" id="add">

    <form action="" method="post">


        <table >
            <tr>
                <th>ID:</th>
                <td>
                    <input type="text" placeholder="30长度以内的字母、数字、下划线组合" class="input" readonly>
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>姓名:</th>
                <td>
                    <input type="text" placeholder="20长度以内的字母、数字、汉字组合">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>密码:</th>
                <td>
                    <input type="text"  placeholder="6~20长度以内的字母、数字、下划线组合" >
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>确认密码:</th>
                <td>
                    <input type="text" value="">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>E-mail:</th>
                <td>
                    <input type="text" value="">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>TEL:</th>
                <td>
                    <input type="text" value="">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>验证码:</th>
                <td>
                    <input type="text" placeholder="输入验证码" class="code">
                    <input class="code2" ><br>
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/ok.png"></td>
            </tr>


        </table>
        <input type="submit" class="submit" value="">
        <input type="button" class="cancel">
    </form>


</div>

<br><br>

</body>
</html>
