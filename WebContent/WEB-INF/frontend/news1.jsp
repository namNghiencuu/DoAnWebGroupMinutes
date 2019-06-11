<!DOCTYPE html>
<html>

<head>
  <title> Football News, Live Scores, Results & Transfer | Minutes.com </title>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/PageLogo/logo.png">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheet/news1.css" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link rel="stylesheet" href="https://bit.ly/2Jc8yDJ">
  <link rel="stylesheet" href="https://bit.ly/2IptVj3">
  <meta charset="utf-8" />
</head>

<body>
<%@ include file="clientHeader.jsp"%>
  <section class="body1">
    <div id="navbar">
      <div class="logo">
        <a><img src="${pageContext.request.contextPath}/images/PageLogo/MinutesIcon.png" width="inherit;" /></a>
      </div>
      <div><a href="./homepage.html">News</a>
      </div>
      <div><a href="Live Scores">Live Scores</a></div>
      <div><a href="Leagues&Cups">Leagues & Cups</a></div>
      <div><a href="Teams">Teams</a></div>
      <div class="search-box">
        <input class="search-txt" type="text" name="" placeholder="Type to search">
        <a class="search-btn" href="#">
          <i class="fas fa-search"></i>
        </a>
      </div>
      <div><img src=".${pageContext.request.contextPath}/images/English icon.png" width="25px;" /> <a class="abc"
          href="english">&emsp;English</a>
      </div>
    </div>
    <!--pageContent-->
    <div id="pageBody">
      <div class="content">
        <h2>Manchester United got massive win over Manchester City</h2>
        <div class="content-Manchester">
          <p class="img">
            <img src="${pageContext.request.contextPath}/images/pictures/manchester.png">
          </p>
          <p>
            Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical
            Latin literature from 45 BC,
            making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
            looked up one of the more
            obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in
            classical literature, discovered
            the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
            Malorum" (The Extremes of Good
            and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during
            the Renaissance. The first
            line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
          </p>
        </div>
        <h5>Recommended</h5>
        <dl class="recommended">
          <dt>17/03/2019</dt>
          <dd><a href="!">Lorem Isdfdsfwl fwew swodif wfwedfsd wfiode</a></dd>
          <dt>17/03/2019</dt>
          <dd><a href="!">Lorem Isdfdsfwl fwew swodif wfwedfsd wfiode</a></dd>
          <dt>17/03/2019</dt>
          <dd><a href="!">Lorem Isdfdsfwl fwew swodif wfwedfsd wfiode</a></dd>
        </dl>

      </div>
      <div class="sidebar">
        <h4>Trending News</h4>
        <ol>
          <li><a href="#">Shocking result at turin last night</a></li>
          <li><a href="#">Cras justo odio</a></li>
          <li><a href="#">Cras justo odio</a></li>
        </ol>
        <a href="#">
          <img src="${pageContext.request.contextPath}/images/pictures/bannera.png">
        </a>
      </div>
    </div>
    <!--Footer-->
		<%@ include file="clientFooter.jsp"%>

  </section>
</body>

</html>