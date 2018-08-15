
$(function () {
    listener();
});

/* 监听器 */
function listener() {


    /*图片名称和请求名称对应关系*/
    $('#table').click(function (evt) {
        var e = evt || event;
        var target = e.target.getAttribute("src");
        var temp = target.split("/");
        location.href = "/success/"+temp[temp.length-1].split(".")[0] + ".do";
    });


}