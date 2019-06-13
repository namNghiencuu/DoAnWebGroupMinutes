<!DOCTYPE html>
<html>
    <head>
        <title>Talented young stars in Bundesliga | Minutes.com</title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/PageLogo/logo.png">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheet/test1.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <meta charset="utf-8" />
    </head>
    <body>
        <!--Header-->
        <%@ include file="clientHeader.jsp"%>
        <section class="body1">
        <div id="navbar">
            <div class="logo">
              <a><img src="${pageContext.request.contextPath}/images/PageLogo/MinutesIcon.png" width="inherit;" /></a>
            </div>
            <div><a href="./homepage.html">News</a></div>
            <div><a href="./transfer.html">Live Scores</a></div>
            <div><a href="Leagues&Cups">Leagues & Cups</a></div>
            <div><a href="./test1.html">Teams</a></div>
            <div><img src="${pageContext.request.contextPath}/images/English icon.png" width="25px;" /> <a class="abc" href="english">English</a></div>
        </div>
        <!---main-->
        <div id="main">
          <div id="bigfb">
            <div> <a class="resetFormat football" href="footballnews">Premeir League</a> </div>
          </div>
          <div class="whitespace">
              <div class="card middle grid1">
                  <div class="front">
                      <img src="${pageContext.request.contextPath}/images/FCLogo/mulogo.png" alt=""/>
                  </div>
                  <div class="back">
                      <div class="back-content middle">
                          <h2>Visit Manchester United on : </h2>
                          <div class="sm">
                              <a href="https://www.manutd.com/"><i class="fab fa-chrome"></i></a>
                              <a href="#"><i class="fab fa-facebook-f"></i></a>
                              <a href="#"><i class="fab fa-twitter"></i></a>
                              <a href="#"><i class="fab fa-instagram"></i></a>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card middle grid2">
                  <div class="front">
                      <img src="${pageContext.request.contextPath}/images/FCLogo/chelsealogo.png" alt=""/>
                  </div>
                  <div class="back">
                      <div class="back-content middle">
                          <h2>Visit Chelsea on : </h2>
                          <div class="sm1">
                              <a href="https://www.chelseafc.com/en"><i class="fab fa-chrome"></i></a>
                              <a href="#"><i class="fab fa-facebook-f"></i></a>
                              <a href="#"><i class="fab fa-twitter"></i></a>
                              <a href="#"><i class="fab fa-instagram"></i></a>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card middle grid3">
                  <div class="front">
                      <img src="${pageContext.request.contextPath}/images/FCLogo/arsenallogo.png" alt=""/>
                  </div>
                  <div class="back">
                      <div class="back-content middle">
                          <h2>Visit Arsenal on : </h2>
                          <div class="sm">
                              <a href="https://www.arsenal.com/"><i class="fab fa-chrome"></i></a>
                              <a href="#"><i class="fab fa-facebook-f"></i></a>
                              <a href="#"><i class="fab fa-twitter"></i></a>
                              <a href="#"><i class="fab fa-instagram"></i></a>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card middle grid4">
                  <div class="front">
                      <img src="${pageContext.request.contextPath}/images/FCLogo/liverpoollogo.png" alt=""/>
                  </div>
                  <div class="back">
                      <div class="back-content middle">
                          <h2>Visit Liverpool on : </h2>
                          <div class="sm">
                              <a href="https://www.liverpoolfc.com/welcome-to-liverpool-fc"><i class="fab fa-chrome"></i></a>
                              <a href="#"><i class="fab fa-facebook-f"></i></a>
                              <a href="#"><i class="fab fa-twitter"></i></a>
                              <a href="#"><i class="fab fa-instagram"></i></a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
        <!--footer-->
		<%@ include file="clientFooter.jsp"%>

      </section>
    </body>
</html>