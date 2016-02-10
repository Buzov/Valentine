<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Valentine</title>

        <link href="${pageContext.request.contextPath}/resources/css/login/owl.css" rel="stylesheet" type="text/css">

        <link href="${pageContext.request.contextPath}/resources/css/login/hover.css" rel="stylesheet" type="text/css">

        <link href="${pageContext.request.contextPath}/resources/css/login/slide_normalize.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/resources/css/login/slide.css" rel="stylesheet" type="text/css">

        <style>
            #izq {
                background: url(${pageContext.request.contextPath}/resources/img/login/vulcano_izq.jpg) no-repeat top right;
            }

            #der {
                background: url(${pageContext.request.contextPath}/resources/img/login/vulcano_der.jpg) no-repeat left top;
                left:50%;
            }

            /* Most of the heart's CSS came from the Shapes of CSS  */
            /* http://css-tricks.com/examples/ShapesOfCSS/          */
/*            .heart {
                position: relative;
                width: 100px;
                height: 90px;
                margin: 30px;

                -webkit-transform: scale(1);
                -ms-transform: scale(1);
                -o-transform: scale(1);
                -moz-transform: scale(1);
                transform: scale(1);
                -webkit-transform-origin: center center;
                -moz-transform-origin: center center;
                -ms-transform-origin: center center;
                -o-transform-origin: center center;
                transition: all 1s; 
            }*/
            .heart.css {  
                -webkit-animation-delay:1s;
                -moz-animation-delay:1s;
                -ms-animation-delay:1s;
                -o-animation-delay:1s;
                animation-dely:1s;
            }
            .heart.animated {
                -webkit-animation: 1600ms pulsate infinite alternate ease-in-out;
                -moz-animation: 1600ms pulsate infinite alternate ease-in-out;
                -ms-animation: 1600ms pulsate infinite alternate ease-in-out;
                -o-animation: 1600ms pulsate infinite alternate ease-in-out;
                animation: 1600ms pulsate infinite alternate ease-in-out;
            }
/*            .heart:before,
            .heart:after { 
                position: absolute; 
                content: "";
                left: 50px;
                top: 0;
                width: 50px;
                height: 80px;
                background: red;
                -moz-border-radius: 50px 50px 0 0;
                border-radius: 50px 50px 0 0;
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
                -webkit-transform-origin: 0 100%;
                -moz-transform-origin: 0 100%;
                -ms-transform-origin: 0 100%;
                -o-transform-origin: 0 100%;
                transform-origin: 0 100%;
            }
            .heart:after {
                left: 0;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                transform: rotate(45deg);
                -webkit-transform-origin: 100% 100%;
                -moz-transform-origin: 100% 100%;
                -ms-transform-origin: 100% 100%;
                -o-transform-origin: 100% 100%;
                transform-origin :100% 100%;
            }*/
            .heart.css:hover {
                -webkit-transform: scale(1.1);
                -moz-transform: scale(1.1);
                -ms-transform: scale(1.1);
                -o-transform: scale(1.1);
                transform: scale(1.1);
                -webkit-animation:'';
                -moz-animation:none;
                -ms-animation:'';
                -o-animation:'';
                animation:'';
            }

            @keyframes pulsate {
                0% { transform: scale(0.9); }
                50% { transform: scale(1.1); }
                100% { transform: scale(0.9); }
            }
            @-webkit-keyframes pulsate {
                0% { transform: scale(0.9); }
                50% { transform: scale(1.1); }
                100% { transform: scale(0.9); }
            }
            @-moz-keyframes pulsate {
                0% { transform: scale(0.9); }
                50% { transform: scale(1.1); }
                100% { transform: scale(0.9); } 
            }
            @-ms-keyframes pulsate {
                0% { transform: scale(0.9); }
                50% { transform: scale(1.1); }
                100% { transform: scale(0.9); } 
            }
            @-o-keyframes pulsate {
                0% { transform: scale(0.9); }
                50% { transform: scale(1.1); }
                100% { transform: scale(0.9); }
            }
        </style>
        <script src="${pageContext.request.contextPath}/resources/js/login/prefixfree.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/login/stop_anim.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

        <script type="text/javascript">
            document.getElementById("heart").addEventListener("click", agreeForm);
            function agreeForm() {
                document.getElementById('player').pause();
            }
        </script>

        <link href="${pageContext.request.contextPath}/resources/css/login/test_anim.css" rel="stylesheet" type="text/css">

    </head>
    <body id="transition_disabled">

        <audio id="player" src="${pageContext.request.contextPath}/resources/sound/Celldweller.mp3" autoplay loop ></audio>

        <!--<input type="checkbox" name="agree" onclick="agreeForm(this.form)"/>-->
        <input type="checkbox"/>
        <div id="izq"></div> <div id="der"></div>

        <div class="lovely-owl">
            <div class="head">
                <div class="beak"></div>
                <div id="eye-r" class="eye eye-r" onclick="document.getElementById('player').play()" onmouseover="agreeForm"></div>
                <div id="eye-l" class="eye eye-l" onclick="document.getElementById('player').pause()"></div>  
            </div>
            <div id="wings" class="wings" >
                <div id="heart" class="heart animated css"></div>
                <div class="belly"></div>

                <div class="feet left"></div>
                <div class="feet right"></div>


                <div class="hearts heart1">
                    <a href="http://htmlbook.ru/faq/kak-sdelat-chtoby-sloy-tselikom-byl-ssylkoy"></a>
                </div>
                <div class="hearts heart2"></div>
                <div class="hearts heart3"></div>
            </div>

            <div class="branch"></div>
        </div>


        <div style="text-align: center;">
            <a  href="${pageContext.request.contextPath}/love?action=about">
                <span class="underline-opening">
                    I Love You
                </span>
            </a>
        </div>

        <div style="text-align: center;">
            <a  href="${pageContext.request.contextPath}/love?action=rain">
                <span class="underline-opening">
                    Rain
                </span>
            </a>
        </div>
        <div style="text-align: center;">
            <a  href="${pageContext.request.contextPath}/love?action=slide">
                <span class="underline-opening">
                    Slide
                </span>
            </a>
        </div>

        <div id="animated">
            <a  href="${pageContext.request.contextPath}/love?action=slide">

                Slide

            </a>
        </div>

        <div style="text-align: center;">
            <button id="stop">Stop</button>
            <button id="start">Start</button>
        </div>
        <div style="text-align: center;" id="animated"></div>


        <canvas id="heart"></canvas>          

        <script type="text/javascript">
            document.getElementById("wings").addEventListener("mouseover", stop);
            document.getElementById("wings").addEventListener("mouseout", play);
            var cycle = 10;
            var myPlayer = document.getElementById('player');
            function stop() {
                document.getElementById('eye-r').style.animation;
                playerHelper(-0.05, 0.0, myPlayer);
            }

            function play() {
                playerHelper(0.05, 1.0, myPlayer);
            }
            function playerHelper(step, end, player) {
                //начать повторы с интервалом 2 сек
                var timerId = setInterval(function () {
                    player.volume += step;
                }, 100);
                // через 2 сек остановить повторы
                setTimeout(function () {
                    clearInterval(timerId);
                    player.volume = end;
                }, 2000);
            }
        </script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>
</html>
