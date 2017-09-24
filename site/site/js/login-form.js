//Based off of "Form Input with Show Password" template for Foundation framework by Rafi
//https://foundation.zurb.com/building-blocks/blocks/show-password.html

$("document").foundation();

$("document").ready(function () {
    $(".unmask").on("click", function () {
        if ($(this).prev("input").attr("type") === "password") {
            changeType($(this).prev("input"), "text");
        } else {
            changeType($(this).prev("input"), "password");
        }
        return false;
    });
});

function changeType(x, type) {
    if (x.prop("type") === type) {
        return x;
    }
    try {
        return x.prop("type", type);
    } catch (e) {
        console.error("This browser currently does not support the show password feature.");
    }
}
