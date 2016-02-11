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
            #links {
                margin: 10px;
                text-align: center;
            }
            
            
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

        </style>
        <script src="${pageContext.request.contextPath}/resources/js/login/prefixfree.min.js"></script>
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
        <audio id="player_splin" src="${pageContext.request.contextPath}/resources/sound/login/splin_my_heart.mp3" loop ></audio>
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


        <div id="links">
            <a  href="${pageContext.request.contextPath}/love?action=about">
                <span class="underline-opening">
                    I Love You
                </span>
            </a>
        </div>

        <div id="links">
            <a  href="${pageContext.request.contextPath}/love?action=rain">
                <span class="underline-opening">
                    Rain
                </span>
            </a>
        </div>
        <div id="links">
            <a  href="${pageContext.request.contextPath}/love?action=slide">
                <span class="underline-opening">
                    Slide
                </span>
            </a>
        </div>

        <script type="text/javascript">
            document.getElementById("wings").addEventListener("mouseover", stop);
            document.getElementById("wings").addEventListener("mouseout", play);
            var cycle = 10;
            var myPlayer = document.getElementById('player');
            var myPlayer_heart = document.getElementById("player_splin");
            function stop() {
                document.getElementById('eye-r').style.animation;
                playerHelper(-0.05, 0.0, myPlayer, myPlayer_heart);
            }

            function play() {
                playerHelper(0.05, 1.0, myPlayer, myPlayer_heart);
            }
            function playerHelper(step, end, player, secondPlayer) {
                //начать повторы с интервалом 2 сек
                secondPlayer.volume = end;
                var timerId = setInterval(function () {
                    secondPlayer.play();
                    secondPlayer.volume += (step*(-1));
                    player.volume += step;
                }, 100);
                // через 2 сек остановить повторы
                setTimeout(function () {
                    clearInterval(timerId);
                    player.volume = end;
                }, 2000);
            }
            
            var heart = document.getElementsById('heart'),
                    eye_r = document.getElementsByClassName('eye')[0],
                    eye_l = document.getElementsByClassName('eye')[1],
                    pfx = ["webkit", "moz", "MS", "o", ""],
                    hovered = false;

            function AnimationListener() {
                if (hovered)
                {
                    eye_r.classList.remove('animated');
                    eye_r.style.webkitTransform = 'scale(2)';
                    eye_r.style.MozTransform = 'scale(2)';
                    eye_r.style.msTransform = 'scale(2)';
                    eye_r.style.OTransform = 'scale(2)';
                    eye_r.style.transform = 'scale(2)';
                }
            }

            function TransitionListener() {
                if (!hovered)
                {
                    eye_r.classList.add('animated');
                }
            }

            function PrefixedEvent(element, type, callback) {
                for (var p = 0; p < pfx.length; p++) {
                    if (!pfx[p])
                        type = type.toLowerCase();
                    element.addEventListener(pfx[p] + type, callback, false);
                }
            }

            PrefixedEvent(eye_r, "AnimationIteration", AnimationListener);

            heart.onmouseover = function () {
                hovered = true;
            };
            heart.onmouseout = function () {
                setTimeout(function () {
                    hovered = false;
                }, 500);
                PrefixedEvent(eye_r, "TransitionEnd", TransitionListener);
                eye_r.style.webkitTransform = 'scale(1)';
                eye_r.style.MozTransform = 'scale(1)';
                eye_r.style.msTransform = 'scale(1)';
                eye_r.style.OTransform = 'scale(1)';
                eye_r.style.transform = 'scale(1)';
            };
            
            /*--------------------------------*/

            /*var heart = document.getElementsByClassName('heart')[1],
                    pfx = ["webkit", "moz", "MS", "o", ""],
                    hovered = false;

            function AnimationListener() {
                if (hovered)
                {
                    heart.classList.remove('animated');
                    heart.style.webkitTransform = 'scale(2)';
                    heart.style.MozTransform = 'scale(2)';
                    heart.style.msTransform = 'scale(2)';
                    heart.style.OTransform = 'scale(2)';
                    heart.style.transform = 'scale(2)';
                }
            }

            function TransitionListener() {
                if (!hovered)
                {
                    heart.classList.add('animated');
                }
            }

            function PrefixedEvent(element, type, callback) {
                for (var p = 0; p < pfx.length; p++) {
                    if (!pfx[p])
                        type = type.toLowerCase();
                    element.addEventListener(pfx[p] + type, callback, false);
                }
            }

            PrefixedEvent(heart, "AnimationIteration", AnimationListener);

            heart.onmouseover = function () {
                hovered = true;
            }
            heart.onmouseout = function () {
                setTimeout(function () {
                    hovered = false;
                }, 500);
                PrefixedEvent(heart, "TransitionEnd", TransitionListener);
                heart.style.webkitTransform = 'scale(1)';
                heart.style.MozTransform = 'scale(1)';
                heart.style.msTransform = 'scale(1)';
                heart.style.OTransform = 'scale(1)';
                heart.style.transform = 'scale(1)';
            }*/


        </script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>
</html>
