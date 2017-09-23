﻿//Based off of "Form Input with Show Password" by Rafi
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
        //The part below is directly lifted from Rafi's original code. All credit goes to him.
        //Try re-creating the element (yep... this sucks)
        //jQuery has no html() method for the element, so we have to put into a div first
        var html = $("<div>").append(x.clone()).html();
        var regex = /type=(\")?([^\"\s]+)(\")?/; //matches type=text or type="text"
        //If no match, we add the type attribute to the end; otherwise, we replace
        var tmp = $(html.match(regex) === null ?
            html.replace(">", ' type="' + type + '">') :
            html.replace(regex, 'type="' + type + '"'));
        //Copy data from old element
        tmp.data('type', x.data('type'));
        var events = x.data('events');
        var cb = function (events) {
            return function () {
                //Bind all prior events
                for (i in events) {
                    var y = events[i];
                    for (j in y)
                        tmp.bind(i, y[j].handler);
                }
            }
        }(events);
        x.replaceWith(tmp);
        setTimeout(cb, 10); //Wait a bit to call function
        return tmp;
    }
}