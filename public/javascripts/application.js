// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
(function ($) {
    console.log("init js")
    $("*[data-confirm]").live("click", function  () {
        var msg = $(this).attr("data-confirm");
        if(!confirm(msg)) return false;
        return true;
    });

    $("*[data-method]").live("click", function  () {
        var self = $(this);
        $.ajax({
            url: self.attr("href"),
            type: self.attr("data-method")
        });
    });
})(window.jQuery);
