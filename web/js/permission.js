
$(function () {
    listener();
});

/* 监听器 */
function listener() {


    /*添加管理员*/
    $('#add').click(function () {
        location.href = "/permission/add.do";
    });

    /*删除当前页的所有管理员*/
    $('#delAll').click(function () {

    });


   $('#info').click(function (ev) {
        var e = ev || event;
        var target = e.target.getAttribute("src");
        console.log(target);
        if(target === "../../../img/modify.png"){
            location.href = "/permission/modify.do";
        }

   });















}