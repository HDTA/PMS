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
    <%--<script src="../../../js/alert.js"></script>--%>
    <script src="../../../js/admin_add.js"></script>
    <style>
        #add .radio{
            width: 20px;
            height: 20px;
            background-color: #a5c261;
            color: #2b2b2b;

        }

        #add img{
            display: none;
        }

        #pop{
            width: 300px;
            height: 150px;
            background-color: rgba(0,0,0,0.3);
            position: fixed;
            left: 150px;
            top: 200px;
            text-align: center;
            display: none;
        }

        #pop .submit{
            background-image: url("../../../img/add-btn.png");
            width: 100px;
            height: 38px;


        }

        #pop #title{
            background-color: rgba(0,0,0,0.7);
            text-align: left;
            line-height: 35px;
            height: 35px;
        }

        #pop #context{
            color: #edeada;
        }


        #bg{
            width: 100%;
            height: 100%;
            background-color: rgba(240,100,100,0.2);
            position: fixed;
            left: 0px;
            top: 0px;
            display: none;

        }

    </style>

</head>
<body class="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able add" id="add" >

    <form action="${pageContext.request.contextPath}/admin/addHandle.do" method="post" >


        <table >
            <tr>
                <th>权限级别:</th>
                <td>
                    <input type="text" value="管理员" class="input read" readonly name="role">
                </td>
                <td ></td>

            </tr>

            <tr>
                <th>账户:</th>
                <td>
                    <input type="text" placeholder="5~30长度的字母、数字、下划线" class="input" name ="account" id="account">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>
            <tr>
                <th>姓名:</th>
                <td>
                    <input type="text" placeholder="2~20长度的字母、汉字" name ="username" id ="username" >
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>

            <tr>
                <th>密码:</th>
                <td>
                    <input type="password" placeholder="6~20长度" name ="password" id ="password">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>

            <tr>
                <th>确认密码:</th>
                <td>
                    <input type="password" name ="pwd" id ="pwd">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>
            <tr>
                <th>E-mail:</th>
                <td>
                    <input type="email" name ="email" id ="email">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>
            <tr>
            <th>TEL:</th>
            <td>
                <input type="text" name ="tel" id ="tel">
            </td>
            <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>


            <tr>
                <th>性别:</th>
                <td>
                    <label><input type="radio" name ="sex" class="radio" value="0"> 男</label>
                    &nbsp;&nbsp;
                    <label><input type="radio" name ="sex" class="radio" checked value="1"> 女</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/ok.png" style="display: inline"></td>

            </tr>

            <tr>
                <th>生日:</th>
                <td>
                    <input type="date" name ="birthday"  id ="birthday">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>
                <td><span></span></td>
            </tr>

            <tr>
                <th>地址:</th>
                <td>
                    <input type="text" name ="address">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>

            <tr>
                <th>信息:</th>
                <td>
                    <input type="text" name ="info" placeholder="其他补充说明">
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/no.png"></td>

            </tr>

            <tr>
                <th>验证码:</th>
                <td>
                    <input type="text" placeholder="输入验证码" class="code" id="code">
                    &nbsp;
                    <img src="../../../img/BHU9.jpg" class="vci" style="display: inline;" id="vci">
                    &nbsp;&nbsp;&nbsp;
                    <br>
                </td>
                <td>&nbsp;&nbsp;&nbsp;<img src="../../../img/ok.png"></td>
            </tr>


        </table>
        <br>
        <input type="button" class="submit" value="" id="submit">
        <input type="button" class="cancel" value="">
        <br><br>
    </form>


</div>

<div id="bg" style=""></div>

<div id="pop" >
    <p id="title">&nbsp;&nbsp;提示&nbsp;:</p>
    <br>
    <p id="context">这是一个窗口！</p>
    <input type="button" class="submit" id="pt">
</div>

<br><br>



</body>
</html>
