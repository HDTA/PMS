var confirmCallbacks = '';
var alertCallbacks = '';
/*至少一个参数des*/
function alert(title,des,callback){
    if(!title){
        top.alert('请为alert函数输入正确的参数！');
        return;
    }else if(!des){
        des = title;
        title = '信息提示';
    }else if(des && !callback){
        if(typeof des == 'function'){
            callback = des;
            des = title;
            title = '信息提示';
        }
    }
    $('.xgalert .modal-header').addClass('warning')
    $('#alert_title').html(title);
    $('#alert_des').html(des);
    $('.btn.btn-warning').html('确定').show();
    $('.btn.btn-primary').hide();
    alertCallbacks = callback;
    $('.xgalert').addClass('active');
    setTimeout(function(){$('.btn.btn-warning')[0].focus()},100);
}

//注意此处confirm不能使用if(confirm('确认？') == true){expression}这种方式,
//只能把expression写到回调中
//至少两个参数des,callback
function confirm(title,des,callback){
    if(!title || !des){
        top.alert('请为confirm函数输入正确的参数！');
        return;

    }else if(!callback){
        callback = des;
        des = title;
        title = '信息提示';
    }
    $('.xgalert .modal-header').removeClass('warning')
    $('.xgalert').addClass('active')
    $('#alert_title').html(title);
    $('#alert_des').html(des);
    $('.btn.btn-warning').html('取消').show();
    $('.btn.btn-primary').html('确定').show();
    confirmCallbacks = callback;
    $('.xgalert').addClass('active')
    setTimeout(function(){$('.btn.btn-warning')[0].focus()},100);
}

$(function(){
    $(document).on('click','.xgalert .btn.btn-warning',function(){
        //必须要先关闭弹出框，然后在执行回调（防止回调中有对弹出框的处理导致显示错误）
        $('.xgalert').removeClass('active');

        if(alertCallbacks){
            alertCallbacks();
        }
        alertCallbacks = '';

    }).on('click','.xgalert .close',function(){
        $('.xgalert').removeClass('active');
    }).on('click','.xgalert .btn.btn-primary',function(){
        //必须要先关闭弹出框，然后在执行回调（防止回调中有对弹出框的处理导致显示错误）
        $('.xgalert').removeClass('active');

        if(confirmCallbacks){
            confirmCallbacks();
        }else{
            alert('没有回调函数！')
        }
        confirmCallbacks = '';

    });
})

window.alert = alert;
window.confirm = confirm;