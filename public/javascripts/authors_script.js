$(document).ready(function () {
    $('#authors').addClass("active");
});

function showAuthor(ID) {
    window.location.href = "/authors/" + ID;
}