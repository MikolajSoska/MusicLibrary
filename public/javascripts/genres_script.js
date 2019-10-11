$(document).ready(function () {
    $('#genres').addClass("active");
});

function showGenre(ID) {
    window.location.href = "/genres/" + ID;
}