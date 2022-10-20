$(function() {

    $('.icon_eye').click(function (e) {

        let target_id = $(this).data('target-element');
        let element = $("#" + target_id);

        if (element.attr('type') === 'password') {
            element.attr('type', "text");
            $(this).addClass("fa-eye-slash");
        } else {
            element.attr('type', "password");
            $(this).removeClass("fa-eye-slash");
        }
    })
});

