
$(function () {
    listener();
});

/* 监听器 */
function listener() {


    /*添加管理员*/
    $('#add').click(function () {
        location.href = "/admin/add.do";
    });

    /*删除当前页的所有管理员*/
    $('#delAll').click(function () {

    });


   $('#info').click(function (ev) {
        var e = ev || event;
        var target = e.target.getAttribute("src");
        if(target === "../../img/modify.png"){
            location.href = "/admin/modify.do";
        }

   });

   $('#first').click(function () {
       var $form = $('<form action="/login/login.do" method="post"></form>');
       var $body = $('body');
       $form.appendTo($body);
       $form.submit();
       $body.remove($form);

       // location.href = "/login/login.do";
   });

    $('#logout').click(function () {
        location.href = "/login/index.do";
    });













}