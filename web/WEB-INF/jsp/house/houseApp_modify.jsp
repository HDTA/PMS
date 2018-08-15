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
    <jsp:include page="../public/headAdd.jsp"/>

</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able add" id="add">

    <form action="" method="post">


        <table >
            <tr>
                <th>权限级别:</th>
                <td>
                    <input type="text" value="管理员" class="input read" readonly >
                </td>
                <td></td>
            </tr>

            <tr>
                <th>房间ID:</th>
                <td>
                    <input type="text" value="100" class="input read" readonly >
                </td>
                <td></td>
            </tr>


            <tr>
                <th>楼栋名:</th>
                <td>
                    <input type="text" placeholder="5~30长度的字母、数字、下划线" class="input">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>房间号:</th>
                <td>
                    <input type="text" placeholder="3-10数字" class="input">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>是否上架:</th>
                <td>
                    <input type="text" placeholder="5~20长度的数字">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>入住时间:</th>
                <td>
                    <input type="text" placeholder="2017-10-12">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>


            <tr>
                <th>房屋类型:</th>
                <td>
                    <input type="text" placeholder="5~30长度的字母、数字、下划线">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>房屋用途:</th>
                <td>
                    <input type="text" placeholder="5~30长度的字母、数字、下划线">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>房屋面积:</th>
                <td>
                    <input type="text" placeholder="5~30长度的数字">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>房屋朝向:</th>
                <td>
                    <input type="text" placeholder="5~30长度的字母、数字、下划线">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>备注:</th>
                <td>
                    <input type="text" placeholder="5~30长度的字母、数字、下划线">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>


            <tr>
                <th>验证码:</th>
                <td>
                    <input type="text" placeholder="输入验证码" class="code">
                    &nbsp;
                    <img src="../../../img/BHU9.jpg" class="vci">
                    &nbsp;&nbsp;&nbsp;
                    <br>
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/ok.png"></td>
            </tr>


        </table>
        <br>
        <input type="submit" class="submit" value="">
        <input type="button" class="cancel">
        <br><br>
    </form>


</div>

<br><br>

</body>
</html>
