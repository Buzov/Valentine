(function ($) {
    $(function () {
        $("#stop").click(function () {
            $("#eye-r").addClass("off");
        });
        $("#start").click(function () {
            $("#eye-r").removeClass("off");
        });
    });

})(jQuery);