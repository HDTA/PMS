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
    <style>
        #add .radio{
            width: 20px;
            height: 20px;
            background-color: #a5c261;
            color: #2b2b2b;

        }


    </style>

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
                <th>维修人:</th>
                <td>
                    <input type="text" placeholder="5~20长度的字母、数字、汉字">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>


            <tr>
                <th>维修进度:</th>
                <td>
                    <label><input type="radio" name="schedule" class="radio">&nbsp;&nbsp;待维修</label>&nbsp;&nbsp;&nbsp;
                    <label><input type="radio" name="schedule" class="radio">&nbsp;&nbsp;维修中...</label>&nbsp;&nbsp;&nbsp;
                    <label><input type="radio" name="schedule" class="radio">&nbsp;&nbsp;已完成</label>&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>
            <tr>
                <th>维修时间:</th>
                <td>
                    <input type="text" value="">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
            </tr>

            <tr>
                <th>客户反馈:</th>
                <td>
                    <input type="text" value="">
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
