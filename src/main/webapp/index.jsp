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
                <div id="heart" class="heart"></div>
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
