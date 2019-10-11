$(document).ready(function () {
    $('#enter_button').click(function () {
        $('#container').fadeOut(function () {
            $('#up').slideUp("slow", function () {
                window.location.href = "/home";
                $('nav').css("display", "block");
                $('#main').css("display", "block");
            });
        });
    })
});

