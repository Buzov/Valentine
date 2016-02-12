function threateningLetter($element) {
    var text = $($element).text();

    var letters = [];

    var html = "";

    var font_size = [28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48],
            color = ["#f1f0ef", "#e0dad3", "#ffe6f9", "#e6fff7", "#fff4e6", "#fff0f8", "#f7f0ff", "#fdfff0", "#bdbdbd"],
            background = ["#054f9a", "#8e140f", "#28231f", "#34c7b6", "#57c9fa", "#433e3a", "#fa9b57", "#10133c", "#221816", "#05820e", "#aba309", "#650094", "#c2048f"],
            font_weight = ["normal", "bold", "900"],
            font_family = ["Arial, Helvetica, sans-serif", "Impact, Charcoal, sans-serif", "Verdana, Geneva, sans-serif", "Georgia, sans-serif"],
            transform = ["rotate(-5deg) translateY(-10px)", "rotate(-4deg) translateY(-5px)", "rotate(-3deg)  translateY(5px)", "rotate(-2deg) translateY(10px)", "rotate(-1deg)  translateY(2px)", "rotate(0deg) translateY(1px)", "rotate(1deg) translateY(9px)", "rotate(2deg) translateY(6px)", "rotate(3deg) translateY(3px)", "rotate(4deg) translateY(-7px)", "rotate(5deg) translateY(-8px)"],
            text_transform = ["uppercase", "lowercase"];


    for (var i = 0; i < text.length; i++) {
        if (text[i] != " ") {
            if (i == 0) {
                html += randomizerUpperCase(text[i]);
            } else {
                html += randomizer(text[i]);
            }
        } else {
//          html += "<span style='float: left; padding: 10px'> </span>";
            html += "<span style='float: left; padding: 10px'> </span>";
        }
    }
    ;


    function randomizer(letter) {

        var font_size_random = font_size[Math.floor(Math.random() * font_size.length)],
                color_random = color[Math.floor(Math.random() * color.length)],
                background_random = background[Math.floor(Math.random() * background.length)],
                font_weight_random = font_weight[Math.floor(Math.random() * font_weight.length)],
                font_family_random = font_family[Math.floor(Math.random() * font_family.length)],
                transform_random = transform[Math.floor(Math.random() * transform.length)],
                text_transform_random = text_transform[Math.floor(Math.random() * text_transform.length)];

        return "<span style='font-size:" + font_size_random + "; color: " + color_random + "; background: " + background_random + "; font-weight: " + font_weight_random + "; font-family: " + font_family_random + "; transform: " + transform_random + "; text-transform: " + text_transform_random + "; margin: 2px" + "; padding: 8px" + "; display: block" + "; float: left" + "; box-shadow: 1px 1px 4px #000" + ";'>" + letter + "</span>";
    }

    function randomizerUpperCase(letter) {

        var font_size_random = font_size[Math.floor(Math.random() * font_size.length)],
                color_random = color[Math.floor(Math.random() * color.length)],
                background_random = background[Math.floor(Math.random() * background.length)],
                font_weight_random = font_weight[Math.floor(Math.random() * font_weight.length)],
                font_family_random = font_family[Math.floor(Math.random() * font_family.length)],
                transform_random = transform[Math.floor(Math.random() * transform.length)],
                text_transform_random = text_transform[0];

        return "<span style='font-size:" + font_size_random + "; color: " + color_random + "; background: " + background_random + "; font-weight: " + font_weight_random + "; font-family: " + font_family_random + "; transform: " + transform_random + "; text-transform: " + text_transform_random + "; margin: 2px" + "; padding: 8px" + "; display: block" + "; float: left" + "; box-shadow: 1px 1px 4px #000" + ";'>" + letter + "</span>";
    }


    $($element).html(html);

}

threateningLetter("#rmd");

$("#btn").click(function () {
    threateningLetter("#rmd");
});