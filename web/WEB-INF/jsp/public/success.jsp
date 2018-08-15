<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/9
  Time: 1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>物业管理系统</title>
    <link rel="stylesheet" href="../../../css/global.css">
    <link rel="stylesheet" href="../../../css/success.css">
    <script src="../../../js/jquery-1.8.3.js"></script>
    <script src="../../../js/success.js"></script>
    <style>
        table{
            width: 300px;
            height: 300px;
            text-align: center;
            border-collapse: separate;
            border-spacing:10px;

        }

        #table th,#table td{
            border: 2px solid #009bd8;
            box-shadow: 3px 3px 3px;
        }

        #table th:hover,#table td:hover{
            cursor: pointer;
        }
    </style>
</head>
<body class="body">
<div class="logo shadow" >
    <img src="../../../img/logo.png">
</div>
    <div class="able shadow">
        <table id="table" >
            <tr>
                <td><img src="../../../img/admin.png"/></td>
                <td><img src="../../../img/owner.png"/></td>
                <td><img src="../../../img/emp.png"/></td>
            </tr>

            <tr>
                <td><img src="../../../img/member.png"/></td>
                <td><img src="../../../img/permission.png"/></td>
                <td> <img src="../../../img/house.png"/></td>
            </tr>

            <tr>
                <td><img src="../../../img/tariff.png"/></td>
                <td><img src="../../../img/material.png"/></td>
                <td><img src="../../../img/fix.png"/></td>
            </tr>
        </table>

    </div>
</body>
</html>
