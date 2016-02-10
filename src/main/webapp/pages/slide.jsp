<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slide</title>
        <link href="${pageContext.request.contextPath}/resources/css/slide/style_index.css" rel="stylesheet" type="text/css">
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/slide/slide.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/slide/slide_library.js"></script>
    </head>
    <body>
        <audio autoplay="true" >
            <source src="resources/sound/Celldweller.mp3" type="audio/mp3" />
        </audio>

        <div id="accordion">
            <a href="#" class="cell">
                <div class="focus"></div>
            </a>
            <a href="#" class="cell">
                <div class="focus"></div>
            </a>
            <a href="#" class="cell">
                <div class="focus"></div>
            </a>
            <a href="#" class="cell">
                <div class="focus"></div>
            </a>
        </div>
    </body>
</html>
