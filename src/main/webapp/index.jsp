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
                z-index: 300;
            }


            #izq {
                background: url(${pageContext.request.contextPath}/resources/img/login/vulcano_izq.jpg) no-repeat top right;
            }

            #der {
                background: url(${pageContext.request.contextPath}/resources/img/login/vulcano_der.jpg) no-repeat left top;
                left:50%;
            }
            .heart1{
                animation: heart-anim_1 1s linear .4s infinite;
            }
            .heart2{
                animation: heart-anim_2 3s linear 1.3s infinite;
            }
            .heart3{
                animation: heart-anim_3 2s linear 1.0s infinite;
            }
/*            .heart2{
                animation: pounding .5s linear infinite alternate;
            }*/
            .heart1:after, .heart1:before{
                background-color: #ff7693;
            }

/*            @keyframes pounding{
                0%{ transform: scale(1.5); }
                100%{ transform: scale(1); }
            }*/
            @keyframes heart-anim_1 {
                46% {
                    z-index: -10;
                    transform: rotate(10deg) scale(1);
                }
                50% {
                    z-index: -10;
                    transform: rotate(5deg) scale(1.3);
                }
                52% {
                    z-index: -10;
                    transform: rotate(5deg) scale(1.5);
                }
                55% {
                    z-index: -10;
                    opacity: 0.5;
                    transform: rotate(5deg) scale(3);
                }
                100% {
                    z-index: -10;
                    opacity: 0;
                    transform: rotate(5deg) scale(50);
                }
            }
            @keyframes heart-anim_2 {
                46% {
                    z-index: -10;
                    transform: rotate(0deg) scale(1);
                }
                50% {
                    z-index: -10;
                    transform: rotate(-1deg) scale(1.3);
                }
                52% {
                    z-index: -10;
                    transform: rotate(-2deg) scale(1.5);
                }
                55% {
                    z-index: -10;
                    opacity: 0.5;
                    transform: rotate(-5deg) scale(3);
                }
                100% {
                    z-index: -10;
                    opacity: 0;
                    transform: rotate(-10deg) scale(50);
                }
            }
            @keyframes heart-anim_3 {
                46% {
                    z-index: -10;
                    transform: rotate(-15deg) scale(1);
                }
                50% {
                    z-index: -10;
                    transform: rotate(-20deg) scale(1.3);
                }
                52% {
                    z-index: -10;
                    transform: rotate(-20deg) scale(1.5);
                }
                55% {
                    z-index: -10;
                    opacity: 0.5;
                    transform: rotate(-15deg) scale(3);
                }
                100% {
                    z-index: -10;
                    opacity: 0;
                    transform: rotate(-10deg) scale(50);
                }
            }

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

        <audio id="player" src="${pageContext.request.contextPath}/resources/sound/login/splin_say_i_love_her.mp3" autoplay loop ></audio>
        <audio id="player_splin" src="${pageContext.request.contextPath}/resources/sound/login/splin_my_heart_4.mp3" loop ></audio>
        <!--<input type="checkbox" name="agree" onclick="agreeForm(this.form)"/>-->
        <input type="checkbox"/>
        <div id="izq"></div> <div id="der"></div>

        <div id="owl" class="lovely-owl">
            <div class="head">
                <div class="beak"></div>
                <div id="eye-r" class="eye animated eye-r" onclick="document.getElementById('player').play()" onmouseover="agreeForm"></div>
                <div id="eye-l" class="eye animated eye-l" onclick="document.getElementById('player').pause()"></div>  
            </div>
            <div id="wings" class="wings" >
                <div id="heart" class="heart animated css"></div>
<!--                <div class="heart heart1"></div>-->
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
                <span class="underline-opening" style="z-index: 300;">
                    I Love You
                </span>
            </a>
        </div>

        <div id="links">
            <a  href="${pageContext.request.contextPath}/love?action=rain">
                <span class="underline-opening" style="z-index: 300;">
                    Rain
                </span>
            </a>
        </div>
        <div id="links">
            <a  href="${pageContext.request.contextPath}/love?action=slide">
                <span class="underline-opening" style="z-index: 300;">
                    Slide
                </span>
            </a>
        </div>

        <script type="text/javascript">
            document.getElementById("heart").addEventListener("mouseover", stop);
            document.getElementById("heart").addEventListener("mouseout", play);
            document.getElementById("heart").addEventListener("mouseover", stopEye);
            document.getElementById("heart").addEventListener("mouseout", startEye);
            var cycle = 10;
            var myPlayer = document.getElementById('player');
            var myPlayer_heart = document.getElementById("player_splin");
            function stop() {
                //document.getElementById('eye-r').style.animation;
                stopHelper(myPlayer, myPlayer_heart);
            }

            function play() {
                playHelper(myPlayer, myPlayer_heart);
            }

            function stopHelper(player, secondPlayer) {
                var end = 0.0;
                var step = 0.1;
                secondPlayer.volume = end;
                secondPlayer.play();
                var timerId = setInterval(function () {
                    if ((player.volume - step) < 0.0) {
                        player.stop();
                    } else {
                        player.volume -= step;
                    }
                    if ((secondPlayer.volume + step) > 1.0) {
                        player.stop();
                    } else {
                        secondPlayer.volume += step;
                    }
                }, 100);
                setTimeout(function () {
                    clearInterval(timerId);
                    secondPlayer.volume = 1.0;
                    player.volume = end;
                    player.stop();
                }, 2000);
            }

            function playHelper(player, secondPlayer) {
                //начать повторы с интервалом 2 сек
                var end = 1.0;
                var step = 0.1;
                player.play();
                var timerId = setInterval(function () {
                    if ((player.volume + step) > 1.0) {
                        secondPlayer.stop();
                    } else {
                        player.volume += step;
                    }
                    if ((secondPlayer.volume - step) < 0.0) {
                        secondPlayer.stop();
                    } else {
                        secondPlayer.volume -= step;
                    }
                }, 100);
                // через 2 сек остановить повторы
                setTimeout(function () {
                    clearInterval(timerId);
                    player.volume = end;

                    secondPlayer.volume = 0.0;
                    secondPlayer.stop();
                }, 2000);
            }

            function stopEye() {
                document.getElementsByClassName('eye')[0].classList.remove('animated');
                document.getElementsByClassName('eye')[1].classList.remove('animated');
            }

            function startEye() {
                document.getElementsByClassName('eye')[0].classList.add('animated');
                document.getElementsByClassName('eye')[1].classList.add('animated');
            }
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
