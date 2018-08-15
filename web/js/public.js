$(function () {
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
});