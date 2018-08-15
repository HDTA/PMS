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

<style>

    #add #per td{
        text-align: center;
        /*line-height: 20px;*/
        vertical-align: middle;
        border:1px solid rgba(100,100,100,0.1);
    }

    #add #per th{
        text-align: right;
        /*line-height: 20px;*/
        vertical-align: middle;
        border:1px solid rgba(100,100,100,0.1);
    }



    #add #per #td{
        text-align: center;
    }
    #add #per input{
        width: 15px;
        height: 15px;

    }


    #add #per .read{
        background-color: rgba(255,255,255,0.1);
        text-align: center;
        color: #a5c261;
        width: 350px;
        height: 40px;
        font-size: large;
    }




    #add #but .submit{
        background-image: url("../../../img/add-btn.png");
        width: 100px;
        height: 38px;

    }

    #add #but .cancel{
        background-image: url("../../../img/add-cancel.png");
        width: 100px;
        height: 38px;

    }

    #add #per .code{
        width: 130px;
        height: 38px;
    }

    #add {
        height: 900px;
    }

</style>


</head>
<body class="body" id="body">
<jsp:include page="../public/logo.jsp"/>

<div class="able " id="add"   >

    <form action="" method="post">

        <table id="per">
            <tr>
                <th>
                    <span>权限级别:</span>
                </th>
                <td colspan="4" id="td">
                    <input type="text" value="管理员" class=" read" readonly >

                </td>
            </tr>

            <tr>
                <th>
                    <span>管理员模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>业主模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>



            <tr>
                <th>
                    <span>员工模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>用户模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>权限模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>楼房模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>资费模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>物资模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>


            <tr>
                <th>
                    <span>维修模块:</span>
                </th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <label><input type="checkbox"/> <span>A-添加</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>D-删除</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>M-修改</span></label>
                </td>
                <td>
                    <label><input type="checkbox"/> <span>S-查看</span></label>
                </td>
            </tr>

            <%--<tr>--%>
                <%--<th >--%>
                    <%--<span>验证码:</span>--%>
                <%--</th>--%>

                <%--<td >--%>
                    <%--<input type="text" placeholder="输入验证码" class="code">--%>
                <%--</td>--%>
                <%--<td><img src="../../../img/BHU9.jpg" class="vci"></td>--%>
                <%--<td><img src="../../../img/ok.png"></td>--%>
                <%--<td></td>--%>


            <%--</tr>--%>


        </table>

        <br>
    </form>
    <div id="but">
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" class="submit" value="">
    &nbsp;
    <input type="button" class="cancel">
    <br><br>
    </div>
</div>

<br><br><br>

</body>
</html>
