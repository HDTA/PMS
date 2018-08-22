/*检查所有的必须项是否OK*/
var flag = true;
$(function () {
    listener();
    $('#vci').click();
});

/* 监听器 */
function listener() {
    $('#account').blur(function () {
        var reg = /^[A-Za-z][A-Za-z_0-9]{4,29}$/;
        var value =  account($(this),reg,"账户");
        flag = flag && value;
    });

    $('#username').blur(function () {
        var reg = /^[\u4e00-\u9fa5A-Za-z]{2,20}$/;
        var value =   account($(this),reg,"姓名");
        flag = flag && value;
    });

    $('#password').blur(function () {
        var reg = /^.{6,20}$/;
        var value =   account($(this),reg,"密码");
        flag = flag && value;
    });

    $('#pwd').blur(function () {
        var reg = /^.{6,20}$/;
        account($(this),reg,"确认密码");
        if($(this).val() !== $('#password').val()){
            var $img = $(this).parent().next().find('img').eq(0);
            $img.attr("src","../../../img/no.png");
            Alert("密码不一致！");
            flag =  false;
        }
    });

    /*
     * @之前必须有内容且只能是字母（大小写）、数字、下划线(_)、减号（-）、点（.）
     * @和最后一个点（.）之间必须有内容且只能是字母（大小写）、数字、点（.）、减号（-），且两个点不能挨着
     * 最后一个点（.）之后必须有内容且内容只能是字母（大小写）、数字且长度为大于等于2个字节，小于等于6个字节
     */
    $('#email').blur(function () {
        var reg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
        var value =   account($(this),reg,"邮箱");
        flag = flag && value;
    });

    $('#tel').blur(function () {
        var reg = /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/;
        var value =   account($(this),reg,"手机号码");
        flag = flag && value;
    });

    $('#birthday').blur(function () {
        var reg = /^(19|20)\d{2}-(1[0-2]|0?[1-9])-(0?[1-9]|[1-2][0-9]|3[0-1])$/;
        var value =   account($(this),reg,"生日");
        flag = flag && value;
    });

    $('#pt').click(function () {
        Alert();
    });
    
    $('#vci').click(function () {

        $(this).attr("src","/login/code.do?id="+Math.random());
    });

    $('#code').blur(function () {
        var reg = /^[A-Za-z0-9]{4}$/;
        var value =   account($(this),reg,"验证码");
        flag = flag && value;

        verifyCode();
    });

    $('#submit').click(function () {

        check();

    });


}

function account($this,reg,msg) {

    var $val = $this.val();
    var $img = $this.parent().next().find('img').eq(0);
    var result = false;

    if($val.length === 0){
        $img.attr("src","../../../img/no.png");
        Alert(msg+"内容不能为空！");

    }else if(reg.test($val)){
        $img.attr("src","../../../img/ok.png");
        result = true;
    }else {
        $img.attr("src","../../../img/no.png");
        Alert(msg+"格式不正确！");
    }

    $img.css("display","inline");
    return result;

}

/*弹出窗口*/
function Alert(context) {
    if(context) {
        $('#bg').css("display", "block");
        $('#pop').css("display", "block");
        $('#context').html(context);

    }else {
        $('#bg').css("display", "none");
        $('#pop').css("display", "none");
        /*刷新验证码*/
        $('#vci').click();
    }
}





/*验证验证码*/
function verifyCode() {

    var data={
        value:$("#code").val()
    };
    $.ajax({
        contentType : "application/json;charset=utf-8",
        url:"/login/value.do",
        async:true,
        cache:false,
        timeout:100000,
        type:"POST",
        data:JSON.stringify(data),
        dataType:"json",
        success:function (result) {
            var json = JSON.stringify(result);
            var $img = $('#code').parent().next().find('img').eq(0);
            if(json === "true"){
                $img.attr("src","../../../img/ok.png");
            }else{
                $img.attr("src","../../../img/no.png");
                Alert("验证码不正确！");
                flag = false;
            }

            $img.css("display","inline");
        },
        error:function (result) {
            // var json = JSON.stringify(result);
            alert("error!");
        }

    });
}



function check() {
    flag = true;
    if(flag) $('#account').blur();
    if(flag) $('#username').blur();
    if(flag) $('#password').blur();
    if(flag) $('#pwd').blur();
    if(flag) $('#email').blur();
    if(flag) $('#tel').blur();
    if(flag) $('#birthday').blur();
    if(flag) $('#code').blur();

    if(flag){
        Alert("888888");
    }
}


