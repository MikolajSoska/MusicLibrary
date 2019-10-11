$(document).ready(function () {
    var comment = $('#comment');
    comment.hide();

    $('#button').click(function () {
        $(this).fadeOut(function () {
            comment.slideDown("slow");
        });
    });

    $('#cancel-button').click(function () {
        comment.slideUp("slow", function () {
            $('#button').fadeIn();
        });
    })
});
