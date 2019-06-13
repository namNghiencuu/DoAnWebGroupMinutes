<!DOCTYPE html>
<htmk>
    <head>
            <title> Football News, Live Scores, Results & Transfer | Minutes.com </title>
            <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/PageLogo/logo.png">
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheet/terms.css" />
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
            <link rel="stylesheet" href="https://bit.ly/2Jc8yDJ">
            <link rel="stylesheet" href="https://bit.ly/2IptVj3">
            <link rel="preload" href="/rebuild-beta-assets/fonts/goal-icons.woff2?v=3.96.0" as="font" type="font/woff2"
              crossorigin="anonymous" />
            <meta charset="utf-8" />
    </head>
    <body>
    <%@ include file="clientHeader.jsp"%>
        <section class="body1">
            <!---header-->
            <div id="navbar">
                    <div class="logo">
                        <a><img src="${pageContext.request.contextPath}/images/PageLogo/MinutesIcon.png" width="inherit;" /></a>
                    </div>
                    <div><a href="./homepage.html">News</a>
                    </div>
                    <div><a href="./transfer.html">Live
                            Scores</a></div>
                    <div><a href="Leagues&Cups">Leagues & Cups</a></div>
                    <div><a href="./test1.html">Teams</a></div>
                    <div class="search-box">
                        <input class="search-txt" type="text" name="" placeholder="Type to search">
                        <a class="search-btn" href="#">
                            <i class="fas fa-search"></i>
                        </a>
                    </div>
                    <div><img src="${pageContext.request.contextPath}/images/English icon.png" width="25px;" /> <a class="abc" href="english">English</a>
                    </div>
             </div>
              <!--Main-->
              <div id="main">
                    <div id="bigfb">
                            <div> <a class="resetFormat football" href="footballnews">Terms and Conditions</a> </div>
                    </div>
                    <div class="whitespace">
                            <p><strong>Last updated:&nbsp; 5th January 2019</strong></p>
                        </br>
                        <p><strong>Welcome to Minutes.com</strong></p>
                    </br>
                        
                    </div>
              </div>
             <!--footers-->
		<%@ include file="clientFooter.jsp"%>

        </section>
    </body>
</htmk>