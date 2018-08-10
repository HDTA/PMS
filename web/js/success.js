
$(function () {
    listener();
});

/* 监听器 */
function listener() {
    $('#admin').click(function () {
        location.href = "/success/admin.do";
    });

    $('#owner').click(function () {
        location.href = "/success/owner.do";
    });

    $('#emp').click(function () {
        location.href = "/success/emp.do";
    });

    $('#member').click(function () {
        location.href = "/success/member.do";
    });

    $('#permission').click(function () {
        location.href = "/success/permission.do";

    });

    $('#house').click(function () {
        location.href = "/success/house.do";

    });

    $('#tariff').click(function () {
        location.href = "/success/tariff.do";

    });

    $('#material').click(function () {
        location.href = "/success/material.do";

    });

    $('#fix').click(function () {
        location.href = "/success/fix.do";

    });





}