$(window).scroll(function () {
    if ($(document).scrollTop() > 150) {
        $('#up-button').css("display", "block");
    } else {
        $('#up-button').css("display", "none");
    }
});

$(document).ready(function () {
    $('#up-button').click(function () {
        $('html, body').animate({scrollTop:0}, 300);
    });
})
