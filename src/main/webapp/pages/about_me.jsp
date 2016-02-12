<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Your maniac</title>

        <style>
            html, body {
                height:100%;}
            table {
                width:100%; 
                height:100%
            }
            td{
                text-align: center;
                tvertical-align: middle;
            }
            td h2 {
                text-align: center;
                tvertical-align: middle;
            }
            td h2 span{
                text-align: center;
                tvertical-align: middle;}
            </style>

        </head>
        <body>
            <audio id="player" src="${pageContext.request.contextPath}/resources/sound/about_me/Jace Everett - I Wanna Do Bad Things With You.mp3" autoplay loop ></audio>
        <table>
            <tr>
                <td>
                    <div>
                        <button id="btn">random</button>
                        <div style="width: 70%; margin: 0 auto; text-align: center;">
                            <h2 id="rmd">I'm your maniac-engineer</h2>
                        </div>
                    </div>
                </td>
            </tr>
        </table>

        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/about_me/random_later.js"></script>

        <script type="text/javascript">
            var timerId = setInterval(function () {
                threateningLetter("#rmd");
            }, 5000);
        </script>

    </body>
</html>
